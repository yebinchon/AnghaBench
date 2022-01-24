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
struct elink_vars {int link_up; int /*<<< orphan*/  phy_flags; int /*<<< orphan*/  mac_type; int /*<<< orphan*/  flow_ctrl; int /*<<< orphan*/  duplex; int /*<<< orphan*/  line_speed; } ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  ELINK_FLOW_CTRL_NONE ; 
 int /*<<< orphan*/  ELINK_MAC_TYPE_EMAC ; 
 int /*<<< orphan*/  ELINK_SPEED_1000 ; 
 scalar_t__ NIG_REG_EGRESS_DRAIN0_MODE ; 
 int /*<<< orphan*/  PHY_XGXS_FLAG ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct elink_params*,struct elink_vars*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC3 (struct elink_params*) ; 

__attribute__((used)) static void FUNC4(struct elink_params *params,
				     struct elink_vars *vars)
{
	struct bxe_softc *sc = params->sc;
		vars->link_up = 1;
		vars->line_speed = ELINK_SPEED_1000;
		vars->duplex = DUPLEX_FULL;
		vars->flow_ctrl = ELINK_FLOW_CTRL_NONE;
		vars->mac_type = ELINK_MAC_TYPE_EMAC;

		vars->phy_flags = PHY_XGXS_FLAG;

		FUNC3(params);
		/* Set bmac loopback */
		FUNC1(params, vars, 1);
		FUNC2(params, vars);
		FUNC0(sc, NIG_REG_EGRESS_DRAIN0_MODE + params->port*4, 0);
}