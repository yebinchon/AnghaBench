
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ONEOSEPONLY ;
 int RIGHTADJUST ;
 int* colwidths ;
 int flags ;
 char osep ;
 int putchar (char) ;

__attribute__((used)) static void
prints(char *s, int col)
{
 int n;
 char *p = s;

 while (*p)
  p++;
 n = (flags & ONEOSEPONLY ? 1 : colwidths[col] - (p - s));
 if (flags & RIGHTADJUST)
  while (n-- > 0)
   putchar(osep);
 for (p = s; *p; p++)
  putchar(*p);
 while (n-- > 0)
  putchar(osep);
}
