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
typedef  int uint8_t ;
struct elink_vars {int phy_flags; scalar_t__ line_speed; int /*<<< orphan*/  ieee_fc; } ;
struct elink_phy {int dummy; } ;
struct elink_params {scalar_t__ loopback_mode; int feature_config_flags; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int ELINK_FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED ; 
 scalar_t__ ELINK_LOOPBACK_EXT ; 
 scalar_t__ ELINK_LOOPBACK_XGXS ; 
 scalar_t__ FUNC1 (struct elink_params*) ; 
 scalar_t__ ELINK_SPEED_AUTO_NEG ; 
 int PHY_SGMII_FLAG ; 
 int /*<<< orphan*/  FUNC2 (struct elink_phy*,struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC3 (struct elink_phy*,struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC4 (struct elink_phy*,struct elink_params*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct elink_phy*,struct elink_params*,struct elink_vars*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct elink_phy*,struct elink_params*) ; 
 int /*<<< orphan*/  FUNC7 (struct elink_phy*,struct elink_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct elink_phy*,struct elink_params*) ; 

__attribute__((used)) static void FUNC9(struct elink_phy *phy,
				   struct elink_params *params,
				   struct elink_vars *vars)
{
	struct bxe_softc *sc = params->sc;
	uint8_t enable_cl73 = (FUNC1(params) ||
			  (params->loopback_mode == ELINK_LOOPBACK_XGXS));
	if (!(vars->phy_flags & PHY_SGMII_FLAG)) {
		if (FUNC1(params) &&
		    (params->feature_config_flags &
		     ELINK_FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED))
			FUNC8(phy, params);

		/* Forced speed requested? */
		if (vars->line_speed != ELINK_SPEED_AUTO_NEG ||
		    (FUNC1(params) &&
		     params->loopback_mode == ELINK_LOOPBACK_EXT)) {
			FUNC0(sc, "not SGMII, no AN\n");

			/* Disable autoneg */
			FUNC5(phy, params, vars, 0);

			/* Program speed and duplex */
			FUNC3(phy, params, vars);

		} else { /* AN_mode */
			FUNC0(sc, "not SGMII, AN\n");

			/* AN enabled */
			FUNC6(phy, params);

			/* Program duplex & pause advertisement (for aneg) */
			FUNC7(phy, params,
							  vars->ieee_fc);

			/* Enable autoneg */
			FUNC5(phy, params, vars, enable_cl73);

			/* Enable and restart AN */
			FUNC4(phy, params, enable_cl73);
		}

	} else { /* SGMII mode */
		FUNC0(sc, "SGMII\n");

		FUNC2(phy, params, vars);
	}
}