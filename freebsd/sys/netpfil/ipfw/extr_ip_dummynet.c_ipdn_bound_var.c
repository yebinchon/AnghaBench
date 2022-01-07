
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,char const*,int,int) ;

int
ipdn_bound_var(int *v, int dflt, int lo, int hi, const char *msg)
{
 int oldv = *v;
 const char *op = ((void*)0);
 if (dflt < lo)
  dflt = lo;
 if (dflt > hi)
  dflt = hi;
 if (oldv < lo) {
  *v = dflt;
  op = "Bump";
 } else if (oldv > hi) {
  *v = hi;
  op = "Clamp";
 } else
  return *v;
 if (op && msg)
  printf("%s %s to %d (was %d)\n", op, msg, *v, oldv);
 return *v;
}
