
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct ecore_vlan_mac_obj {TYPE_1__ exe_queue; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_SPIN_LOCK_BH (int *) ;
 int ECORE_SPIN_UNLOCK_BH (int *) ;
 int __ecore_vlan_mac_h_write_unlock (struct bxe_softc*,struct ecore_vlan_mac_obj*) ;

void ecore_vlan_mac_h_write_unlock(struct bxe_softc *sc,
       struct ecore_vlan_mac_obj *o)
{
 ECORE_SPIN_LOCK_BH(&o->exe_queue.lock);
 __ecore_vlan_mac_h_write_unlock(sc, o);
 ECORE_SPIN_UNLOCK_BH(&o->exe_queue.lock);
}
