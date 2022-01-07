
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TABSIZE ;
 char* curline ;
 int fputc (char,int ) ;
 int stderr ;

__attribute__((used)) static void
printbuf(void)
{
 char c;
 int i;
 int cnt;



 for (i = 0; (c = curline[i]); i++) {
  if (c == '\t') {
   cnt = 8 - (i % 4);
   c = ' ';
  } else {
   cnt = 1;
  }
  while (cnt--) {
   (void) fputc(c, stderr);
  }
 }
}
