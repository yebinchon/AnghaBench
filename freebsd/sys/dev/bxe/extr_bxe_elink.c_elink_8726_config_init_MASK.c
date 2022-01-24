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
struct elink_vars {int dummy; } ;
struct elink_phy {scalar_t__ req_line_speed; int speed_cap_mask; int* tx_preemphasis; } ;
struct elink_params {int feature_config_flags; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  elink_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int,int) ; 
 int ELINK_FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED ; 
 scalar_t__ ELINK_SPEED_1000 ; 
 scalar_t__ ELINK_SPEED_AUTO_NEG ; 
 int /*<<< orphan*/  ELINK_STATUS_OK ; 
 int /*<<< orphan*/  MDIO_AN_DEVAD ; 
 int /*<<< orphan*/  MDIO_AN_REG_ADV ; 
 int /*<<< orphan*/  MDIO_AN_REG_CL37_AN ; 
 int /*<<< orphan*/  MDIO_AN_REG_CL37_CL73 ; 
 int /*<<< orphan*/  MDIO_AN_REG_CL37_FC_LD ; 
 int /*<<< orphan*/  MDIO_AN_REG_CTRL ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_CTRL ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_RXCTRL ; 
 int /*<<< orphan*/  MDIO_PMA_REG_10G_CTRL2 ; 
 int /*<<< orphan*/  MDIO_PMA_REG_8726_TX_CTRL1 ; 
 int /*<<< orphan*/  MDIO_PMA_REG_8726_TX_CTRL2 ; 
 int /*<<< orphan*/  MDIO_PMA_REG_CTRL ; 
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10G ; 
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_1G ; 
 int /*<<< orphan*/  FUNC2 (struct elink_phy*,struct elink_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct elink_params*,struct elink_phy*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC5 (struct elink_phy*,struct elink_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,struct elink_phy*,struct elink_params*) ; 

__attribute__((used)) static elink_status_t FUNC7(struct elink_phy *phy,
				  struct elink_params *params,
				  struct elink_vars *vars)
{
	struct bxe_softc *sc = params->sc;
	FUNC0(sc, "Initializing BCM8726\n");

	FUNC3(sc, phy, MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 1<<15);
	FUNC6(sc, phy, params);

	FUNC2(phy, params);

	/* Need to call module detected on initialization since the module
	 * detection triggered by actual module insertion might occur before
	 * driver is loaded, and when driver is loaded, it reset all
	 * registers, including the transmitter
	 */
	FUNC5(phy, params);

	if (phy->req_line_speed == ELINK_SPEED_1000) {
		FUNC0(sc, "Setting 1G force\n");
		FUNC3(sc, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 0x40);
		FUNC3(sc, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_REG_10G_CTRL2, 0xD);
		FUNC3(sc, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL, 0x5);
		FUNC3(sc, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXCTRL,
				 0x400);
	} else if ((phy->req_line_speed == ELINK_SPEED_AUTO_NEG) &&
		   (phy->speed_cap_mask &
		      PORT_HW_CFG_SPEED_CAPABILITY_D0_1G) &&
		   ((phy->speed_cap_mask &
		      PORT_HW_CFG_SPEED_CAPABILITY_D0_10G) !=
		    PORT_HW_CFG_SPEED_CAPABILITY_D0_10G)) {
		FUNC0(sc, "Setting 1G clause37\n");
		/* Set Flow control */
		FUNC4(params, phy, vars);
		FUNC3(sc, phy,
				 MDIO_AN_DEVAD, MDIO_AN_REG_ADV, 0x20);
		FUNC3(sc, phy,
				 MDIO_AN_DEVAD, MDIO_AN_REG_CL37_CL73, 0x040c);
		FUNC3(sc, phy,
				 MDIO_AN_DEVAD, MDIO_AN_REG_CL37_FC_LD, 0x0020);
		FUNC3(sc, phy,
				 MDIO_AN_DEVAD, MDIO_AN_REG_CL37_AN, 0x1000);
		FUNC3(sc, phy,
				MDIO_AN_DEVAD, MDIO_AN_REG_CTRL, 0x1200);
		/* Enable RX-ALARM control to receive interrupt for 1G speed
		 * change
		 */
		FUNC3(sc, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL, 0x4);
		FUNC3(sc, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXCTRL,
				 0x400);

	} else { /* Default 10G. Set only LASI control */
		FUNC3(sc, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL, 1);
	}

	/* Set TX PreEmphasis if needed */
	if ((params->feature_config_flags &
	     ELINK_FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED)) {
		FUNC1(sc,
		   "Setting TX_CTRL1 0x%x, TX_CTRL2 0x%x\n",
			 phy->tx_preemphasis[0],
			 phy->tx_preemphasis[1]);
		FUNC3(sc, phy,
				 MDIO_PMA_DEVAD,
				 MDIO_PMA_REG_8726_TX_CTRL1,
				 phy->tx_preemphasis[0]);

		FUNC3(sc, phy,
				 MDIO_PMA_DEVAD,
				 MDIO_PMA_REG_8726_TX_CTRL2,
				 phy->tx_preemphasis[1]);
	}

	return ELINK_STATUS_OK;

}