#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct elink_vars {int /*<<< orphan*/  eee_status; int /*<<< orphan*/  link_status; scalar_t__ check_kr2_recovery_cnt; scalar_t__ phy_flags; int /*<<< orphan*/  mac_type; int /*<<< orphan*/  flow_ctrl; int /*<<< orphan*/  duplex; scalar_t__ line_speed; scalar_t__ link_up; scalar_t__ phy_link_up; } ;
struct elink_params {int req_fc_auto_adv; int link_flags; int port; int loopback_mode; int* req_duplex; int switch_cfg; int lane_config; int chip_id; int feature_config_flags; int num_phys; int rsrv; int eee_mode; int hw_led_mode; int multi_phy_config; int /*<<< orphan*/  link_attr_sync; int /*<<< orphan*/  lfa_base; int /*<<< orphan*/ * req_flow_ctrl; int /*<<< orphan*/ * req_line_speed; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  elink_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*,char*,int,int,int) ; 
 int ELINK_FEATURE_CONFIG_EMUL_DISABLE_EMAC ; 
 int ELINK_FEATURE_CONFIG_PFC_ENABLED ; 
 int /*<<< orphan*/  ELINK_FLOW_CTRL_NONE ; 
#define  ELINK_LOOPBACK_BMAC 133 
#define  ELINK_LOOPBACK_EMAC 132 
#define  ELINK_LOOPBACK_EXT_PHY 131 
#define  ELINK_LOOPBACK_UMAC 130 
#define  ELINK_LOOPBACK_XGXS 129 
#define  ELINK_LOOPBACK_XMAC 128 
 int /*<<< orphan*/  ELINK_MAC_TYPE_NONE ; 
 int ELINK_NIG_MASK_MI_INT ; 
 int ELINK_NIG_MASK_SERDES0_LINK_STATUS ; 
 int ELINK_NIG_MASK_XGXS0_LINK10G ; 
 int ELINK_NIG_MASK_XGXS0_LINK_STATUS ; 
 int ELINK_PHY_INITIALIZED ; 
 int /*<<< orphan*/  ELINK_STATUS_ERROR ; 
 int /*<<< orphan*/  ELINK_STATUS_OK ; 
 int ELINK_SWITCH_CFG_10G ; 
 int /*<<< orphan*/  LINK_STATUS_PFC_ENABLED ; 
 scalar_t__ NIG_REG_MASK_INTERRUPT_PORT0 ; 
 int /*<<< orphan*/  FUNC9 (struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC10 (struct bxe_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (struct elink_params*,struct elink_vars*,int) ; 
 int FUNC12 (struct elink_params*) ; 
 int /*<<< orphan*/  FUNC13 (struct elink_params*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC15 (struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC16 (struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC17 (struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC18 (struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC19 (struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC20 (struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC21 (struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC22 (struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC23 (struct elink_params*) ; 
 int /*<<< orphan*/  FUNC24 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct elink_params*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct elink_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct elink_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct elink_params*) ; 
 int /*<<< orphan*/  FUNC29 (struct elink_params*,struct elink_vars*) ; 

elink_status_t FUNC30(struct elink_params *params, struct elink_vars *vars)
{
	int lfa_status;
	struct bxe_softc *sc = params->sc;
	FUNC5(sc, "Phy Initialization started\n");
	FUNC7(sc, "(1) req_speed %d, req_flowctrl %d\n",
		   params->req_line_speed[0], params->req_flow_ctrl[0]);
	FUNC7(sc, "(2) req_speed %d, req_flowctrl %d\n",
		   params->req_line_speed[1], params->req_flow_ctrl[1]);
	FUNC6(sc, "req_adv_flow_ctrl 0x%x\n", params->req_fc_auto_adv);
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
	/* Driver opens NIG-BRB filters */
	FUNC25(params, 1);
	FUNC13(params, 1);
	/* Check if link flap can be avoided */
	lfa_status = FUNC12(params);

	FUNC8(sc, " params : port = %x, loopback_mode = %x req_duplex = %x\n",
                        params->port, params->loopback_mode, params->req_duplex[0]);
        FUNC8(sc, " params : switch_cfg = %x, lane_config = %x req_duplex[1] = %x\n",
                        params->switch_cfg, params->lane_config, params->req_duplex[1]);
        FUNC8(sc, " params : chip_id = %x, feature_config_flags = %x, num_phys = %x\n",
                       params->chip_id, params->feature_config_flags, params->num_phys);
        FUNC8(sc, " params : rsrv = %x, eee_mode = %x, hw_led_mode = x\n",
                        params->rsrv, params->eee_mode, params->hw_led_mode);
        FUNC8(sc, " params : multi_phy = %x, req_fc_auto_adv = %x, link_flags = %x\n",
                        params->multi_phy_config, params->req_fc_auto_adv, params->link_flags);
        FUNC7(sc, " params : lfa_base = %x, link_attr = %x\n",
                        params->lfa_base, params->link_attr_sync);
	if (lfa_status == 0) {
		FUNC5(sc, "Link Flap Avoidance in progress\n");
		return FUNC9(params, vars);
	}

	FUNC6(sc, "Cannot avoid link flap lfa_sta=0x%x\n",
		       lfa_status);
	FUNC11(params, vars, lfa_status);

	/* Disable attentions */
	FUNC10(sc, NIG_REG_MASK_INTERRUPT_PORT0 + params->port*4,
		       (ELINK_NIG_MASK_XGXS0_LINK_STATUS |
			ELINK_NIG_MASK_XGXS0_LINK10G |
			ELINK_NIG_MASK_SERDES0_LINK_STATUS |
			ELINK_NIG_MASK_MI_INT));
#ifdef ELINK_INCLUDE_EMUL
	if (!(params->feature_config_flags &
	      ELINK_FEATURE_CONFIG_EMUL_DISABLE_EMAC))
#endif

	FUNC14(params, vars);

	if (params->feature_config_flags & ELINK_FEATURE_CONFIG_PFC_ENABLED)
		vars->link_status |= LINK_STATUS_PFC_ENABLED;

	if ((params->num_phys == 0) &&
	    !FUNC3(sc)) {
		FUNC5(sc, "No phy found for initialization !!\n");
		return ELINK_STATUS_ERROR;
	}
	FUNC29(params, vars);

	FUNC6(sc, "Num of phys on board: %d\n", params->num_phys);
#ifdef ELINK_INCLUDE_FPGA
	if (CHIP_REV_IS_FPGA(sc)) {
		return elink_init_fpga(params, vars);
	} else
#endif
#ifdef ELINK_INCLUDE_EMUL
	if (CHIP_REV_IS_EMUL(sc)) {
		return elink_init_emul(params, vars);
	} else
#endif
	switch (params->loopback_mode) {
	case ELINK_LOOPBACK_BMAC:
		FUNC15(params, vars);
		break;
	case ELINK_LOOPBACK_EMAC:
		FUNC16(params, vars);
		break;
	case ELINK_LOOPBACK_XMAC:
		FUNC21(params, vars);
		break;
	case ELINK_LOOPBACK_UMAC:
		FUNC19(params, vars);
		break;
	case ELINK_LOOPBACK_XGXS:
	case ELINK_LOOPBACK_EXT_PHY:
		FUNC20(params, vars);
		break;
	default:
		if (!FUNC0(sc)) {
			if (params->switch_cfg == ELINK_SWITCH_CFG_10G)
				FUNC28(params);
			else
				FUNC24(sc, params->port);
		}
		FUNC22(params, vars);
		FUNC4(1000 * 30);
		FUNC23(params);
		break;
	}
	FUNC26(params, vars->link_status);

	FUNC27(params, vars->eee_status);
	return ELINK_STATUS_OK;
}