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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct elink_phy {scalar_t__ type; } ;
struct elink_params {int /*<<< orphan*/  port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  MDIO_84833_SUPER_ISOLATE ; 
 int /*<<< orphan*/  MDIO_84833_TOP_CFG_XGPHY_STRAP1 ; 
 int /*<<< orphan*/  MDIO_CTL_DEVAD ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_3 ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_OUTPUT_LOW ; 
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84823 ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct elink_phy *phy,
				   struct elink_params *params)
{
	struct bxe_softc *sc = params->sc;
	uint8_t port;
	uint16_t val16;

	if (!(FUNC0(sc)))
		port = FUNC1(sc);
	else
		port = params->port;

	if (phy->type == PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84823) {
		FUNC2(sc, MISC_REGISTERS_GPIO_3,
			       MISC_REGISTERS_GPIO_OUTPUT_LOW,
			       port);
	} else {
		FUNC3(sc, phy,
				MDIO_CTL_DEVAD,
				MDIO_84833_TOP_CFG_XGPHY_STRAP1, &val16);
		val16 |= MDIO_84833_SUPER_ISOLATE;
		FUNC4(sc, phy,
				 MDIO_CTL_DEVAD,
				 MDIO_84833_TOP_CFG_XGPHY_STRAP1, val16);
	}
}