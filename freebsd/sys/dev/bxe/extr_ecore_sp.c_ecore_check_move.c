
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ecore_classification_ramrod_data {int dummy; } ecore_classification_ramrod_data ;
struct ecore_vlan_mac_registry_elem {int dummy; } ;
struct ecore_vlan_mac_obj {int (* check_add ) (struct bxe_softc*,struct ecore_vlan_mac_obj*,union ecore_classification_ramrod_data*) ;struct ecore_vlan_mac_registry_elem* (* check_del ) (struct bxe_softc*,struct ecore_vlan_mac_obj*,union ecore_classification_ramrod_data*) ;} ;
struct bxe_softc {int dummy; } ;


 int FALSE ;
 int TRUE ;
 struct ecore_vlan_mac_registry_elem* stub1 (struct bxe_softc*,struct ecore_vlan_mac_obj*,union ecore_classification_ramrod_data*) ;
 int stub2 (struct bxe_softc*,struct ecore_vlan_mac_obj*,union ecore_classification_ramrod_data*) ;

__attribute__((used)) static bool ecore_check_move(struct bxe_softc *sc,
        struct ecore_vlan_mac_obj *src_o,
        struct ecore_vlan_mac_obj *dst_o,
        union ecore_classification_ramrod_data *data)
{
 struct ecore_vlan_mac_registry_elem *pos;
 int rc;




 pos = src_o->check_del(sc, src_o, data);


 rc = dst_o->check_add(sc, dst_o, data);




 if (rc || !pos)
  return FALSE;

 return TRUE;
}
