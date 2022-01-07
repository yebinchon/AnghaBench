
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_vlan_mac_ramrod_params {unsigned long ramrod_flags; struct ecore_vlan_mac_obj* vlan_mac_obj; } ;
struct ecore_raw_obj {int (* wait_comp ) (struct bxe_softc*,struct ecore_raw_obj*) ;int (* clear_pending ) (struct ecore_raw_obj*) ;} ;
struct ecore_vlan_mac_obj {int exe_queue; struct ecore_raw_obj raw; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_MSG (struct bxe_softc*,char*) ;
 int ECORE_PENDING ;
 int ECORE_SUCCESS ;
 int ECORE_TEST_BIT (int ,unsigned long*) ;
 int RAMROD_COMP_WAIT ;
 int RAMROD_CONT ;
 int RAMROD_DRV_CLR_ONLY ;
 int RAMROD_EXEC ;
 int __ecore_vlan_mac_execute_step (struct bxe_softc*,struct ecore_vlan_mac_obj*,unsigned long*) ;
 int ecore_exe_queue_empty (int *) ;
 int ecore_exe_queue_length (int *) ;
 int ecore_vlan_mac_push_new_cmd (struct bxe_softc*,struct ecore_vlan_mac_ramrod_params*) ;
 int stub1 (struct ecore_raw_obj*) ;
 int stub2 (struct bxe_softc*,struct ecore_raw_obj*) ;

int ecore_config_vlan_mac(struct bxe_softc *sc,
      struct ecore_vlan_mac_ramrod_params *p)
{
 int rc = ECORE_SUCCESS;
 struct ecore_vlan_mac_obj *o = p->vlan_mac_obj;
 unsigned long *ramrod_flags = &p->ramrod_flags;
 bool cont = ECORE_TEST_BIT(RAMROD_CONT, ramrod_flags);
 struct ecore_raw_obj *raw = &o->raw;




 if (!cont) {
  rc = ecore_vlan_mac_push_new_cmd(sc, p);
  if (rc)
   return rc;
 }




 if (!ecore_exe_queue_empty(&o->exe_queue))
  rc = ECORE_PENDING;

 if (ECORE_TEST_BIT(RAMROD_DRV_CLR_ONLY, ramrod_flags)) {
  ECORE_MSG(sc, "RAMROD_DRV_CLR_ONLY requested: clearing a pending bit.\n");
  raw->clear_pending(raw);
 }


 if (cont || ECORE_TEST_BIT(RAMROD_EXEC, ramrod_flags) ||
     ECORE_TEST_BIT(RAMROD_COMP_WAIT, ramrod_flags)) {
  rc = __ecore_vlan_mac_execute_step(sc, p->vlan_mac_obj,
         &p->ramrod_flags);
  if (rc < 0)
   return rc;
 }




 if (ECORE_TEST_BIT(RAMROD_COMP_WAIT, &p->ramrod_flags)) {



  int max_iterations = ecore_exe_queue_length(&o->exe_queue) + 1;

  while (!ecore_exe_queue_empty(&o->exe_queue) &&
         max_iterations--) {


   rc = raw->wait_comp(sc, raw);
   if (rc)
    return rc;


   rc = __ecore_vlan_mac_execute_step(sc,
          p->vlan_mac_obj,
          &p->ramrod_flags);
   if (rc < 0)
    return rc;
  }

  return ECORE_SUCCESS;
 }

 return rc;
}
