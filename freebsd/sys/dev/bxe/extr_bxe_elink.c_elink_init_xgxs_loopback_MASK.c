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
struct elink_vars {int link_up; scalar_t__ line_speed; int /*<<< orphan*/  duplex; int /*<<< orphan*/  flow_ctrl; } ;
struct elink_phy {int flags; int /*<<< orphan*/  (* config_loopback ) (struct elink_phy*,struct elink_params*) ;} ;
struct elink_params {scalar_t__* req_line_speed; scalar_t__ loopback_mode; size_t num_phys; int port; struct elink_phy* phy; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_FULL ; 
 size_t ELINK_EXT_PHY1 ; 
 int ELINK_FLAGS_WC_DUAL_MODE ; 
 int /*<<< orphan*/  ELINK_FLOW_CTRL_NONE ; 
 size_t ELINK_INT_PHY ; 
 int /*<<< orphan*/  ELINK_LED_MODE_OPER ; 
 scalar_t__ ELINK_LOOPBACK_XGXS ; 
 scalar_t__ ELINK_SPEED_1000 ; 
 scalar_t__ ELINK_SPEED_10000 ; 
 scalar_t__ ELINK_SPEED_20000 ; 
 scalar_t__ NIG_REG_EGRESS_DRAIN0_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct elink_params*,struct elink_vars*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct elink_params*,struct elink_vars*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC5 (struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC6 (struct elink_params*,struct elink_vars*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct elink_params*,struct elink_vars*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct elink_params*) ; 
 int /*<<< orphan*/  FUNC9 (struct elink_params*,struct elink_vars*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct elink_phy*,struct elink_params*) ; 
 int /*<<< orphan*/  FUNC11 (struct elink_phy*,struct elink_params*) ; 

__attribute__((used)) static void FUNC12(struct elink_params *params,
				     struct elink_vars *vars)
{
	struct bxe_softc *sc = params->sc;
	struct elink_phy *int_phy = &params->phy[ELINK_INT_PHY];
	vars->link_up = 1;
	vars->flow_ctrl = ELINK_FLOW_CTRL_NONE;
	vars->duplex = DUPLEX_FULL;
	if (params->req_line_speed[0] == ELINK_SPEED_1000)
		vars->line_speed = ELINK_SPEED_1000;
	else if ((params->req_line_speed[0] == ELINK_SPEED_20000) ||
		 (int_phy->flags & ELINK_FLAGS_WC_DUAL_MODE))
		vars->line_speed = ELINK_SPEED_20000;
	else
		vars->line_speed = ELINK_SPEED_10000;

	if (!FUNC1(sc))
		FUNC8(params);
	FUNC5(params, vars);

	if (params->req_line_speed[0] == ELINK_SPEED_1000) {
		if (FUNC1(sc))
			FUNC7(params, vars, 0);
		else {
			FUNC4(params, vars);
			FUNC3(params, vars, 0);
		}
	} else {
		if (FUNC1(sc))
			FUNC9(params, vars, 0);
		else
			FUNC2(params, vars, 0, 1);
	}

	if (params->loopback_mode == ELINK_LOOPBACK_XGXS) {
		/* Set 10G XGXS loopback */
		int_phy->config_loopback(int_phy, params);
	} else {
		/* Set external phy loopback */
		uint8_t phy_index;
		for (phy_index = ELINK_EXT_PHY1;
		      phy_index < params->num_phys; phy_index++)
			if (params->phy[phy_index].config_loopback)
				params->phy[phy_index].config_loopback(
					&params->phy[phy_index],
					params);
	}
	FUNC0(sc, NIG_REG_EGRESS_DRAIN0_MODE + params->port*4, 0);

	FUNC6(params, vars, ELINK_LED_MODE_OPER, vars->line_speed);
}