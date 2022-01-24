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
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,char*,int) ; 
 int /*<<< orphan*/  MDIO_CL73_IEEEB0_CL73_AN_CONTROL ; 
 int MDIO_CL73_IEEEB0_CL73_AN_CONTROL_AN_EN ; 
 int MDIO_CL73_IEEEB0_CL73_AN_CONTROL_RESTART_AN ; 
 int /*<<< orphan*/  MDIO_COMBO_IEEE0_MII_CONTROL ; 
 int MDIO_COMBO_IEEO_MII_CONTROL_AN_EN ; 
 int MDIO_COMBO_IEEO_MII_CONTROL_RESTART_AN ; 
 int /*<<< orphan*/  MDIO_REG_BANK_CL73_IEEEB0 ; 
 int /*<<< orphan*/  MDIO_REG_BANK_COMBO_IEEE0 ; 

__attribute__((used)) static void FUNC4(struct elink_phy *phy,
				  struct elink_params *params,
				  uint8_t enable_cl73)
{
	struct bxe_softc *sc = params->sc;
	uint16_t mii_control;

	FUNC2(sc, "elink_restart_autoneg\n");
	/* Enable and restart BAM/CL37 aneg */

	if (enable_cl73) {
		FUNC0(sc, phy,
				  MDIO_REG_BANK_CL73_IEEEB0,
				  MDIO_CL73_IEEEB0_CL73_AN_CONTROL,
				  &mii_control);

		FUNC1(sc, phy,
				  MDIO_REG_BANK_CL73_IEEEB0,
				  MDIO_CL73_IEEEB0_CL73_AN_CONTROL,
				  (mii_control |
				  MDIO_CL73_IEEEB0_CL73_AN_CONTROL_AN_EN |
				  MDIO_CL73_IEEEB0_CL73_AN_CONTROL_RESTART_AN));
	} else {

		FUNC0(sc, phy,
				  MDIO_REG_BANK_COMBO_IEEE0,
				  MDIO_COMBO_IEEE0_MII_CONTROL,
				  &mii_control);
		FUNC3(sc,
			 "elink_restart_autoneg mii_control before = 0x%x\n",
			 mii_control);
		FUNC1(sc, phy,
				  MDIO_REG_BANK_COMBO_IEEE0,
				  MDIO_COMBO_IEEE0_MII_CONTROL,
				  (mii_control |
				   MDIO_COMBO_IEEO_MII_CONTROL_AN_EN |
				   MDIO_COMBO_IEEO_MII_CONTROL_RESTART_AN));
	}
}