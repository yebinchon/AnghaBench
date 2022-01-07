
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 int nm_prinf (char*,char const*,char const*,scalar_t__,scalar_t__) ;

u_int
nm_bound_var(u_int *v, u_int dflt, u_int lo, u_int hi, const char *msg)
{
 u_int oldv = *v;
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
 }
 if (op && msg)
  nm_prinf("%s %s to %d (was %d)", op, msg, *v, oldv);
 return *v;
}
