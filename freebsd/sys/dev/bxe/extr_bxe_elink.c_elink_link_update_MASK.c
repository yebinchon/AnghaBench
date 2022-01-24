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
typedef  size_t uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct elink_vars {int link_status; scalar_t__ line_speed; int phy_flags; size_t flow_ctrl; scalar_t__ duplex; scalar_t__ phy_link_up; size_t link_up; int fault_detected; size_t eee_status; int mac_type; int ieee_fc; scalar_t__ check_kr2_recovery_cnt; size_t periodic_flags; int aeu_int_mask; scalar_t__ rx_tx_asic_rst; scalar_t__ turn_to_run_wc_rt; scalar_t__ rsrv2; } ;
struct elink_phy {size_t (* read_status ) (struct elink_phy*,struct elink_params*,struct elink_vars*) ;int supported; int flags; int /*<<< orphan*/  (* config_init ) (struct elink_phy*,struct elink_params*,struct elink_vars*) ;int /*<<< orphan*/  (* phy_specific_func ) (struct elink_phy*,struct elink_params*,int /*<<< orphan*/ ) ;} ;
struct elink_params {size_t port; size_t num_phys; size_t multi_phy_config; int feature_config_flags; struct elink_phy* phy; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  elink_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_LINK_STATUS_CHANGED ; 
 scalar_t__ DUPLEX_FULL ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,char*,size_t,int,scalar_t__) ; 
 int /*<<< orphan*/  ELINK_DISABLE_TX ; 
 size_t ELINK_EXT_PHY1 ; 
 size_t ELINK_EXT_PHY2 ; 
 int ELINK_FEATURE_CONFIG_BC_SUPPORTS_AFEX ; 
 int ELINK_FEATURE_CONFIG_PFC_ENABLED ; 
 scalar_t__ ELINK_FLAGS_INIT_XGXS_FIRST ; 
 int ELINK_FLAGS_REARM_LATCH_SIGNAL ; 
 size_t ELINK_INT_PHY ; 
 int ELINK_LINK_UPDATE_MASK ; 
 int ELINK_MAX_PHYS ; 
 scalar_t__ FUNC6 (struct elink_params*) ; 
 scalar_t__ ELINK_SPEED_1000 ; 
 scalar_t__ ELINK_SPEED_10000 ; 
 int /*<<< orphan*/  ELINK_STATUS_OK ; 
 int ELINK_SUPPORTED_FIBRE ; 
 int LINK_STATUS_LINK_UP ; 
 int LINK_STATUS_PFC_ENABLED ; 
 int LINK_STATUS_SERDES_LINK ; 
 scalar_t__ NIG_REG_EGRESS_DRAIN0_MODE ; 
 scalar_t__ NIG_REG_EMAC0_STATUS_MISC_MI_INT ; 
 scalar_t__ NIG_REG_MASK_INTERRUPT_PORT0 ; 
 scalar_t__ NIG_REG_NIG_EMAC0_EN ; 
 scalar_t__ NIG_REG_SERDES0_STATUS_LINK_STATUS ; 
 scalar_t__ NIG_REG_STATUS_INTERRUPT_PORT0 ; 
 scalar_t__ NIG_REG_XGXS0_STATUS_LINK10G ; 
 scalar_t__ NIG_REG_XGXS0_STATUS_LINK_STATUS ; 
 int PHY_HALF_OPEN_CONN_FLAG ; 
 size_t PHY_SGMII_FLAG ; 
 int PHY_XGXS_FLAG ; 
