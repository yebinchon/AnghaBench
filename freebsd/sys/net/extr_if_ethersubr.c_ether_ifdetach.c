
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_dl {int dummy; } ;
struct ifnet {int * if_l2com; TYPE_1__* if_addr; } ;
struct TYPE_2__ {scalar_t__ ifa_addr; } ;


 int KASSERT (int ,char*) ;
 int LLADDR (struct sockaddr_dl*) ;
 int bpfdetach (struct ifnet*) ;
 int if_detach (struct ifnet*) ;
 int ng_ether_detach_p (struct ifnet*) ;
 int stub1 (struct ifnet*) ;
 int uuid_ether_del (int ) ;

void
ether_ifdetach(struct ifnet *ifp)
{
 struct sockaddr_dl *sdl;

 sdl = (struct sockaddr_dl *)(ifp->if_addr->ifa_addr);
 uuid_ether_del(LLADDR(sdl));

 if (ifp->if_l2com != ((void*)0)) {
  KASSERT(ng_ether_detach_p != ((void*)0),
      ("ng_ether_detach_p is NULL"));
  (*ng_ether_detach_p)(ifp);
 }

 bpfdetach(ifp);
 if_detach(ifp);
}
