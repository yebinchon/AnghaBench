
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_2__ {int c_mode; int c_width; int c_char; } ;





 int maxcol ;
 TYPE_1__* obuf ;
 int putwchar (char) ;

__attribute__((used)) static void
overstrike(void)
{
 int i;
 wchar_t lbuf[256];
 wchar_t *cp = lbuf;
 int hadbold=0;


 for (i=0; i<maxcol; i++)
  switch (obuf[i].c_mode) {
  case 129:
  default:
   *cp++ = ' ';
   break;
  case 128:
   *cp++ = '_';
   break;
  case 130:
   *cp++ = obuf[i].c_char;
   if (obuf[i].c_width > 1)
    i += obuf[i].c_width - 1;
   hadbold=1;
   break;
  }
 putwchar('\r');
 for (*cp=' '; *cp==' '; cp--)
  *cp = 0;
 for (cp=lbuf; *cp; cp++)
  putwchar(*cp);
 if (hadbold) {
  putwchar('\r');
  for (cp=lbuf; *cp; cp++)
   putwchar(*cp=='_' ? ' ' : *cp);
  putwchar('\r');
  for (cp=lbuf; *cp; cp++)
   putwchar(*cp=='_' ? ' ' : *cp);
 }
}
