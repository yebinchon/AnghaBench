
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ecore_exe_queue_obj {scalar_t__ (* get ) (struct ecore_exe_queue_obj*,struct ecore_exeq_elem*) ;} ;
struct ecore_vlan_mac_obj {scalar_t__ (* put_credit ) (struct ecore_vlan_mac_obj*) ;scalar_t__ (* get_credit ) (struct ecore_vlan_mac_obj*) ;int (* check_move ) (struct bxe_softc*,struct ecore_vlan_mac_obj*,struct ecore_vlan_mac_obj*,int *) ;struct ecore_exe_queue_obj exe_queue; } ;
union ecore_qable_obj {struct ecore_vlan_mac_obj vlan_mac; } ;
struct TYPE_3__ {int vlan_mac_flags; int cmd; int u; struct ecore_vlan_mac_obj* target_obj; } ;
struct TYPE_4__ {TYPE_1__ vlan_mac; } ;
struct ecore_exeq_elem {TYPE_2__ cmd_data; } ;
struct bxe_softc {int dummy; } ;
typedef int query_elem ;


 int ECORE_DONT_CONSUME_CAM_CREDIT ;
 int ECORE_DONT_CONSUME_CAM_CREDIT_DEST ;
 int ECORE_ERR (char*) ;
 int ECORE_EXISTS ;
 int ECORE_INVAL ;
 int ECORE_MEMCPY (struct ecore_exeq_elem*,struct ecore_exeq_elem*,int) ;
 int ECORE_MSG (struct bxe_softc*,char*) ;
 int ECORE_SUCCESS ;
 scalar_t__ ECORE_TEST_BIT (int ,int *) ;
 int ECORE_VLAN_MAC_ADD ;
 int ECORE_VLAN_MAC_DEL ;
 int stub1 (struct bxe_softc*,struct ecore_vlan_mac_obj*,struct ecore_vlan_mac_obj*,int *) ;
 scalar_t__ stub2 (struct ecore_exe_queue_obj*,struct ecore_exeq_elem*) ;
 scalar_t__ stub3 (struct ecore_exe_queue_obj*,struct ecore_exeq_elem*) ;
 scalar_t__ stub4 (struct ecore_exe_queue_obj*,struct ecore_exeq_elem*) ;
 scalar_t__ stub5 (struct ecore_vlan_mac_obj*) ;
 scalar_t__ stub6 (struct ecore_vlan_mac_obj*) ;
 scalar_t__ stub7 (struct ecore_vlan_mac_obj*) ;

__attribute__((used)) static inline int ecore_validate_vlan_mac_move(struct bxe_softc *sc,
            union ecore_qable_obj *qo,
            struct ecore_exeq_elem *elem)
{
 struct ecore_vlan_mac_obj *src_o = &qo->vlan_mac;
 struct ecore_vlan_mac_obj *dest_o = elem->cmd_data.vlan_mac.target_obj;
 struct ecore_exeq_elem query_elem;
 struct ecore_exe_queue_obj *src_exeq = &src_o->exe_queue;
 struct ecore_exe_queue_obj *dest_exeq = &dest_o->exe_queue;




 if (!src_o->check_move(sc, src_o, dest_o,
          &elem->cmd_data.vlan_mac.u)) {
  ECORE_MSG(sc, "MOVE command is not allowed considering current registry state\n");
  return ECORE_INVAL;
 }





 ECORE_MEMCPY(&query_elem, elem, sizeof(query_elem));


 query_elem.cmd_data.vlan_mac.cmd = ECORE_VLAN_MAC_DEL;
 if (src_exeq->get(src_exeq, &query_elem)) {
  ECORE_ERR("There is a pending DEL command on the source queue already\n");
  return ECORE_INVAL;
 }


 if (src_exeq->get(src_exeq, elem)) {
  ECORE_MSG(sc, "There is a pending MOVE command already\n");
  return ECORE_EXISTS;
 }


 query_elem.cmd_data.vlan_mac.cmd = ECORE_VLAN_MAC_ADD;
 if (dest_exeq->get(dest_exeq, &query_elem)) {
  ECORE_ERR("There is a pending ADD command on the destination queue already\n");
  return ECORE_INVAL;
 }


 if (!(ECORE_TEST_BIT(ECORE_DONT_CONSUME_CAM_CREDIT_DEST,
        &elem->cmd_data.vlan_mac.vlan_mac_flags) ||
     dest_o->get_credit(dest_o)))
  return ECORE_INVAL;

 if (!(ECORE_TEST_BIT(ECORE_DONT_CONSUME_CAM_CREDIT,
        &elem->cmd_data.vlan_mac.vlan_mac_flags) ||
     src_o->put_credit(src_o))) {

  dest_o->put_credit(dest_o);
  return ECORE_INVAL;
 }

 return ECORE_SUCCESS;
}
