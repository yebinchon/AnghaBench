
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_capabilities; } ;


 int IFCAP_NETMAP ;

void
nm_os_onattach(struct ifnet *ifp)
{
 ifp->if_capabilities |= IFCAP_NETMAP;
}
