
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_vlan_mac_obj {scalar_t__ head_exe_request; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_MSG (struct bxe_softc*,char*) ;
 int __ecore_vlan_mac_h_exec_pending (struct bxe_softc*,struct ecore_vlan_mac_obj*) ;

__attribute__((used)) static void __ecore_vlan_mac_h_write_unlock(struct bxe_softc *sc,
         struct ecore_vlan_mac_obj *o)
{



 while(o->head_exe_request) {
  ECORE_MSG(sc, "vlan_mac_lock - writer release encountered a pending request\n");
  __ecore_vlan_mac_h_exec_pending(sc, o);
 }
}
