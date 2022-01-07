
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct lqrdata {int dummy; } ;


 int ntohl (int ) ;

void
lqr_ChangeOrder(struct lqrdata *src, struct lqrdata *dst)
{
  u_int32_t *sp, *dp;
  unsigned n;

  sp = (u_int32_t *) src;
  dp = (u_int32_t *) dst;
  for (n = 0; n < sizeof(struct lqrdata) / sizeof(u_int32_t); n++, sp++, dp++)
    *dp = ntohl(*sp);
}
