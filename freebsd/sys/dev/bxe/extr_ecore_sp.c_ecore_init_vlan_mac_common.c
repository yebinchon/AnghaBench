
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ecore_vlan_mac_obj {int raw; int wait; int complete; int restore; int delete_all; struct ecore_credit_pool_obj* vlans_pool; struct ecore_credit_pool_obj* macs_pool; scalar_t__ saved_ramrod_flags; int head_exe_request; scalar_t__ head_reader; int head; } ;
struct ecore_credit_pool_obj {int dummy; } ;
typedef int ecore_obj_type ;
typedef int ecore_dma_addr_t ;


 int ECORE_LIST_INIT (int *) ;
 int FALSE ;
 int ecore_complete_vlan_mac ;
 int ecore_init_raw_obj (int *,int ,int ,int ,void*,int ,int,unsigned long*,int ) ;
 int ecore_vlan_mac_del_all ;
 int ecore_vlan_mac_restore ;
 int ecore_wait_vlan_mac ;

__attribute__((used)) static inline void ecore_init_vlan_mac_common(struct ecore_vlan_mac_obj *o,
 uint8_t cl_id, uint32_t cid, uint8_t func_id, void *rdata, ecore_dma_addr_t rdata_mapping,
 int state, unsigned long *pstate, ecore_obj_type type,
 struct ecore_credit_pool_obj *macs_pool,
 struct ecore_credit_pool_obj *vlans_pool)
{
 ECORE_LIST_INIT(&o->head);
 o->head_reader = 0;
 o->head_exe_request = FALSE;
 o->saved_ramrod_flags = 0;

 o->macs_pool = macs_pool;
 o->vlans_pool = vlans_pool;

 o->delete_all = ecore_vlan_mac_del_all;
 o->restore = ecore_vlan_mac_restore;
 o->complete = ecore_complete_vlan_mac;
 o->wait = ecore_wait_vlan_mac;

 ecore_init_raw_obj(&o->raw, cl_id, cid, func_id, rdata, rdata_mapping,
      state, pstate, type);
}
