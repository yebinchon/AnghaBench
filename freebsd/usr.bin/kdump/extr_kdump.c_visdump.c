
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIS_CSTYLE ;
 int printf (char*) ;
 int putchar (char) ;
 int strlen (char*) ;
 int vis (char*,char,int ,char) ;

void
visdump(char *dp, int datalen, int screenwidth)
{
 int col = 0;
 char *cp;
 int width;
 char visbuf[5];

 printf("       \"");
 col = 8;
 for (;datalen > 0; datalen--, dp++) {
   vis(visbuf, *dp, VIS_CSTYLE, *(dp+1));
  cp = visbuf;




  if (col == 0) {
   putchar('\t');
   col = 8;
  }
  switch(*cp) {
  case '\n':
   col = 0;
   putchar('\n');
   continue;
  case '\t':
   width = 8 - (col&07);
   break;
  default:
   width = strlen(cp);
  }
  if (col + width > (screenwidth-2)) {
   printf("\\\n\t");
   col = 8;
  }
  col += width;
  do {
   putchar(*cp++);
  } while (*cp);
 }
 if (col == 0)
  printf("       ");
 printf("\"\n");
}
