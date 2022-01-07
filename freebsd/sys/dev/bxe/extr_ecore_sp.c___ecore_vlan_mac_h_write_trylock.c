
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_vlan_mac_obj {scalar_t__ head_reader; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_BUSY ;
 int ECORE_MSG (struct bxe_softc*,char*) ;
 int ECORE_SUCCESS ;

__attribute__((used)) static int __ecore_vlan_mac_h_write_trylock(struct bxe_softc *sc,
         struct ecore_vlan_mac_obj *o)
{
 if (o->head_reader) {
  ECORE_MSG(sc, "vlan_mac_lock writer - There are readers; Busy\n");
  return ECORE_BUSY;
 }

 ECORE_MSG(sc, "vlan_mac_lock writer - Taken\n");
 return ECORE_SUCCESS;
}
