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
 int ALC_FLAG_FASTETHER ; 
 int /*<<< orphan*/  ALC_MDIO ; 
 int ALC_PHY_TIMEOUT ; 
 int FUNC0 (struct alc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct alc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int MDIO_CLK_25_4 ; 
 int MDIO_DATA_MASK ; 
 int MDIO_DATA_SHIFT ; 
 int MDIO_OP_BUSY ; 
 int MDIO_OP_EXECUTE ; 
 int MDIO_OP_READ ; 
 int FUNC3 (int) ; 
 int MDIO_SUP_PREAMBLE ; 
 int MII_EXTSR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static uint32_t
FUNC5(struct alc_softc *sc, int phy, int reg)
{
	uint32_t v;
	int i;

	/*
	 * For AR8132 fast ethernet controller, do not report 1000baseT
	 * capability to mii(4). Even though AR8132 uses the same
	 * model/revision number of F1 gigabit PHY, the PHY has no
	 * ability to establish 1000baseT link.
	 */
	if ((sc->alc_flags & ALC_FLAG_FASTETHER) != 0 &&
	    reg == MII_EXTSR)
		return (0);

	FUNC1(sc, ALC_MDIO, MDIO_OP_EXECUTE | MDIO_OP_READ |
	    MDIO_SUP_PREAMBLE | MDIO_CLK_25_4 | FUNC3(reg));
	for (i = ALC_PHY_TIMEOUT; i > 0; i--) {
		FUNC2(5);
		v = FUNC0(sc, ALC_MDIO);
		if ((v & (MDIO_OP_EXECUTE | MDIO_OP_BUSY)) == 0)
			break;
	}

	if (i == 0) {
		FUNC4(sc->alc_dev, "phy read timeout : %d\n", reg);
		return (0);
	}

	return ((v & MDIO_DATA_MASK) >> MDIO_DATA_SHIFT);
}