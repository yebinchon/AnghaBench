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
typedef  scalar_t__ uint8_t ;
typedef  int uint16_t ;
struct elink_phy {int req_line_speed; scalar_t__ req_duplex; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int) ; 
#define  ELINK_SPEED_10 130 
#define  ELINK_SPEED_100 129 
#define  ELINK_SPEED_1000 128 
 int ELINK_SPEED_AUTO_NEG ; 
 int /*<<< orphan*/  MDIO_WC_DEVAD ; 
 int /*<<< orphan*/  MDIO_WC_REG_COMBO_IEEE0_MIICTRL ; 
 int /*<<< orphan*/  MDIO_WC_REG_RX66_CONTROL ; 
 int /*<<< orphan*/  MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1 ; 
 int /*<<< orphan*/  MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2 ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct elink_phy*,struct elink_params*) ; 

__attribute__((used)) static void FUNC7(struct elink_phy *phy,
					   struct elink_params *params,
					   uint8_t fiber_mode,
					   uint8_t always_autoneg)
{
	struct bxe_softc *sc = params->sc;
	uint16_t val16, digctrl_kx1, digctrl_kx2;

	/* Clear XFI clock comp in non-10G single lane mode. */
	FUNC3(sc, phy, MDIO_WC_DEVAD,
				  MDIO_WC_REG_RX66_CONTROL, ~(3<<13));

	FUNC6(phy, params);

	if (always_autoneg || phy->req_line_speed == ELINK_SPEED_AUTO_NEG) {
		/* SGMII Autoneg */
		FUNC4(sc, phy, MDIO_WC_DEVAD,
					 MDIO_WC_REG_COMBO_IEEE0_MIICTRL,
					 0x1000);
		FUNC0(sc, "set SGMII AUTONEG\n");
	} else {
		FUNC2(sc, phy, MDIO_WC_DEVAD,
				MDIO_WC_REG_COMBO_IEEE0_MIICTRL, &val16);
		val16 &= 0xcebf;
		switch (phy->req_line_speed) {
		case ELINK_SPEED_10:
			break;
		case ELINK_SPEED_100:
			val16 |= 0x2000;
			break;
		case ELINK_SPEED_1000:
			val16 |= 0x0040;
			break;
		default:
			FUNC1(sc,
			   "Speed not supported: 0x%x\n", phy->req_line_speed);
			return;
		}

		if (phy->req_duplex == DUPLEX_FULL)
			val16 |= 0x0100;

		FUNC5(sc, phy, MDIO_WC_DEVAD,
				MDIO_WC_REG_COMBO_IEEE0_MIICTRL, val16);

		FUNC1(sc, "set SGMII force speed %d\n",
			       phy->req_line_speed);
		FUNC2(sc, phy, MDIO_WC_DEVAD,
				MDIO_WC_REG_COMBO_IEEE0_MIICTRL, &val16);
		FUNC1(sc, "  (readback) %x\n", val16);
	}

	/* SGMII Slave mode and disable signal detect */
	FUNC2(sc, phy, MDIO_WC_DEVAD,
			MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1, &digctrl_kx1);
	if (fiber_mode)
		digctrl_kx1 = 1;
	else
		digctrl_kx1 &= 0xff4a;

	FUNC5(sc, phy, MDIO_WC_DEVAD,
			MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1,
			digctrl_kx1);

	/* Turn off parallel detect */
	FUNC2(sc, phy, MDIO_WC_DEVAD,
			MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2, &digctrl_kx2);
	FUNC5(sc, phy, MDIO_WC_DEVAD,
			MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2,
			(digctrl_kx2 & ~(1<<2)));

	/* Re-enable parallel detect */
	FUNC5(sc, phy, MDIO_WC_DEVAD,
			MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2,
			(digctrl_kx2 | (1<<2)));

	/* Enable autodet */
	FUNC5(sc, phy, MDIO_WC_DEVAD,
			MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1,
			(digctrl_kx1 | 0x10));
}