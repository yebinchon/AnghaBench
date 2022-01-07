
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct _qs {int dummy; } ;
struct _cfg {int arg_len; int* arg; double* d; } ;
typedef int _P64 ;


 int MAX_PKT ;
 int RD (int,char*,int,double,int ) ;
 int* calloc (int,int) ;
 double parse_gen (char*,int *,int*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
const_ber_parse(struct _qs *q, struct _cfg *dst, int ac, char *av[])
{
 double ber, ber8, cur;
 int i, err;
 uint32_t *plr;
 const uint32_t mask = (1<<24) - 1;

 (void)q;
 if (strcmp(av[0], "ber") != 0)
  return 2;
 if (ac != 2)
  return 1;
 ber = parse_gen(av[ac-1], ((void*)0), &err);
 if (err || ber < 0 || ber > 1)
  return 1;
 dst->arg_len = MAX_PKT * sizeof(uint32_t);
 plr = calloc(1, dst->arg_len);
 if (plr == ((void*)0))
  return 1;
 dst->arg = plr;
 ber8 = 1 - ber;
 ber8 *= ber8;
 ber8 *= ber8;
 ber8 *= ber8;
 cur = 1;
 for (i=0; i < MAX_PKT; i++, cur *= ber8) {
  plr[i] = (mask + 1)*(1 - cur);
  if (plr[i] > mask)
   plr[i] = mask;




 }
 dst->d[0] = ber * (mask + 1);
 return 0;
}
