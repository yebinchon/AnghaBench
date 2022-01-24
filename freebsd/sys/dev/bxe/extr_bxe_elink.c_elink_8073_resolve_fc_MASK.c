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
typedef  int uint16_t ;
struct elink_vars {scalar_t__ flow_ctrl; } ;
struct elink_phy {scalar_t__ req_line_speed; scalar_t__ req_flow_ctrl; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int) ; 
 scalar_t__ ELINK_FLOW_CTRL_NONE ; 
 scalar_t__ ELINK_SPEED_10 ; 
 scalar_t__ ELINK_SPEED_100 ; 
 int /*<<< orphan*/  MDIO_AN_DEVAD ; 
 int /*<<< orphan*/  MDIO_AN_REG_CL37_FC_LD ; 
 int /*<<< orphan*/  MDIO_AN_REG_CL37_FC_LP ; 
 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (struct elink_phy*,struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC3 (struct elink_phy*,struct elink_params*,struct elink_vars*,int) ; 

__attribute__((used)) static void FUNC4(struct elink_phy *phy,
				  struct elink_params *params,
				  struct elink_vars *vars)
{
	struct bxe_softc *sc = params->sc;
	if (phy->req_line_speed == ELINK_SPEED_10 ||
	    phy->req_line_speed == ELINK_SPEED_100) {
		vars->flow_ctrl = phy->req_flow_ctrl;
		return;
	}

	if (FUNC2(phy, params, vars) &&
	    (vars->flow_ctrl == ELINK_FLOW_CTRL_NONE)) {
		uint16_t pause_result;
		uint16_t ld_pause;		/* local */
		uint16_t lp_pause;		/* link partner */
		FUNC1(sc, phy,
				MDIO_AN_DEVAD,
				MDIO_AN_REG_CL37_FC_LD, &ld_pause);

		FUNC1(sc, phy,
				MDIO_AN_DEVAD,
				MDIO_AN_REG_CL37_FC_LP, &lp_pause);
		pause_result = (ld_pause &
				MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH) >> 5;
		pause_result |= (lp_pause &
				 MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH) >> 7;

		FUNC3(phy, params, vars, pause_result);
		FUNC0(sc, "Ext PHY CL37 pause result 0x%x\n",
			   pause_result);
	}
}