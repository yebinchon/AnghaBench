
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct lcp {scalar_t__ his_protocomp; } ;



int
proto_WrapperOctets(struct lcp *lcp, u_short proto)
{
  return (lcp->his_protocomp && !(proto & 0xff00)) ? 1 : 2;
}
