
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct _qs {int dummy; } ;
struct _cfg {int arg_len; int * arg; } ;


 int ND (int,char*,int,double) ;
 int PTS_D_EXP ;
 int U_PARSE_ERR ;
 int * calloc (int,int) ;
 int log2 (double) ;
 int parse_time (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
exp_delay_parse(struct _qs *q, struct _cfg *dst, int ac, char *av[])
{

 uint64_t i, d_av, d_min, *t;

        (void)q;
        if (strcmp(av[0], "exp") != 0)
  return 2;
        if (ac != 3)
                return 1;
        d_av = parse_time(av[1]);
        d_min = parse_time(av[2]);
        if (d_av == U_PARSE_ERR || d_min == U_PARSE_ERR || d_av < d_min)
                return 1;
 d_av -= d_min;
 dst->arg_len = 512 * sizeof(uint64_t);
 dst->arg = calloc(1, dst->arg_len);
 if (dst->arg == ((void*)0))
  return 1;
 t = (uint64_t *)dst->arg;

 for (i = 0; i < 512; i++) {
  double d = -log2 ((double)(512 - i) / 512) * d_av + d_min;
  t[i] = (uint64_t)d;
  ND(5, "%ld: %le", i, d);
 }
        return 0;
}
