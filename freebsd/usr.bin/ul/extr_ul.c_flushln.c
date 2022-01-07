
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_mode; char c_char; int c_width; } ;


 int CURS_RIGHT ;
 int NORMAL ;
 int PRINT (int ) ;
 int fflush (int ) ;
 int iattr () ;
 scalar_t__ iflag ;
 int initbuf () ;
 int maxcol ;
 scalar_t__ must_overstrike ;
 TYPE_1__* obuf ;
 int outc (char,int) ;
 int overstrike () ;
 int putwchar (char) ;
 int setnewmode (int) ;
 int stdout ;
 scalar_t__ upln ;

__attribute__((used)) static void
flushln(void)
{
 int lastmode;
 int i;
 int hadmodes = 0;

 lastmode = NORMAL;
 for (i = 0; i < maxcol; i++) {
  if (obuf[i].c_mode != lastmode) {
   hadmodes++;
   setnewmode(obuf[i].c_mode);
   lastmode = obuf[i].c_mode;
  }
  if (obuf[i].c_char == '\0') {
   if (upln)
    PRINT(CURS_RIGHT);
   else
    outc(' ', 1);
  } else
   outc(obuf[i].c_char, obuf[i].c_width);
  if (obuf[i].c_width > 1)
   i += obuf[i].c_width - 1;
 }
 if (lastmode != NORMAL) {
  setnewmode(0);
 }
 if (must_overstrike && hadmodes)
  overstrike();
 putwchar('\n');
 if (iflag && hadmodes)
  iattr();
 (void)fflush(stdout);
 if (upln)
  upln--;
 initbuf();
}
