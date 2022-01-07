
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_vars {int eee_status; int link_status; scalar_t__ check_kr2_recovery_cnt; scalar_t__ phy_flags; int mac_type; int flow_ctrl; int duplex; scalar_t__ line_speed; scalar_t__ link_up; scalar_t__ phy_link_up; } ;
struct elink_params {int req_fc_auto_adv; int link_flags; int port; int loopback_mode; int* req_duplex; int switch_cfg; int lane_config; int chip_id; int feature_config_flags; int num_phys; int rsrv; int eee_mode; int hw_led_mode; int multi_phy_config; int link_attr_sync; int lfa_base; int * req_flow_ctrl; int * req_line_speed; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 int CHIP_IS_E3 (struct bxe_softc*) ;
 scalar_t__ CHIP_REV_IS_EMUL (struct bxe_softc*) ;
 scalar_t__ CHIP_REV_IS_FPGA (struct bxe_softc*) ;
 int CHIP_REV_IS_SLOW (struct bxe_softc*) ;
 int DELAY (int) ;
 int DUPLEX_FULL ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int) ;
 int ELINK_DEBUG_P2 (struct bxe_softc*,char*,int ,int ) ;
 int ELINK_DEBUG_P3 (struct bxe_softc*,char*,int,int,int) ;
 int ELINK_FEATURE_CONFIG_EMUL_DISABLE_EMAC ;
 int ELINK_FEATURE_CONFIG_PFC_ENABLED ;
 int ELINK_FLOW_CTRL_NONE ;






 int ELINK_MAC_TYPE_NONE ;
 int ELINK_NIG_MASK_MI_INT ;
 int ELINK_NIG_MASK_SERDES0_LINK_STATUS ;
 int ELINK_NIG_MASK_XGXS0_LINK10G ;
 int ELINK_NIG_MASK_XGXS0_LINK_STATUS ;
 int ELINK_PHY_INITIALIZED ;
 int ELINK_STATUS_ERROR ;
 int ELINK_STATUS_OK ;
 int ELINK_SWITCH_CFG_10G ;
 int LINK_STATUS_PFC_ENABLED ;
 scalar_t__ NIG_REG_MASK_INTERRUPT_PORT0 ;
 int elink_avoid_link_flap (struct elink_params*,struct elink_vars*) ;
 int elink_bits_dis (struct bxe_softc*,scalar_t__,int) ;
 int elink_cannot_avoid_link_flap (struct elink_params*,struct elink_vars*,int) ;
 int elink_check_lfa (struct elink_params*) ;
 int elink_chng_link_count (struct elink_params*,int) ;
 int elink_emac_init (struct elink_params*,struct elink_vars*) ;
 int elink_init_bmac_loopback (struct elink_params*,struct elink_vars*) ;
 int elink_init_emac_loopback (struct elink_params*,struct elink_vars*) ;
 int elink_init_emul (struct elink_params*,struct elink_vars*) ;
 int elink_init_fpga (struct elink_params*,struct elink_vars*) ;
 int elink_init_umac_loopback (struct elink_params*,struct elink_vars*) ;
 int elink_init_xgxs_loopback (struct elink_params*,struct elink_vars*) ;
 int elink_init_xmac_loopback (struct elink_params*,struct elink_vars*) ;
 int elink_link_initialize (struct elink_params*,struct elink_vars*) ;
 int elink_link_int_enable (struct elink_params*) ;
 int elink_serdes_deassert (struct bxe_softc*,int) ;
 int elink_set_rx_filter (struct elink_params*,int) ;
 int elink_update_mng (struct elink_params*,int ) ;
 int elink_update_mng_eee (struct elink_params*,int ) ;
 int elink_xgxs_deassert (struct elink_params*) ;
 int set_phy_vars (struct elink_params*,struct elink_vars*) ;

