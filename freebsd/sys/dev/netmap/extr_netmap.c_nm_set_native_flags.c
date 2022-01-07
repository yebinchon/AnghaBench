
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_adapter {scalar_t__ active_fds; int na_flags; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;


 int NAF_NETMAP_ON ;
 int nm_os_onenter (struct ifnet*) ;
 int nm_update_hostrings_mode (struct netmap_adapter*) ;

void
nm_set_native_flags(struct netmap_adapter *na)
{
 struct ifnet *ifp = na->ifp;



 if (na->active_fds > 0) {
  return;
 }

 na->na_flags |= NAF_NETMAP_ON;
 nm_os_onenter(ifp);
 nm_update_hostrings_mode(na);
}
