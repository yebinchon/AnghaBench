
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
struct lcp {scalar_t__ his_acfcomp; } ;


 scalar_t__ PROTO_LCP ;

int
acf_WrapperOctets(struct lcp *lcp, u_short proto)
{
  return (proto == PROTO_LCP || lcp->his_acfcomp == 0) ? 2 : 0;
}
