
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ecore_qable_obj {int dummy; } ecore_qable_obj ;
typedef int uint8_t ;
typedef int uint32_t ;
struct ecore_vlan_mac_obj {int exe_queue; int get_n_elements; int ramrod_cmd; int check_move; void* check_add; void* check_del; int set_one_rule; int put_cam_offset; int get_cam_offset; int put_credit; int get_credit; } ;
struct ecore_credit_pool_obj {int dummy; } ;
struct bxe_softc {int dummy; } ;
typedef int ecore_obj_type ;
typedef int ecore_dma_addr_t ;


 scalar_t__ CHIP_IS_E1x (struct bxe_softc*) ;
 int CLASSIFY_RULES_COUNT ;
 int RAMROD_CMD_ID_ETH_CLASSIFICATION_RULES ;
 int RAMROD_CMD_ID_ETH_SET_MAC ;
 void* ecore_check_mac_add ;
 void* ecore_check_mac_del ;
 int ecore_check_move ;
 int ecore_check_move_always_err ;
 int ecore_exe_queue_init (struct bxe_softc*,int *,int,union ecore_qable_obj*,int ,int ,int ,int ,int ) ;
 int ecore_execute_vlan_mac ;
 int ecore_exeq_get_mac ;
 int ecore_get_cam_offset_mac ;
 int ecore_get_credit_mac ;
 int ecore_get_n_elements ;
 int ecore_init_vlan_mac_common (struct ecore_vlan_mac_obj*,int ,int ,int ,void*,int ,int,unsigned long*,int ,struct ecore_credit_pool_obj*,int *) ;
 int ecore_optimize_vlan_mac ;
 int ecore_put_cam_offset_mac ;
 int ecore_put_credit_mac ;
 int ecore_remove_vlan_mac ;
 int ecore_set_one_mac_e1x ;
 int ecore_set_one_mac_e2 ;
 int ecore_validate_vlan_mac ;

void ecore_init_mac_obj(struct bxe_softc *sc,
   struct ecore_vlan_mac_obj *mac_obj,
   uint8_t cl_id, uint32_t cid, uint8_t func_id, void *rdata,
   ecore_dma_addr_t rdata_mapping, int state,
   unsigned long *pstate, ecore_obj_type type,
   struct ecore_credit_pool_obj *macs_pool)
{
 union ecore_qable_obj *qable_obj = (union ecore_qable_obj *)mac_obj;

 ecore_init_vlan_mac_common(mac_obj, cl_id, cid, func_id, rdata,
       rdata_mapping, state, pstate, type,
       macs_pool, ((void*)0));


 mac_obj->get_credit = ecore_get_credit_mac;
 mac_obj->put_credit = ecore_put_credit_mac;
 mac_obj->get_cam_offset = ecore_get_cam_offset_mac;
 mac_obj->put_cam_offset = ecore_put_cam_offset_mac;

 if (CHIP_IS_E1x(sc)) {
  mac_obj->set_one_rule = ecore_set_one_mac_e1x;
  mac_obj->check_del = ecore_check_mac_del;
  mac_obj->check_add = ecore_check_mac_add;
  mac_obj->check_move = ecore_check_move_always_err;
  mac_obj->ramrod_cmd = RAMROD_CMD_ID_ETH_SET_MAC;


  ecore_exe_queue_init(sc,
         &mac_obj->exe_queue, 1, qable_obj,
         ecore_validate_vlan_mac,
         ecore_remove_vlan_mac,
         ecore_optimize_vlan_mac,
         ecore_execute_vlan_mac,
         ecore_exeq_get_mac);
 } else {
  mac_obj->set_one_rule = ecore_set_one_mac_e2;
  mac_obj->check_del = ecore_check_mac_del;
  mac_obj->check_add = ecore_check_mac_add;
  mac_obj->check_move = ecore_check_move;
  mac_obj->ramrod_cmd =
   RAMROD_CMD_ID_ETH_CLASSIFICATION_RULES;
  mac_obj->get_n_elements = ecore_get_n_elements;


  ecore_exe_queue_init(sc,
         &mac_obj->exe_queue, CLASSIFY_RULES_COUNT,
         qable_obj, ecore_validate_vlan_mac,
         ecore_remove_vlan_mac,
         ecore_optimize_vlan_mac,
         ecore_execute_vlan_mac,
         ecore_exeq_get_mac);
 }
}
