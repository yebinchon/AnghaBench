
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {scalar_t__ sa_len; } ;
struct rtentry {TYPE_2__* rt_gateway; TYPE_1__* rt_ifa; } ;
struct radix_node {int dummy; } ;
struct TYPE_4__ {scalar_t__ sa_family; scalar_t__ sa_len; } ;
struct TYPE_3__ {TYPE_2__* ifa_addr; } ;


 scalar_t__ AF_LINK ;
 int memcmp (TYPE_2__*,struct sockaddr*,scalar_t__) ;
 struct radix_node* rn_mpath_next (struct radix_node*) ;

struct rtentry *
rt_mpath_matchgate(struct rtentry *rt, struct sockaddr *gate)
{
 struct radix_node *rn;

 if (!gate || !rt->rt_gateway)
  return ((void*)0);


 rn = (struct radix_node *)rt;
 do {
  rt = (struct rtentry *)rn;






  if (rt->rt_gateway->sa_family == AF_LINK) {
   if (!memcmp(rt->rt_ifa->ifa_addr, gate, gate->sa_len))
    break;
  }






  if (rt->rt_gateway->sa_len == gate->sa_len &&
      !memcmp(rt->rt_gateway, gate, gate->sa_len))
   break;
 } while ((rn = rn_mpath_next(rn)) != ((void*)0));

 return (struct rtentry *)rn;
}
