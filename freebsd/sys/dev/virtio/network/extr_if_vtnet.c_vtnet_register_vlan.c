
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ifnet {void* if_softc; } ;


 int vtnet_update_vlan_filter (void*,int,int ) ;

__attribute__((used)) static void
vtnet_register_vlan(void *arg, struct ifnet *ifp, uint16_t tag)
{

 if (ifp->if_softc != arg)
  return;

 vtnet_update_vlan_filter(arg, 1, tag);
}
