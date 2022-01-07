
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct eth_multicast_rules_ramrod_data {int dummy; } ;
struct ecore_raw_obj {int rdata_mapping; int cid; int (* clear_pending ) (struct ecore_raw_obj*) ;scalar_t__ rdata; } ;
struct ecore_mcast_ramrod_params {scalar_t__ mcast_list_len; int ramrod_flags; struct ecore_mcast_obj* mcast_obj; } ;
struct ecore_mcast_obj {scalar_t__ total_pending_num; int max_cmd_len; int (* clear_sched ) (struct ecore_mcast_obj*) ;int pending_cmds_head; struct ecore_raw_obj raw; } ;
struct bxe_softc {int dummy; } ;
typedef enum ecore_mcast_cmd { ____Placeholder_ecore_mcast_cmd } ecore_mcast_cmd ;


 int ECORE_DBG_BREAK_IF (int) ;
 scalar_t__ ECORE_LIST_IS_EMPTY (int *) ;
 int ECORE_MEMSET (struct eth_multicast_rules_ramrod_data*,int ,int) ;
 int ECORE_PENDING ;
 int ECORE_SUCCESS ;
 scalar_t__ ECORE_TEST_BIT (int ,int *) ;
 int ETH_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_ETH_MULTICAST_RULES ;
 int RAMROD_DRV_CLR_ONLY ;
 int ecore_mcast_handle_current_cmd (struct bxe_softc*,struct ecore_mcast_ramrod_params*,int,int) ;
 int ecore_mcast_handle_pending_cmds_e2 (struct bxe_softc*,struct ecore_mcast_ramrod_params*) ;
 int ecore_mcast_refresh_registry_e2 (struct bxe_softc*,struct ecore_mcast_obj*) ;
 int ecore_mcast_set_rdata_hdr_e2 (struct bxe_softc*,struct ecore_mcast_ramrod_params*,int ) ;
 int ecore_sp_post (struct bxe_softc*,int ,int ,int ,int ) ;
 int stub1 (struct ecore_mcast_obj*) ;
 int stub2 (struct ecore_raw_obj*) ;

__attribute__((used)) static int ecore_mcast_setup_e2(struct bxe_softc *sc,
    struct ecore_mcast_ramrod_params *p,
    enum ecore_mcast_cmd cmd)
{
 struct ecore_raw_obj *raw = &p->mcast_obj->raw;
 struct ecore_mcast_obj *o = p->mcast_obj;
 struct eth_multicast_rules_ramrod_data *data =
  (struct eth_multicast_rules_ramrod_data *)(raw->rdata);
 int cnt = 0, rc;


 ECORE_MEMSET(data, 0, sizeof(*data));

 cnt = ecore_mcast_handle_pending_cmds_e2(sc, p);


 if (ECORE_LIST_IS_EMPTY(&o->pending_cmds_head))
  o->clear_sched(o);







 if (p->mcast_list_len > 0)
  cnt = ecore_mcast_handle_current_cmd(sc, p, cmd, cnt);




 o->total_pending_num -= cnt;


 ECORE_DBG_BREAK_IF(o->total_pending_num < 0);
 ECORE_DBG_BREAK_IF(cnt > o->max_cmd_len);

 ecore_mcast_set_rdata_hdr_e2(sc, p, (uint8_t)cnt);
 if (!o->total_pending_num)
  ecore_mcast_refresh_registry_e2(sc, o);




 if (ECORE_TEST_BIT(RAMROD_DRV_CLR_ONLY, &p->ramrod_flags)) {
  raw->clear_pending(raw);
  return ECORE_SUCCESS;
 } else {
  rc = ecore_sp_post( sc,
        RAMROD_CMD_ID_ETH_MULTICAST_RULES,
        raw->cid,
        raw->rdata_mapping,
        ETH_CONNECTION_TYPE);
  if (rc)
   return rc;


  return ECORE_PENDING;
 }
}