#define  PORT_HW_CFG_PHY_SELECTION_FIRST_PHY_PRIORITY 130 
#define  PORT_HW_CFG_PHY_SELECTION_HARDWARE_DEFAULT 129 
#define  PORT_HW_CFG_PHY_SELECTION_SECOND_PHY_PRIORITY 128 
 scalar_t__ FUNC7 (struct bxe_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct elink_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct elink_params*,struct elink_vars*,size_t) ; 
 int FUNC13 (struct elink_params*) ; 
 int /*<<< orphan*/  FUNC14 (struct bxe_softc*,size_t,int) ; 
 int /*<<< orphan*/  FUNC15 (struct elink_params*,struct elink_phy*) ; 
 int /*<<< orphan*/  FUNC16 (struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC17 (struct elink_params*,struct elink_vars*,size_t) ; 
 size_t FUNC18 (struct elink_phy*,struct elink_params*,struct elink_vars*) ; 
 size_t FUNC19 (struct elink_phy*,struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC20 (struct elink_phy*,struct elink_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct elink_phy*,struct elink_params*,struct elink_vars*) ; 

elink_status_t FUNC22(struct elink_params *params, struct elink_vars *vars)
{
	struct bxe_softc *sc = params->sc;
	struct elink_vars phy_vars[ELINK_MAX_PHYS];
	uint8_t port = params->port;
	uint8_t link_10g_plus, phy_index;
	uint32_t prev_link_status = vars->link_status;
	uint8_t ext_phy_link_up = 0, cur_link_up;
	elink_status_t rc = ELINK_STATUS_OK;
	uint16_t ext_phy_line_speed = 0, prev_line_speed = vars->line_speed;
	uint8_t active_external_phy = ELINK_INT_PHY;
	vars->phy_flags &= ~PHY_HALF_OPEN_CONN_FLAG;
	vars->link_status &= ~ELINK_LINK_UPDATE_MASK;
	for (phy_index = ELINK_INT_PHY; phy_index < params->num_phys;
	      phy_index++) {
		phy_vars[phy_index].flow_ctrl = 0;
		phy_vars[phy_index].link_status = 0;
		phy_vars[phy_index].line_speed = 0;
		phy_vars[phy_index].duplex = DUPLEX_FULL;
		phy_vars[phy_index].phy_link_up = 0;
		phy_vars[phy_index].link_up = 0;
		phy_vars[phy_index].fault_detected = 0;
		/* different consideration, since vars holds inner state */
		phy_vars[phy_index].eee_status = vars->eee_status;
	}

	if (FUNC9(sc))
		FUNC15(params, &params->phy[ELINK_INT_PHY]);

	FUNC5(sc, "port %x, XGXS?%x, int_status 0x%x\n",
		 port, (vars->phy_flags & PHY_XGXS_FLAG),
		 FUNC7(sc, NIG_REG_STATUS_INTERRUPT_PORT0 + port*4));

	FUNC5(sc, "int_mask 0x%x MI_INT %x, SERDES_LINK %x\n",
		 FUNC7(sc, NIG_REG_MASK_INTERRUPT_PORT0 + port*4),
		 FUNC7(sc, NIG_REG_EMAC0_STATUS_MISC_MI_INT + port*0x18) > 0,
		 FUNC7(sc, NIG_REG_SERDES0_STATUS_LINK_STATUS + port*0x3c));

	FUNC4(sc, " 10G %x, XGXS_LINK %x\n",
	  FUNC7(sc, NIG_REG_XGXS0_STATUS_LINK10G + port*0x68),
	  FUNC7(sc, NIG_REG_XGXS0_STATUS_LINK_STATUS + port*0x68));

	/* Disable emac */
	if (!FUNC0(sc))
		FUNC8(sc, NIG_REG_NIG_EMAC0_EN + port*4, 0);

	/* Step 1:
	 * Check external link change only for external phys, and apply
	 * priority selection between them in case the link on both phys
	 * is up. Note that instead of the common vars, a temporary
	 * vars argument is used since each phy may have different link/
	 * speed/duplex result
	 */
	for (phy_index = ELINK_EXT_PHY1; phy_index < params->num_phys;
	      phy_index++) {
		struct elink_phy *phy = &params->phy[phy_index];
		if (!phy->read_status)
			continue;
		/* Read link status and params of this ext phy */
		cur_link_up = phy->read_status(phy, params,
					       &phy_vars[phy_index]);
		if (cur_link_up) {
			FUNC3(sc, "phy in index %d link is up\n",
				   phy_index);
		} else {
			FUNC3(sc, "phy in index %d link is down\n",
				   phy_index);
			continue;
		}

		if (!ext_phy_link_up) {
			ext_phy_link_up = 1;
			active_external_phy = phy_index;
		} else {
			switch (FUNC13(params)) {
			case PORT_HW_CFG_PHY_SELECTION_HARDWARE_DEFAULT:
			case PORT_HW_CFG_PHY_SELECTION_FIRST_PHY_PRIORITY:
			/* In this option, the first PHY makes sure to pass the
			 * traffic through itself only.
			 * Its not clear how to reset the link on the second phy
			 */
				active_external_phy = ELINK_EXT_PHY1;
				break;
			case PORT_HW_CFG_PHY_SELECTION_SECOND_PHY_PRIORITY:
			/* In this option, the first PHY makes sure to pass the
			 * traffic through the second PHY.
			 */
				active_external_phy = ELINK_EXT_PHY2;
				break;
			default:
			/* Link indication on both PHYs with the following cases
			 * is invalid:
			 * - FIRST_PHY means that second phy wasn't initialized,
			 * hence its link is expected to be down
			 * - SECOND_PHY means that first phy should not be able
			 * to link up by itself (using configuration)
			 * - DEFAULT should be overriden during initialiazation
			 */
				FUNC3(sc, "Invalid link indication"
					   "mpc=0x%x. DISABLING LINK !!!\n",
					   params->multi_phy_config);
				ext_phy_link_up = 0;
				break;
			}
		}
	}
	prev_line_speed = vars->line_speed;
	/* Step 2:
	 * Read the status of the internal phy. In case of
	 * DIRECT_SINGLE_MEDIA board, this link is the external link,
	 * otherwise this is the link between the 577xx and the first
	 * external phy
	 */
	if (params->phy[ELINK_INT_PHY].read_status)
		params->phy[ELINK_INT_PHY].read_status(
			&params->phy[ELINK_INT_PHY],
			params, vars);
	/* The INT_PHY flow control reside in the vars. This include the
	 * case where the speed or flow control are not set to AUTO.
	 * Otherwise, the active external phy flow control result is set
	 * to the vars. The ext_phy_line_speed is needed to check if the
	 * speed is different between the internal phy and external phy.
	 * This case may be result of intermediate link speed change.
	 */
	if (active_external_phy > ELINK_INT_PHY) {
		vars->flow_ctrl = phy_vars[active_external_phy].flow_ctrl;
		/* Link speed is taken from the XGXS. AN and FC result from
		 * the external phy.
		 */
		vars->link_status |= phy_vars[active_external_phy].link_status;

		/* if active_external_phy is first PHY and link is up - disable
		 * disable TX on second external PHY
		 */
		if (active_external_phy == ELINK_EXT_PHY1) {
			if (params->phy[ELINK_EXT_PHY2].phy_specific_func) {
				FUNC2(sc,
				   "Disabling TX on EXT_PHY2\n");
				params->phy[ELINK_EXT_PHY2].phy_specific_func(
					&params->phy[ELINK_EXT_PHY2],
					params, ELINK_DISABLE_TX);
			}
		}

		ext_phy_line_speed = phy_vars[active_external_phy].line_speed;
		vars->duplex = phy_vars[active_external_phy].duplex;
		if (params->phy[active_external_phy].supported &
		    ELINK_SUPPORTED_FIBRE)
			vars->link_status |= LINK_STATUS_SERDES_LINK;
		else
			vars->link_status &= ~LINK_STATUS_SERDES_LINK;

		vars->eee_status = phy_vars[active_external_phy].eee_status;

		FUNC3(sc, "Active external phy selected: %x\n",
			   active_external_phy);
	}
	
        FUNC5(sc, "vars : phy_flags = %x, mac_type = %x, phy_link_up = %x\n",
                       vars->phy_flags, vars->mac_type, vars->phy_link_up);
        FUNC5(sc, "vars : link_up = %x, line_speed = %x, duplex = %x\n",
                       vars->link_up, vars->line_speed, vars->duplex);
        FUNC5(sc, "vars : flow_ctrl = %x, ieee_fc = %x, link_status = %x\n",
                       vars->flow_ctrl, vars->ieee_fc, vars->link_status);
        FUNC5(sc, "vars : eee_status = %x, fault_detected = %x, check_kr2_recovery_cnt = %x\n",
                       vars->eee_status, vars->fault_detected, vars->check_kr2_recovery_cnt);
        FUNC5(sc, "vars : periodic_flags = %x, aeu_int_mask = %x, rx_tx_asic_rst = %x\n",
                       vars->periodic_flags, vars->aeu_int_mask, vars->rx_tx_asic_rst);
        FUNC4(sc, "vars : turn_to_run_wc_rt = %x, rsrv2 = %x\n",
                       vars->turn_to_run_wc_rt, vars->rsrv2);	

	for (phy_index = ELINK_EXT_PHY1; phy_index < params->num_phys;
	      phy_index++) {
		if (params->phy[phy_index].flags &
		    ELINK_FLAGS_REARM_LATCH_SIGNAL) {
			FUNC14(sc, port,
						 phy_index ==
						 active_external_phy);
			break;
		}
	}
	FUNC5(sc, "vars->flow_ctrl = 0x%x, vars->link_status = 0x%x,"
		   " ext_phy_line_speed = %d\n", vars->flow_ctrl,
		   vars->link_status, ext_phy_line_speed);
	/* Upon link speed change set the NIG into drain mode. Comes to
	 * deals with possible FIFO glitch due to clk change when speed
	 * is decreased without link down indicator
	 */

	if (vars->phy_link_up) {
		if (!(FUNC6(params)) && ext_phy_link_up &&
		    (ext_phy_line_speed != vars->line_speed)) {
			FUNC4(sc, "Internal link speed %d is"
				   " different than the external"
				   " link speed %d\n", vars->line_speed,
				   ext_phy_line_speed);
			vars->phy_link_up = 0;
			FUNC2(sc, "phy_link_up set to 0\n");
		} else if (prev_line_speed != vars->line_speed) {
			FUNC8(sc, NIG_REG_EGRESS_DRAIN0_MODE + params->port*4,
			       0);
			FUNC1(1000 * 1);
		}
	}

	/* Anything 10 and over uses the bmac */
	link_10g_plus = (vars->line_speed >= ELINK_SPEED_10000);

	FUNC12(params, vars, link_10g_plus);

	/* In case external phy link is up, and internal link is down
	 * (not initialized yet probably after link initialization, it
	 * needs to be initialized.
	 * Note that after link down-up as result of cable plug, the xgxs
	 * link would probably become up again without the need
	 * initialize it
	 */
	if (!(FUNC6(params))) {
		FUNC5(sc, "ext_phy_link_up = %d, int_link_up = %d,"
			   " init_preceding = %d\n", ext_phy_link_up,
			   vars->phy_link_up,
			   params->phy[ELINK_EXT_PHY1].flags &
			   ELINK_FLAGS_INIT_XGXS_FIRST);
		if (!(params->phy[ELINK_EXT_PHY1].flags &
		      ELINK_FLAGS_INIT_XGXS_FIRST)
		    && ext_phy_link_up && !vars->phy_link_up) {
			vars->line_speed = ext_phy_line_speed;
			if (vars->line_speed < ELINK_SPEED_1000)
				vars->phy_flags |= PHY_SGMII_FLAG;
			else
				vars->phy_flags &= ~PHY_SGMII_FLAG;

			if (params->phy[ELINK_INT_PHY].config_init)
				params->phy[ELINK_INT_PHY].config_init(
					&params->phy[ELINK_INT_PHY], params,
						vars);
		}
	}
	/* Link is up only if both local phy and external phy (in case of
	 * non-direct board) are up and no fault detected on active PHY.
	 */
	vars->link_up = (vars->phy_link_up &&
			 (ext_phy_link_up ||
			  FUNC6(params)) &&
			 (phy_vars[active_external_phy].fault_detected == 0));

	if(vars->link_up) {
                FUNC2(sc, "local phy and external phy are up\n");
        } else {
                FUNC2(sc, "either local phy or external phy or both are down\n");
        }

	/* Update the PFC configuration in case it was changed */
	if (params->feature_config_flags & ELINK_FEATURE_CONFIG_PFC_ENABLED)
		vars->link_status |= LINK_STATUS_PFC_ENABLED;
	else
		vars->link_status &= ~LINK_STATUS_PFC_ENABLED;

	if (vars->link_up)
		rc = FUNC17(params, vars, link_10g_plus);
	else
		rc = FUNC16(params, vars);

	if ((prev_link_status ^ vars->link_status) & LINK_STATUS_LINK_UP)
		FUNC11(params, 0);

	/* Update MCP link status was changed */
	if (params->feature_config_flags & ELINK_FEATURE_CONFIG_BC_SUPPORTS_AFEX)
		FUNC10(sc, DRV_MSG_CODE_LINK_STATUS_CHANGED, 0);

	return rc;
}