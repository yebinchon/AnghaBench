
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct ifnet {struct ifaddr* if_addr; } ;
struct ifaddr {int dummy; } ;


 int NET_EPOCH_ASSERT () ;
 int ifa_ref (struct ifaddr*) ;
 struct ifnet* ifnet_byindex (int ) ;

struct ifaddr *
ifaddr_byindex(u_short idx)
{
 struct ifnet *ifp;
 struct ifaddr *ifa = ((void*)0);

 NET_EPOCH_ASSERT();

 ifp = ifnet_byindex(idx);
 if (ifp != ((void*)0) && (ifa = ifp->if_addr) != ((void*)0))
  ifa_ref(ifa);
 return (ifa);
}
