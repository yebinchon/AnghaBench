
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _qs {int dummy; } ;
struct _cfg {double* f; } ;


 int ED (char*,double) ;
 double parse_gen (char*,int *,int*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
real_bw_parse(struct _qs *q, struct _cfg *dst, int ac, char *av[])
{
 double scale;

 (void)q;
 if (strcmp(av[0], "real") != 0)
  return 2;
 if (ac > 2) {
  return 1;
 } else if (ac == 1) {
  scale = 1;
 } else {
  int err = 0;
  scale = parse_gen(av[ac-1], ((void*)0), &err);
  if (err || scale <= 0 || scale > 1000)
   return 1;
 }
 ED("real -> scale is %.6f", scale);
 dst->f[0] = scale;
 return 0;
}
