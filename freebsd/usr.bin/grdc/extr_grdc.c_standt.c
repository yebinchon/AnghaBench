
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A_STANDOUT ;
 int COLOR_PAIR (int) ;
 int attroff (int ) ;
 int attron (int ) ;
 scalar_t__ hascolor ;

__attribute__((used)) static void
standt(int on)
{
 if (on) {
  if(hascolor) {
   attron(COLOR_PAIR(1));
  } else {
   attron(A_STANDOUT);
  }
 } else {
  if(hascolor) {
   attron(COLOR_PAIR(2));
  } else {
   attroff(A_STANDOUT);
  }
 }
}
