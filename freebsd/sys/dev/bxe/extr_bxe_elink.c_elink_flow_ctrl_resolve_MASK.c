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
typedef  int uint32_t ;
struct elink_vars {scalar_t__ flow_ctrl; int phy_flags; } ;
struct elink_phy {scalar_t__ req_flow_ctrl; scalar_t__ req_line_speed; } ;
struct elink_params {scalar_t__ req_fc_auto_adv; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,scalar_t__) ; 
 scalar_t__ ELINK_FLOW_CTRL_AUTO ; 
 scalar_t__ ELINK_FLOW_CTRL_NONE ; 
 int ELINK_MDIO_AN_CL73_OR_37_COMPLETE ; 
 scalar_t__ ELINK_SPEED_AUTO_NEG ; 
 int PHY_SGMII_FLAG ; 
 scalar_t__ FUNC1 (struct elink_phy*,struct elink_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct elink_phy*,struct elink_params*,struct elink_vars*,int) ; 

__attribute__((used)) static void FUNC3(struct elink_phy *phy,
				    struct elink_params *params,
				    struct elink_vars *vars,
				    uint32_t gp_status)
{
	struct bxe_softc *sc = params->sc;
	vars->flow_ctrl = ELINK_FLOW_CTRL_NONE;

	/* Resolve from gp_status in case of AN complete and not sgmii */
	if (phy->req_flow_ctrl != ELINK_FLOW_CTRL_AUTO) {
		/* Update the advertised flow-controled of LD/LP in AN */
		if (phy->req_line_speed == ELINK_SPEED_AUTO_NEG)
			FUNC2(phy, params, vars, gp_status);
		/* But set the flow-control result as the requested one */
		vars->flow_ctrl = phy->req_flow_ctrl;
	} else if (phy->req_line_speed != ELINK_SPEED_AUTO_NEG)
		vars->flow_ctrl = params->req_fc_auto_adv;
	else if ((gp_status & ELINK_MDIO_AN_CL73_OR_37_COMPLETE) &&
		 (!(vars->phy_flags & PHY_SGMII_FLAG))) {
		if (FUNC1(phy, params)) {
			vars->flow_ctrl = params->req_fc_auto_adv;
			return;
		}
		FUNC2(phy, params, vars, gp_status);
	}
	FUNC0(sc, "flow_ctrl 0x%x\n", vars->flow_ctrl);
}