
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int if_flags; } ;
struct TYPE_2__ {int flags; } ;


 int IFF_LOOPBACK ;
 int IFF_MULTICAST ;
 int ND6_IFF_IFDISABLED ;
 int ND6_IFF_NO_DAD ;
 TYPE_1__* ND_IFINFO (struct ifnet*) ;

int
in6if_do_dad(struct ifnet *ifp)
{

 if ((ifp->if_flags & IFF_LOOPBACK) != 0)
  return (0);
 if ((ifp->if_flags & IFF_MULTICAST) == 0)
  return (0);
 if ((ND_IFINFO(ifp)->flags &
     (ND6_IFF_IFDISABLED | ND6_IFF_NO_DAD)) != 0)
  return (0);
 return (1);
}
