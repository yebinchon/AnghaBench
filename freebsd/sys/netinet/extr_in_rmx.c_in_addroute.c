
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_4__ sin_addr; } ;
struct rtentry {int rt_flags; scalar_t__ rt_mtu; TYPE_5__* rt_ifp; TYPE_2__* rt_ifa; } ;
struct radix_node {int dummy; } ;
struct radix_head {int dummy; } ;
struct epoch_tracker {int dummy; } ;
struct TYPE_10__ {scalar_t__ if_mtu; } ;
struct TYPE_6__ {scalar_t__ s_addr; } ;
struct TYPE_8__ {TYPE_1__ sin_addr; } ;
struct TYPE_7__ {int ifa_addr; } ;


 scalar_t__ IN_MULTICAST (int ) ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 int RTF_BROADCAST ;
 int RTF_HOST ;
 int RTF_LOCAL ;
 int RTF_MULTICAST ;
 int in_broadcast (TYPE_4__,TYPE_5__*) ;
 int ntohl (scalar_t__) ;
 struct radix_node* rn_addroute (void*,void*,struct radix_head*,struct radix_node*) ;
 scalar_t__ rt_key (struct rtentry*) ;
 TYPE_3__* satosin (int ) ;

__attribute__((used)) static struct radix_node *
in_addroute(void *v_arg, void *n_arg, struct radix_head *head,
    struct radix_node *treenodes)
{
 struct rtentry *rt = (struct rtentry *)treenodes;
 struct sockaddr_in *sin = (struct sockaddr_in *)rt_key(rt);
 if (rt->rt_flags & RTF_HOST) {
  struct epoch_tracker et;
  bool bcast;

  NET_EPOCH_ENTER(et);
  bcast = in_broadcast(sin->sin_addr, rt->rt_ifp);
  NET_EPOCH_EXIT(et);
  if (bcast)
   rt->rt_flags |= RTF_BROADCAST;
  else if (satosin(rt->rt_ifa->ifa_addr)->sin_addr.s_addr ==
      sin->sin_addr.s_addr)
   rt->rt_flags |= RTF_LOCAL;
 }
 if (IN_MULTICAST(ntohl(sin->sin_addr.s_addr)))
  rt->rt_flags |= RTF_MULTICAST;

 if (rt->rt_ifp != ((void*)0)) {






  if (rt->rt_mtu == 0) {
   rt->rt_mtu = rt->rt_ifp->if_mtu;
  } else if (rt->rt_mtu > rt->rt_ifp->if_mtu)
   rt->rt_mtu = rt->rt_ifp->if_mtu;
 }

 return (rn_addroute(v_arg, n_arg, head, treenodes));
}
