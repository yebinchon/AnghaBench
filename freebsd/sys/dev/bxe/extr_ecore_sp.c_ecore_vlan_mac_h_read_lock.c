
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
 int __ecore_vlan_mac_h_read_lock (struct bxe_softc*,struct ecore_vlan_mac_obj*) ;

int ecore_vlan_mac_h_read_lock(struct bxe_softc *sc,
          struct ecore_vlan_mac_obj *o)
{
 int rc;

 ECORE_SPIN_LOCK_BH(&o->exe_queue.lock);
 rc = __ecore_vlan_mac_h_read_lock(sc, o);
 ECORE_SPIN_UNLOCK_BH(&o->exe_queue.lock);

 return rc;
}
