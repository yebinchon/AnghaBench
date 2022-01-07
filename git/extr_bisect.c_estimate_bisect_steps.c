
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exp2i (int) ;
 int log2i (int) ;

int estimate_bisect_steps(int all)
{
 int n, x, e;

 if (all < 3)
  return 0;

 n = log2i(all);
 e = exp2i(n);
 x = all - e;

 return (e < 3 * x) ? n : n - 1;
}
