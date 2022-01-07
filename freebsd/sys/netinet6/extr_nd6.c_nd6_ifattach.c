
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_ifinfo {int initialized; int flags; int retrans; int basereachable; int reachable; int chlim; } ;
struct ifnet {scalar_t__ if_type; int if_flags; } ;


 int IFF_LOOPBACK ;
 scalar_t__ IFT_BRIDGE ;
 int IPV6_DEFHLIM ;
 int M_IP6NDP ;
 int M_WAITOK ;
 int M_ZERO ;
 int ND6_IFF_ACCEPT_RTADV ;
 int ND6_IFF_AUTO_LINKLOCAL ;
 int ND6_IFF_NO_RADR ;
 int ND6_IFF_PERFORMNUD ;
 int ND_COMPUTE_RTIME (int ) ;
 int REACHABLE_TIME ;
 int RETRANS_TIMER ;
 scalar_t__ V_ip6_accept_rtadv ;
 scalar_t__ V_ip6_auto_linklocal ;
 scalar_t__ V_ip6_no_radr ;
 struct nd_ifinfo* malloc (int,int ,int) ;
 int nd6_setmtu0 (struct ifnet*,struct nd_ifinfo*) ;

struct nd_ifinfo *
nd6_ifattach(struct ifnet *ifp)
{
 struct nd_ifinfo *nd;

 nd = malloc(sizeof(*nd), M_IP6NDP, M_WAITOK | M_ZERO);
 nd->initialized = 1;

 nd->chlim = IPV6_DEFHLIM;
 nd->basereachable = REACHABLE_TIME;
 nd->reachable = ND_COMPUTE_RTIME(nd->basereachable);
 nd->retrans = RETRANS_TIMER;

 nd->flags = ND6_IFF_PERFORMNUD;






 if ((V_ip6_auto_linklocal && ifp->if_type != IFT_BRIDGE) ||
     (ifp->if_flags & IFF_LOOPBACK))
  nd->flags |= ND6_IFF_AUTO_LINKLOCAL;







 if (V_ip6_accept_rtadv &&
     !(ifp->if_flags & IFF_LOOPBACK) &&
     (ifp->if_type != IFT_BRIDGE))
   nd->flags |= ND6_IFF_ACCEPT_RTADV;
 if (V_ip6_no_radr && !(ifp->if_flags & IFF_LOOPBACK))
  nd->flags |= ND6_IFF_NO_RADR;


 nd6_setmtu0(ifp, nd);

 return nd;
}
