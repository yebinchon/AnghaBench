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
typedef  int uint32_t ;
struct ale_softc {int /*<<< orphan*/  ale_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ALE_MDIO ; 
 int ALE_PHY_TIMEOUT ; 
 int FUNC0 (struct ale_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ale_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int MDIO_CLK_25_4 ; 
 int MDIO_DATA_MASK ; 
 int MDIO_DATA_SHIFT ; 
 int MDIO_OP_BUSY ; 
 int MDIO_OP_EXECUTE ; 
 int MDIO_OP_READ ; 
 int FUNC3 (int) ; 
 int MDIO_SUP_PREAMBLE ; 
 struct ale_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev, int phy, int reg)
{
	struct ale_softc *sc;
	uint32_t v;
	int i;

	sc = FUNC4(dev);

	FUNC1(sc, ALE_MDIO, MDIO_OP_EXECUTE | MDIO_OP_READ |
	    MDIO_SUP_PREAMBLE | MDIO_CLK_25_4 | FUNC3(reg));
	for (i = ALE_PHY_TIMEOUT; i > 0; i--) {
		FUNC2(5);
		v = FUNC0(sc, ALE_MDIO);
		if ((v & (MDIO_OP_EXECUTE | MDIO_OP_BUSY)) == 0)
			break;
	}

	if (i == 0) {
		FUNC5(sc->ale_dev, "phy read timeout : %d\n", reg);
		return (0);
	}

	return ((v & MDIO_DATA_MASK) >> MDIO_DATA_SHIFT);
}