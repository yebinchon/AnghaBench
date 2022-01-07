
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in6_ifaddr {int ia_ifa; } ;
struct ifnet {int if_type; int if_flags; scalar_t__ if_mtu; int ** if_afdata; } ;
struct epoch_tracker {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 size_t AF_INET6 ;
 int IFF_LOOPBACK ;
 int IFF_MULTICAST ;

 int LOG_INFO ;
 int ND6_IFF_AUTO_LINKLOCAL ;
 int ND6_IFF_IFDISABLED ;
 int ND6_IFF_NO_DAD ;
 TYPE_1__* ND_IFINFO (struct ifnet*) ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 scalar_t__ V_in6_maxmtu ;
 int if_name (struct ifnet*) ;
 int ifa_free (int *) ;
 int in6_ifattach_linklocal (struct ifnet*,struct ifnet*) ;
 int in6_ifattach_loopback (struct ifnet*) ;
 int in6addr_loopback ;
 struct in6_ifaddr* in6ifa_ifpforlinklocal (struct ifnet*,int ) ;
 struct in6_ifaddr* in6ifa_ifwithaddr (int *,int ) ;
 int nd6log (int ) ;

void
in6_ifattach(struct ifnet *ifp, struct ifnet *altifp)
{
 struct in6_ifaddr *ia;

 if (ifp->if_afdata[AF_INET6] == ((void*)0))
  return;



 switch (ifp->if_type) {
 case 128:






  ND_IFINFO(ifp)->flags &= ~ND6_IFF_AUTO_LINKLOCAL;
  ND_IFINFO(ifp)->flags |= ND6_IFF_NO_DAD;
  break;
 default:
  break;
 }




 if ((ifp->if_flags & IFF_MULTICAST) == 0) {
  nd6log((LOG_INFO, "in6_ifattach: "
      "%s is not multicast capable, IPv6 not enabled\n",
      if_name(ifp)));
  return;
 }




 if ((ifp->if_flags & IFF_LOOPBACK) != 0) {



  ia = in6ifa_ifwithaddr(&in6addr_loopback, 0);
  if (ia == ((void*)0))
   in6_ifattach_loopback(ifp);
  else
   ifa_free(&ia->ia_ifa);
 }




 if (!(ND_IFINFO(ifp)->flags & ND6_IFF_IFDISABLED) &&
     ND_IFINFO(ifp)->flags & ND6_IFF_AUTO_LINKLOCAL) {
  struct epoch_tracker et;

  NET_EPOCH_ENTER(et);
  ia = in6ifa_ifpforlinklocal(ifp, 0);
  NET_EPOCH_EXIT(et);
  if (ia == ((void*)0))
   in6_ifattach_linklocal(ifp, altifp);
  else
   ifa_free(&ia->ia_ifa);
 }


 if (V_in6_maxmtu < ifp->if_mtu)
  V_in6_maxmtu = ifp->if_mtu;
}
