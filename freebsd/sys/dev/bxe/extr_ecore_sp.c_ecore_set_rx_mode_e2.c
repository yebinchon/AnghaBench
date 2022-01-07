
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {int rule_cnt; } ;
struct eth_filter_rules_ramrod_data {TYPE_1__ header; TYPE_2__* rules; } ;
struct ecore_rx_mode_ramrod_params {int rdata_mapping; int cid; int tx_accept_flags; int rx_accept_flags; int func_id; int ramrod_flags; int rx_mode_flags; void* cl_id; struct eth_filter_rules_ramrod_data* rdata; } ;
struct bxe_softc {int dummy; } ;
struct TYPE_4__ {void* cmd_general_data; int func_id; void* client_id; } ;


 void* ECORE_FCOE_CID (struct bxe_softc*) ;
 int ECORE_MEMSET (struct eth_filter_rules_ramrod_data*,int ,int) ;
 int ECORE_MSG (struct bxe_softc*,char*,int ,int ,int ) ;
 int ECORE_PENDING ;
 int ECORE_RX_MODE_FCOE_ETH ;
 scalar_t__ ECORE_TEST_BIT (int ,int *) ;
 int ETH_CONNECTION_TYPE ;
 void* ETH_FILTER_RULES_CMD_RX_CMD ;
 void* ETH_FILTER_RULES_CMD_TX_CMD ;
 int FALSE ;
 int RAMROD_CMD_ID_ETH_FILTER_RULES ;
 int RAMROD_RX ;
 int RAMROD_TX ;
 int TRUE ;
 int ecore_rx_mode_set_cmd_state_e2 (struct bxe_softc*,int *,TYPE_2__*,int ) ;
 int ecore_rx_mode_set_rdata_hdr_e2 (int ,TYPE_1__*,size_t) ;
 int ecore_sp_post (struct bxe_softc*,int ,int ,int ,int ) ;

__attribute__((used)) static int ecore_set_rx_mode_e2(struct bxe_softc *sc,
    struct ecore_rx_mode_ramrod_params *p)
{
 struct eth_filter_rules_ramrod_data *data = p->rdata;
 int rc;
 uint8_t rule_idx = 0;


 ECORE_MEMSET(data, 0, sizeof(*data));




 if (ECORE_TEST_BIT(RAMROD_TX, &p->ramrod_flags)) {
  data->rules[rule_idx].client_id = p->cl_id;
  data->rules[rule_idx].func_id = p->func_id;

  data->rules[rule_idx].cmd_general_data =
   ETH_FILTER_RULES_CMD_TX_CMD;

  ecore_rx_mode_set_cmd_state_e2(sc, &p->tx_accept_flags,
            &(data->rules[rule_idx++]),
            FALSE);
 }


 if (ECORE_TEST_BIT(RAMROD_RX, &p->ramrod_flags)) {
  data->rules[rule_idx].client_id = p->cl_id;
  data->rules[rule_idx].func_id = p->func_id;

  data->rules[rule_idx].cmd_general_data =
   ETH_FILTER_RULES_CMD_RX_CMD;

  ecore_rx_mode_set_cmd_state_e2(sc, &p->rx_accept_flags,
            &(data->rules[rule_idx++]),
            FALSE);
 }







 if (ECORE_TEST_BIT(ECORE_RX_MODE_FCOE_ETH, &p->rx_mode_flags)) {

  if (ECORE_TEST_BIT(RAMROD_TX, &p->ramrod_flags)) {
   data->rules[rule_idx].client_id = ECORE_FCOE_CID(sc);
   data->rules[rule_idx].func_id = p->func_id;

   data->rules[rule_idx].cmd_general_data =
      ETH_FILTER_RULES_CMD_TX_CMD;

   ecore_rx_mode_set_cmd_state_e2(sc, &p->tx_accept_flags,
             &(data->rules[rule_idx]),
             TRUE);
   rule_idx++;
  }


  if (ECORE_TEST_BIT(RAMROD_RX, &p->ramrod_flags)) {
   data->rules[rule_idx].client_id = ECORE_FCOE_CID(sc);
   data->rules[rule_idx].func_id = p->func_id;

   data->rules[rule_idx].cmd_general_data =
      ETH_FILTER_RULES_CMD_RX_CMD;

   ecore_rx_mode_set_cmd_state_e2(sc, &p->rx_accept_flags,
             &(data->rules[rule_idx]),
             TRUE);
   rule_idx++;
  }
 }




 ecore_rx_mode_set_rdata_hdr_e2(p->cid, &data->header, rule_idx);

 ECORE_MSG(sc, "About to configure %d rules, rx_accept_flags 0x%lx, tx_accept_flags 0x%lx\n",
    data->header.rule_cnt, p->rx_accept_flags,
    p->tx_accept_flags);
 rc = ecore_sp_post(sc,
      RAMROD_CMD_ID_ETH_FILTER_RULES,
      p->cid,
      p->rdata_mapping,
      ETH_CONNECTION_TYPE);
 if (rc)
  return rc;


 return ECORE_PENDING;
}
