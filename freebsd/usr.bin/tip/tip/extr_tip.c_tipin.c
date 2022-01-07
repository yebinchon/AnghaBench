
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int EOL ;
 int ESCAPE ;
 int FD ;
 int FORCE ;
 int HALFDUPLEX ;
 int RAISE ;
 int RAISECHAR ;
 int SCRIPT ;
 int STRIP_PAR ;
 int any (int,int ) ;
 scalar_t__ boolean (int ) ;
 int character (int ) ;
 int cumode ;
 int escape () ;
 int getchar () ;
 scalar_t__ islower (int) ;
 int noesc ;
 int parwrite (int ,char*,int) ;
 int printf (char*,...) ;
 int setboolean (int ,int) ;
 int setscript () ;
 int sleep (int) ;
 int toupper (int) ;
 int value (int ) ;

__attribute__((used)) static void
tipin(void)
{
 int bol = 1;
 int gch;
 char ch;
 if (boolean(value(SCRIPT))) {
  sleep(1);
  setscript();
 }

 while (1) {
  gch = getchar();
  if (gch == EOF)
   return;
  gch = gch & STRIP_PAR;
  if ((gch == character(value(ESCAPE))) && bol) {
   if (!noesc) {
    gch = escape();
    if (gch == EOF)
     return;
    if (gch == 0)
     continue;
   }
  } else if (!cumode && gch == character(value(RAISECHAR))) {
   setboolean(value(RAISE), !boolean(value(RAISE)));
   continue;
  } else if (gch == '\r') {
   bol = 1;
   ch = gch;
   parwrite(FD, &ch, 1);
   if (boolean(value(HALFDUPLEX)))
    printf("\r\n");
   continue;
  } else if (!cumode && gch == character(value(FORCE)))
   gch = getchar();
   if (gch == EOF)
    return;
   gch = gch & STRIP_PAR;
  bol = any(gch, value(EOL));
  if (boolean(value(RAISE)) && islower(gch))
   gch = toupper(gch);
  ch = gch;
  parwrite(FD, &ch, 1);
  if (boolean(value(HALFDUPLEX)))
   printf("%c", ch);
 }
}
