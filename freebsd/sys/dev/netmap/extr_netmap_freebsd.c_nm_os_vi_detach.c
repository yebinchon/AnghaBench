
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 scalar_t__ IF_LLADDR (struct ifnet*) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int nm_vi_free_index (char) ;

void
nm_os_vi_detach(struct ifnet *ifp)
{
 nm_vi_free_index(((char *)IF_LLADDR(ifp))[5]);
 ether_ifdetach(ifp);
 if_free(ifp);
}
