
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WR (char const*,int) ;
 int strlen (char const*) ;

void
printfn(const char *fn, int print_nl)
{

 if (print_nl)
  WR("\n", 1);
 WR("==> ", 4);
 WR(fn, strlen(fn));
 WR(" <==\n", 5);
}
