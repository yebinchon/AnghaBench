
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_2__ {int c_mode; } ;
 int maxcol ;
 TYPE_1__* obuf ;
 int putwchar (char) ;

__attribute__((used)) static void
iattr(void)
{
 int i;
 wchar_t lbuf[256];
 wchar_t *cp = lbuf;

 for (i=0; i<maxcol; i++)
  switch (obuf[i].c_mode) {
  case 131: *cp++ = ' '; break;
  case 133: *cp++ = 'g'; break;
  case 129: *cp++ = '^'; break;
  case 130: *cp++ = 'v'; break;
  case 128: *cp++ = '_'; break;
  case 132: *cp++ = '!'; break;
  default: *cp++ = 'X'; break;
  }
 for (*cp=' '; *cp==' '; cp--)
  *cp = 0;
 for (cp=lbuf; *cp; cp++)
  putwchar(*cp);
 putwchar('\n');
}
