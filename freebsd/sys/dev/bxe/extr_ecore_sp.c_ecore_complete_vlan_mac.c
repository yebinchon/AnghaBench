
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ error; } ;
union event_ring_elem {TYPE_1__ message; } ;
struct TYPE_5__ {int lock; } ;
struct ecore_raw_obj {int (* clear_pending ) (struct ecore_raw_obj*) ;} ;
struct ecore_vlan_mac_obj {TYPE_2__ exe_queue; struct ecore_raw_obj raw; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_INVAL ;
 int ECORE_PENDING ;
 int ECORE_SPIN_LOCK_BH (int *) ;
 int ECORE_SPIN_UNLOCK_BH (int *) ;
 int ECORE_SUCCESS ;
 scalar_t__ ECORE_TEST_BIT (int ,unsigned long*) ;
 int RAMROD_CONT ;
 int __ecore_exe_queue_reset_pending (struct bxe_softc*,TYPE_2__*) ;
 int __ecore_vlan_mac_execute_step (struct bxe_softc*,struct ecore_vlan_mac_obj*,unsigned long*) ;
 int ecore_exe_queue_empty (TYPE_2__*) ;
 int stub1 (struct ecore_raw_obj*) ;

__attribute__((used)) static int ecore_complete_vlan_mac(struct bxe_softc *sc,
       struct ecore_vlan_mac_obj *o,
       union event_ring_elem *cqe,
       unsigned long *ramrod_flags)
{
 struct ecore_raw_obj *r = &o->raw;
 int rc;




 ECORE_SPIN_LOCK_BH(&o->exe_queue.lock);


 __ecore_exe_queue_reset_pending(sc, &o->exe_queue);


 r->clear_pending(r);

 ECORE_SPIN_UNLOCK_BH(&o->exe_queue.lock);


 if (cqe->message.error)
  return ECORE_INVAL;


 if (ECORE_TEST_BIT(RAMROD_CONT, ramrod_flags)) {
  rc = __ecore_vlan_mac_execute_step(sc, o, ramrod_flags);
  if (rc < 0)
   return rc;
 }


 if (!ecore_exe_queue_empty(&o->exe_queue))
  return ECORE_PENDING;

 return ECORE_SUCCESS;
}
