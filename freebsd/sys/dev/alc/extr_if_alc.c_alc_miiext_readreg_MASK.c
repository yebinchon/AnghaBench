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
struct alc_softc {int alc_flags; int /*<<< orphan*/  alc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALC_EXT_MDIO ; 
 int ALC_FLAG_LINK ; 
 int /*<<< orphan*/  ALC_MDIO ; 
 int ALC_PHY_TIMEOUT ; 
 int FUNC0 (struct alc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct alc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int MDIO_CLK_25_128 ; 
 int MDIO_CLK_25_4 ; 
 int MDIO_DATA_MASK ; 
 int MDIO_DATA_SHIFT ; 
 int MDIO_MODE_EXT ; 
 int MDIO_OP_BUSY ; 
 int MDIO_OP_EXECUTE ; 
 int MDIO_OP_READ ; 
 int MDIO_SUP_PREAMBLE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static uint32_t
FUNC6(struct alc_softc *sc, int devaddr, int reg)
{
	uint32_t clk, v;
	int i;

	FUNC1(sc, ALC_EXT_MDIO, FUNC4(reg) |
	    FUNC3(devaddr));
	if ((sc->alc_flags & ALC_FLAG_LINK) != 0)
		clk = MDIO_CLK_25_128;
	else
		clk = MDIO_CLK_25_4;
	FUNC1(sc, ALC_MDIO, MDIO_OP_EXECUTE | MDIO_OP_READ |
	    MDIO_SUP_PREAMBLE | clk | MDIO_MODE_EXT);
	for (i = ALC_PHY_TIMEOUT; i > 0; i--) {
		FUNC2(5);
		v = FUNC0(sc, ALC_MDIO);
		if ((v & MDIO_OP_BUSY) == 0)
			break;
	}

	if (i == 0) {
		FUNC5(sc->alc_dev, "phy ext read timeout : %d, %d\n",
		    devaddr, reg);
		return (0);
	}

	return ((v & MDIO_DATA_MASK) >> MDIO_DATA_SHIFT);
}