elink_status_t elink_phy_init(struct elink_params *params, struct elink_vars *vars)
{
 int lfa_status;
 struct bxe_softc *sc = params->sc;
 ELINK_DEBUG_P0(sc, "Phy Initialization started\n");
 ELINK_DEBUG_P2(sc, "(1) req_speed %d, req_flowctrl %d\n",
     params->req_line_speed[0], params->req_flow_ctrl[0]);
 ELINK_DEBUG_P2(sc, "(2) req_speed %d, req_flowctrl %d\n",
     params->req_line_speed[1], params->req_flow_ctrl[1]);
 ELINK_DEBUG_P1(sc, "req_adv_flow_ctrl 0x%x\n", params->req_fc_auto_adv);
 vars->link_status = 0;
 vars->phy_link_up = 0;
 vars->link_up = 0;
 vars->line_speed = 0;
 vars->duplex = DUPLEX_FULL;
 vars->flow_ctrl = ELINK_FLOW_CTRL_NONE;
 vars->mac_type = ELINK_MAC_TYPE_NONE;
 vars->phy_flags = 0;
 vars->check_kr2_recovery_cnt = 0;
 params->link_flags = ELINK_PHY_INITIALIZED;

 elink_set_rx_filter(params, 1);
 elink_chng_link_count(params, 1);

 lfa_status = elink_check_lfa(params);

 ELINK_DEBUG_P3(sc, " params : port = %x, loopback_mode = %x req_duplex = %x\n",
                        params->port, params->loopback_mode, params->req_duplex[0]);
        ELINK_DEBUG_P3(sc, " params : switch_cfg = %x, lane_config = %x req_duplex[1] = %x\n",
                        params->switch_cfg, params->lane_config, params->req_duplex[1]);
        ELINK_DEBUG_P3(sc, " params : chip_id = %x, feature_config_flags = %x, num_phys = %x\n",
                       params->chip_id, params->feature_config_flags, params->num_phys);
        ELINK_DEBUG_P3(sc, " params : rsrv = %x, eee_mode = %x, hw_led_mode = x\n",
                        params->rsrv, params->eee_mode, params->hw_led_mode);
        ELINK_DEBUG_P3(sc, " params : multi_phy = %x, req_fc_auto_adv = %x, link_flags = %x\n",
                        params->multi_phy_config, params->req_fc_auto_adv, params->link_flags);
        ELINK_DEBUG_P2(sc, " params : lfa_base = %x, link_attr = %x\n",
                        params->lfa_base, params->link_attr_sync);
 if (lfa_status == 0) {
  ELINK_DEBUG_P0(sc, "Link Flap Avoidance in progress\n");
  return elink_avoid_link_flap(params, vars);
 }

 ELINK_DEBUG_P1(sc, "Cannot avoid link flap lfa_sta=0x%x\n",
         lfa_status);
 elink_cannot_avoid_link_flap(params, vars, lfa_status);


 elink_bits_dis(sc, NIG_REG_MASK_INTERRUPT_PORT0 + params->port*4,
         (ELINK_NIG_MASK_XGXS0_LINK_STATUS |
   ELINK_NIG_MASK_XGXS0_LINK10G |
   ELINK_NIG_MASK_SERDES0_LINK_STATUS |
   ELINK_NIG_MASK_MI_INT));





 elink_emac_init(params, vars);

 if (params->feature_config_flags & ELINK_FEATURE_CONFIG_PFC_ENABLED)
  vars->link_status |= LINK_STATUS_PFC_ENABLED;

 if ((params->num_phys == 0) &&
     !CHIP_REV_IS_SLOW(sc)) {
  ELINK_DEBUG_P0(sc, "No phy found for initialization !!\n");
  return ELINK_STATUS_ERROR;
 }
 set_phy_vars(params, vars);

 ELINK_DEBUG_P1(sc, "Num of phys on board: %d\n", params->num_phys);
 switch (params->loopback_mode) {
 case 133:
  elink_init_bmac_loopback(params, vars);
  break;
 case 132:
  elink_init_emac_loopback(params, vars);
  break;
 case 128:
  elink_init_xmac_loopback(params, vars);
  break;
 case 130:
  elink_init_umac_loopback(params, vars);
  break;
 case 129:
 case 131:
  elink_init_xgxs_loopback(params, vars);
  break;
 default:
  if (!CHIP_IS_E3(sc)) {
   if (params->switch_cfg == ELINK_SWITCH_CFG_10G)
    elink_xgxs_deassert(params);
   else
    elink_serdes_deassert(sc, params->port);
  }
  elink_link_initialize(params, vars);
  DELAY(1000 * 30);
  elink_link_int_enable(params);
  break;
 }
 elink_update_mng(params, vars->link_status);

 elink_update_mng_eee(params, vars->eee_status);
 return ELINK_STATUS_OK;
}
