
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRANSPOSE ;
 char** elem ;
 int flags ;
 int nelem ;
 int ocols ;
 int orows ;
 int prints (char*,int) ;
 int putchar (char) ;

__attribute__((used)) static void
putfile(void)
{
 char **ep;
 int i, j, k;

 ep = elem;
 if (flags & TRANSPOSE)
  for (i = 0; i < orows; i++) {
   for (j = i; j < nelem; j += orows)
    prints(ep[j], (j - i) / orows);
   putchar('\n');
  }
 else
  for (i = k = 0; i < orows; i++) {
   for (j = 0; j < ocols; j++, k++)
    if (k < nelem)
     prints(ep[k], j);
   putchar('\n');
  }
}
