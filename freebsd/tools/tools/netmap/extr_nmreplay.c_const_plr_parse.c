
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _qs {int dummy; } ;
struct _cfg {double* d; } ;


 int ED (char*,double) ;
 double parse_gen (char*,int *,int*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
const_plr_parse(struct _qs *q, struct _cfg *dst, int ac, char *av[])
{
 double plr;
 int err;

 (void)q;
 if (strcmp(av[0], "plr") != 0 && ac > 1)
  return 2;
 if (ac > 2)
  return 1;

 plr = parse_gen(av[ac-1], ((void*)0), &err);
 if (err || plr < 0 || plr > 1)
  return 1;
 dst->d[0] = plr * (1<<24);
 if (plr != 0 && dst->d[0] == 0)
  ED("WWW warning,  rounding %le down to 0", plr);
 return 0;
}
