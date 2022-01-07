
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getchar () ;
 int putchar (int ) ;
 int ungetchar (int) ;

int
match(const char *ocp)
{
 const char *cp;
 int c;

 for (cp = ocp + 1; *cp; cp++) {
  c = getchar();
  if (c != *cp) {
   while (ocp < cp)
    putchar(*ocp++);
   ungetchar(c);
   return (0);
  }
 }
 return (1);
}
