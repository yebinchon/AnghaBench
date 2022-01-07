
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int copystr () ;
 int getchar () ;
 scalar_t__ match (char*) ;
 int printf (char*) ;
 int putchar (int) ;

void
process(void)
{
 int c;

 for (;;) {
  c = getchar();
  if (c == EOF)
   return;
  if (c != 'e') {
   putchar(c);
   continue;
  }
  if (match("error(")) {
   printf("error(");
   c = getchar();
   if (c != '"')
    putchar(c);
   else
    copystr();
  }
 }
}
