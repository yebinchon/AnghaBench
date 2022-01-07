
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long D_P_E ;
 int EXP_PREC ;
 int INT_MAX ;
 long MAXGRAD ;
 long V_cdg_exp_backoff_scale ;
 int* probexp ;
 int random () ;

__attribute__((used)) static inline int
prob_backoff(long qtrend)
{
 int backoff, idx, p;

 backoff = (qtrend > ((MAXGRAD * V_cdg_exp_backoff_scale) << D_P_E));

 if (!backoff) {
  if (V_cdg_exp_backoff_scale > 1)
   idx = (qtrend + V_cdg_exp_backoff_scale / 2) /
       V_cdg_exp_backoff_scale;
  else
   idx = qtrend;


  p = (INT_MAX / (1 << EXP_PREC)) * probexp[idx];
  backoff = (random() < p);
 }

 return (backoff);
}
