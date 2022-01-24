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
typedef  int uint16_t ;
struct elink_vars {scalar_t__ line_speed; int fault_detected; int /*<<< orphan*/  duplex; } ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*,int,int,int) ; 
 scalar_t__ ELINK_SPEED_1000 ; 
 scalar_t__ ELINK_SPEED_10000 ; 
 int /*<<< orphan*/  MDIO_AN_DEVAD ; 
 int /*<<< orphan*/  MDIO_AN_REG_LINK_STATUS ; 
 int /*<<< orphan*/  MDIO_PCS_DEVAD ; 
 int /*<<< orphan*/  MDIO_PCS_REG_STATUS ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_RXSTAT ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_STAT ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_TXCTRL ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_TXSTAT ; 
 int /*<<< orphan*/  MDIO_PMA_REG_RX_SD ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct elink_phy*,struct elink_params*,struct elink_vars*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t FUNC6(struct elink_phy *phy,
				      struct elink_params *params,
				      struct elink_vars *vars)
{
	uint8_t link_up = 0;
	uint16_t val1, val2, rx_sd, pcs_status;
	struct bxe_softc *sc = params->sc;
	FUNC0(sc, "XGXS 8706/8726\n");
	/* Clear RX Alarm*/
	FUNC3(sc, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXSTAT, &val2);

	FUNC5(sc, phy, MDIO_PMA_LASI_TXSTAT,
			     MDIO_PMA_LASI_TXCTRL);

	/* Clear LASI indication*/
	FUNC3(sc, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_LASI_STAT, &val1);
	FUNC3(sc, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_LASI_STAT, &val2);
	FUNC1(sc, "8706/8726 LASI status 0x%x--> 0x%x\n", val1, val2);

	FUNC3(sc, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_REG_RX_SD, &rx_sd);
	FUNC3(sc, phy,
			MDIO_PCS_DEVAD, MDIO_PCS_REG_STATUS, &pcs_status);
	FUNC3(sc, phy,
			MDIO_AN_DEVAD, MDIO_AN_REG_LINK_STATUS, &val2);
	FUNC3(sc, phy,
			MDIO_AN_DEVAD, MDIO_AN_REG_LINK_STATUS, &val2);

	FUNC2(sc, "8706/8726 rx_sd 0x%x pcs_status 0x%x 1Gbps"
			" link_status 0x%x\n", rx_sd, pcs_status, val2);
	/* Link is up if both bit 0 of pmd_rx_sd and bit 0 of pcs_status
	 * are set, or if the autoneg bit 1 is set
	 */
	link_up = ((rx_sd & pcs_status & 0x1) || (val2 & (1<<1)));
	if (link_up) {
		if (val2 & (1<<1))
			vars->line_speed = ELINK_SPEED_1000;
		else
			vars->line_speed = ELINK_SPEED_10000;
		FUNC4(phy, params, vars);
		vars->duplex = DUPLEX_FULL;
	}

	/* Capture 10G link fault. Read twice to clear stale value. */
	if (vars->line_speed == ELINK_SPEED_10000) {
		FUNC3(sc, phy, MDIO_PMA_DEVAD,
			    MDIO_PMA_LASI_TXSTAT, &val1);
		FUNC3(sc, phy, MDIO_PMA_DEVAD,
			    MDIO_PMA_LASI_TXSTAT, &val1);
		if (val1 & (1<<0))
			vars->fault_detected = 1;
	}

	return link_up;
}