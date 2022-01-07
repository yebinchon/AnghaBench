
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ecore_exe_queue_obj {scalar_t__ (* get ) (struct ecore_exe_queue_obj*,struct ecore_exeq_elem*) ;} ;
struct ecore_vlan_mac_obj {int (* check_add ) (struct bxe_softc*,struct ecore_vlan_mac_obj*,int *) ;scalar_t__ (* get_credit ) (struct ecore_vlan_mac_obj*) ;struct ecore_exe_queue_obj exe_queue; } ;
union ecore_qable_obj {struct ecore_vlan_mac_obj vlan_mac; } ;
struct TYPE_3__ {int vlan_mac_flags; int u; } ;
struct TYPE_4__ {TYPE_1__ vlan_mac; } ;
struct ecore_exeq_elem {TYPE_2__ cmd_data; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_DONT_CONSUME_CAM_CREDIT ;
 int ECORE_EXISTS ;
 int ECORE_INVAL ;
 int ECORE_MSG (struct bxe_softc*,char*) ;
 int ECORE_SUCCESS ;
 scalar_t__ ECORE_TEST_BIT (int ,int *) ;
 int stub1 (struct bxe_softc*,struct ecore_vlan_mac_obj*,int *) ;
 scalar_t__ stub2 (struct ecore_exe_queue_obj*,struct ecore_exeq_elem*) ;
 scalar_t__ stub3 (struct ecore_vlan_mac_obj*) ;

__attribute__((used)) static inline int ecore_validate_vlan_mac_add(struct bxe_softc *sc,
           union ecore_qable_obj *qo,
           struct ecore_exeq_elem *elem)
{
 struct ecore_vlan_mac_obj *o = &qo->vlan_mac;
 struct ecore_exe_queue_obj *exeq = &o->exe_queue;
 int rc;


 rc = o->check_add(sc, o, &elem->cmd_data.vlan_mac.u);
 if (rc) {
  ECORE_MSG(sc, "ADD command is not allowed considering current registry state.\n");
  return rc;
 }




 if (exeq->get(exeq, elem)) {
  ECORE_MSG(sc, "There is a pending ADD command already\n");
  return ECORE_EXISTS;
 }






 if (!(ECORE_TEST_BIT(ECORE_DONT_CONSUME_CAM_CREDIT,
        &elem->cmd_data.vlan_mac.vlan_mac_flags) ||
     o->get_credit(o)))
  return ECORE_INVAL;

 return ECORE_SUCCESS;
}
