
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_vlan_mac_obj {scalar_t__ head_exe_request; int head_reader; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_ERR (char*) ;
 int ECORE_MSG (struct bxe_softc*,char*,...) ;
 int __ecore_vlan_mac_h_write_unlock (struct bxe_softc*,struct ecore_vlan_mac_obj*) ;
 int ecore_panic () ;

__attribute__((used)) static void __ecore_vlan_mac_h_read_unlock(struct bxe_softc *sc,
       struct ecore_vlan_mac_obj *o)
{
 if (!o->head_reader) {
  ECORE_ERR("Need to release vlan mac reader lock, but lock isn't taken\n");



 } else {
  o->head_reader--;
  ECORE_MSG(sc, "vlan_mac_lock - decreased readers to %d\n",
     o->head_reader);
 }




 if (!o->head_reader && o->head_exe_request) {
  ECORE_MSG(sc, "vlan_mac_lock - reader release encountered a pending request\n");


  __ecore_vlan_mac_h_write_unlock(sc, o);
 }
}
