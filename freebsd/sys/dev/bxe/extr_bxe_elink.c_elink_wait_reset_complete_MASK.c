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
struct elink_phy {scalar_t__ type; } ;
struct elink_params {int /*<<< orphan*/  port; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int,int) ; 
 int /*<<< orphan*/  ELINK_LOG_ID_PHY_UNINITIALIZED ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_CTRL ; 
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static uint16_t FUNC5(struct bxe_softc *sc,
				     struct elink_phy *phy,
				     struct elink_params *params)
{
	uint16_t cnt, ctrl;
	/* Wait for soft reset to get cleared up to 1 sec */
	for (cnt = 0; cnt < 1000; cnt++) {
		if (phy->type == PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE)
			FUNC3(sc, phy,
				MDIO_PMA_REG_CTRL, &ctrl);
		else
			FUNC4(sc, phy,
				MDIO_PMA_DEVAD,
				MDIO_PMA_REG_CTRL, &ctrl);
		if (!(ctrl & (1<<15)))
			break;
		FUNC0(1000 * 1);
	}

	if (cnt == 1000)
		FUNC2(sc, ELINK_LOG_ID_PHY_UNINITIALIZED, params->port); // "Warning: PHY was not initialized,"
				     // " Port %d\n",

	FUNC1(sc, "control reg 0x%x (after %d ms)\n", ctrl, cnt);
	return cnt;
}