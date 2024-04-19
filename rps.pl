#!/usr/bin/perl
use warnings;
use strict;

while (1) {
  #print options
  print "Enter (1) Rock, (2) Paper, (3) Scissors: ";
  my $usr = <STDIN>;
  chomp $usr;
  unless ($usr >= 1 && $usr <= 3) {
    print "Invalid Input\n";
    next;
  }
  
  #covert
  my @array = ("rock", "paper", "scissor");
  my $usrchoi = $array[$usr -1];
  #Ai choosing 
  my $ai = $array [int(rand @array)];

  print"$usrchoi vs $ai\n";
  
  if ( $usrchoi eq $ai ) {
    print "Draw\n";
  }elsif (
  ( $usrchoi eq 'rock' and $ai eq 'scissor') or 
  ( $usrchoi eq 'paper' and $ai eq 'rock') or
  ( $usrchoi eq 'scissor' and $ai eq 'paper')){
  
    print "Player Wins!\n";
  }else{
    print"AI Wins!\n";
  }

  print "Another Try?  Input (1) if yes: ";
  my $con = <STDIN>;
  chomp $con;
  last if $con ne '1';
}
