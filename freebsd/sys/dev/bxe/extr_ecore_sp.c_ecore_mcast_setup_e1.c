
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct mac_configuration_cmd {TYPE_1__* config_table; } ;
struct ecore_raw_obj {int rdata_mapping; int cid; int (* clear_pending ) (struct ecore_raw_obj*) ;scalar_t__ rdata; } ;
struct ecore_mcast_ramrod_params {int ramrod_flags; struct ecore_mcast_obj* mcast_obj; } ;
struct ecore_mcast_obj {int max_cmd_len; int total_pending_num; int (* clear_sched ) (struct ecore_mcast_obj*) ;int pending_cmds_head; struct ecore_raw_obj raw; } ;
struct bxe_softc {int dummy; } ;
typedef enum ecore_mcast_cmd { ____Placeholder_ecore_mcast_cmd } ecore_mcast_cmd ;
struct TYPE_2__ {int flags; } ;


 int ECORE_DBG_BREAK_IF (int) ;
 scalar_t__ ECORE_LIST_IS_EMPTY (int *) ;
 int ECORE_MEMSET (struct mac_configuration_cmd*,int ,int) ;
 int ECORE_PENDING ;
 int ECORE_SET_FLAG (int ,int ,int ) ;
 int ECORE_SUCCESS ;
 scalar_t__ ECORE_TEST_BIT (int ,int *) ;
 int ETH_CONNECTION_TYPE ;
 int MAC_CONFIGURATION_ENTRY_ACTION_TYPE ;
 int RAMROD_CMD_ID_ETH_SET_MAC ;
 int RAMROD_DRV_CLR_ONLY ;
 int T_ETH_MAC_COMMAND_INVALIDATE ;
 int ecore_mcast_handle_current_cmd (struct bxe_softc*,struct ecore_mcast_ramrod_params*,int,int ) ;
 int ecore_mcast_handle_pending_cmds_e1 (struct bxe_softc*,struct ecore_mcast_ramrod_params*) ;
 int ecore_mcast_refresh_registry_e1 (struct bxe_softc*,struct ecore_mcast_obj*) ;
 int ecore_mcast_set_rdata_hdr_e1 (struct bxe_softc*,struct ecore_mcast_ramrod_params*,int ) ;
 int ecore_sp_post (struct bxe_softc*,int ,int ,int ,int ) ;
 int stub1 (struct ecore_mcast_obj*) ;
 int stub2 (struct ecore_raw_obj*) ;

__attribute__((used)) static int ecore_mcast_setup_e1(struct bxe_softc *sc,
    struct ecore_mcast_ramrod_params *p,
    enum ecore_mcast_cmd cmd)
{
 struct ecore_mcast_obj *o = p->mcast_obj;
 struct ecore_raw_obj *raw = &o->raw;
 struct mac_configuration_cmd *data =
  (struct mac_configuration_cmd *)(raw->rdata);
 int cnt = 0, i, rc;


 ECORE_MEMSET(data, 0, sizeof(*data));


 for (i = 0; i < o->max_cmd_len ; i++)
  ECORE_SET_FLAG(data->config_table[i].flags,
   MAC_CONFIGURATION_ENTRY_ACTION_TYPE,
   T_ETH_MAC_COMMAND_INVALIDATE);


 cnt = ecore_mcast_handle_pending_cmds_e1(sc, p);


 if (ECORE_LIST_IS_EMPTY(&o->pending_cmds_head))
  o->clear_sched(o);


 if (!cnt)
  cnt = ecore_mcast_handle_current_cmd(sc, p, cmd, 0);




 o->total_pending_num -= o->max_cmd_len;



 ECORE_DBG_BREAK_IF(cnt > o->max_cmd_len);


 ecore_mcast_set_rdata_hdr_e1(sc, p, (uint8_t)cnt);







 rc = ecore_mcast_refresh_registry_e1(sc, o);
 if (rc)
  return rc;




 if (ECORE_TEST_BIT(RAMROD_DRV_CLR_ONLY, &p->ramrod_flags)) {
  raw->clear_pending(raw);
  return ECORE_SUCCESS;
 } else {
  rc = ecore_sp_post( sc,
        RAMROD_CMD_ID_ETH_SET_MAC,
        raw->cid,
        raw->rdata_mapping,
        ETH_CONNECTION_TYPE);
  if (rc)
   return rc;


  return ECORE_PENDING;
 }
}
