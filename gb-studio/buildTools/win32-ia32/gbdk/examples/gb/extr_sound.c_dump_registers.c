
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ FIRST_X ;
 scalar_t__ FIRST_Y ;
 scalar_t__ TITLE_Y ;
 int UNSIGNED ;
 scalar_t__ VAL_X ;
 int cls () ;
 int gotoxy (scalar_t__,scalar_t__) ;
 int print (char*) ;
 int printn (int,int,int ) ;
 int putchar (char) ;
 scalar_t__ soundReg ;

void dump_registers()
{
  UBYTE reg;
  UBYTE i, j;

  cls();
  gotoxy(FIRST_X, TITLE_Y);
  print("Register Dump");

  for(i = 0, j = 0; i <= 0x16; i++, j++) {
    if(i == 0x05 || i == 0x0F)
      i++;
    if(j%2 == 0) {
      gotoxy(FIRST_X, FIRST_Y+j/2);
      print("0xFF");
    } else {
      gotoxy(FIRST_X+6, FIRST_Y+j/2);
      putchar('-');
    }
    printn(i+0x10, 16, UNSIGNED);
    if(j%2 == 0) {
      gotoxy(VAL_X, FIRST_Y+j/2);
    } else {
      gotoxy(VAL_X+2, FIRST_Y+j/2);
      putchar('-');
    }
    reg = ((UBYTE *)soundReg)[i];
    if(!(reg & 0xF0U)) putchar('0');
    printn(reg, 16, UNSIGNED);
  }
}
