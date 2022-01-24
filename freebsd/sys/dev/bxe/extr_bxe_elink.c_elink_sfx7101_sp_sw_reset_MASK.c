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
struct elink_phy {int dummy; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_7101_RESET ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,struct elink_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct bxe_softc *sc, struct elink_phy *phy)
{
	uint16_t val, cnt;

	FUNC1(sc, phy,
			MDIO_PMA_DEVAD,
			MDIO_PMA_REG_7101_RESET, &val);

	for (cnt = 0; cnt < 10; cnt++) {
		FUNC0(1000 * 50);
		/* Writes a self-clearing reset */
		FUNC2(sc, phy,
				 MDIO_PMA_DEVAD,
				 MDIO_PMA_REG_7101_RESET,
				 (val | (1<<15)));
		/* Wait for clear */
		FUNC1(sc, phy,
				MDIO_PMA_DEVAD,
				MDIO_PMA_REG_7101_RESET, &val);

		if ((val & (1<<15)) == 0)
			break;
	}
}