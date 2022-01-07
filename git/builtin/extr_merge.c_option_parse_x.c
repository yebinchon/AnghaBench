
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int ALLOC_GROW (int *,scalar_t__,int ) ;
 int * xopts ;
 int xopts_alloc ;
 scalar_t__ xopts_nr ;
 int xstrdup (char const*) ;

__attribute__((used)) static int option_parse_x(const struct option *opt,
     const char *arg, int unset)
{
 if (unset)
  return 0;

 ALLOC_GROW(xopts, xopts_nr + 1, xopts_alloc);
 xopts[xopts_nr++] = xstrdup(arg);
 return 0;
}
