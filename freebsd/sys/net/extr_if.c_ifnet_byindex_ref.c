
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct ifnet {int if_flags; } ;


 int IFF_DYING ;
 int NET_EPOCH_ASSERT () ;
 int if_ref (struct ifnet*) ;
 struct ifnet* ifnet_byindex (int ) ;

struct ifnet *
ifnet_byindex_ref(u_short idx)
{
 struct ifnet *ifp;

 NET_EPOCH_ASSERT();

 ifp = ifnet_byindex(idx);
 if (ifp == ((void*)0) || (ifp->if_flags & IFF_DYING))
  return (((void*)0));
 if_ref(ifp);
 return (ifp);
}
