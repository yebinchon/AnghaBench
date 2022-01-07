
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_vlan_mac_obj {unsigned long saved_ramrod_flags; int exe_queue; int head_exe_request; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_ERR (char*,int) ;
 int ECORE_MSG (struct bxe_softc*,char*,unsigned long) ;
 int ECORE_PENDING ;
 int ECORE_SUCCESS ;
 int FALSE ;
 int ecore_exe_queue_step (struct bxe_softc*,int *,unsigned long*) ;
 int ecore_panic () ;

__attribute__((used)) static void __ecore_vlan_mac_h_exec_pending(struct bxe_softc *sc,
         struct ecore_vlan_mac_obj *o)
{
 int rc;
 unsigned long ramrod_flags = o->saved_ramrod_flags;

 ECORE_MSG(sc, "vlan_mac_lock execute pending command with ramrod flags %lu\n",
    ramrod_flags);
 o->head_exe_request = FALSE;
 o->saved_ramrod_flags = 0;
 rc = ecore_exe_queue_step(sc, &o->exe_queue, &ramrod_flags);
 if ((rc != ECORE_SUCCESS) && (rc != ECORE_PENDING)) {
  ECORE_ERR("execution of pending commands failed with rc %d\n",
     rc);



 }
}
