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
struct mii_softc {int mii_flags; } ;

/* Variables and functions */
 int BMCR_AUTOEN ; 
 int BMCR_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GTCR_TEST_MASK ; 
 int JMPHY_EXT_COMM_2 ; 
 int /*<<< orphan*/  JMPHY_SPEC_ADDR ; 
 int JMPHY_SPEC_ADDR_READ ; 
 int JMPHY_SPEC_ADDR_WRITE ; 
 int /*<<< orphan*/  JMPHY_SPEC_DATA ; 
 int /*<<< orphan*/  JMPHY_TMCTL ; 
 int JMPHY_TMCTL_SLEEP_ENB ; 
 int MIIF_PHYPRIV0 ; 
 int /*<<< orphan*/  MII_100T2CR ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC1 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct mii_softc *sc)
{
	uint16_t t2cr, val;
	int i;

	/* Disable sleep mode. */
	FUNC2(sc, JMPHY_TMCTL,
	    FUNC1(sc, JMPHY_TMCTL) & ~JMPHY_TMCTL_SLEEP_ENB);
	FUNC2(sc, MII_BMCR, BMCR_RESET | BMCR_AUTOEN);

	for (i = 0; i < 1000; i++) {
		FUNC0(1);
		if ((FUNC1(sc, MII_BMCR) & BMCR_RESET) == 0)
			break;
	}
	/* Perform vendor recommended PHY calibration. */
	if ((sc->mii_flags & MIIF_PHYPRIV0) != 0) {
		/* Select PHY test mode 1. */
		t2cr = FUNC1(sc, MII_100T2CR);
		t2cr &= ~GTCR_TEST_MASK;
		t2cr |= 0x2000;
		FUNC2(sc, MII_100T2CR, t2cr);
		/* Apply calibration patch. */
		FUNC2(sc, JMPHY_SPEC_ADDR, JMPHY_SPEC_ADDR_READ |
		    JMPHY_EXT_COMM_2);
		val = FUNC1(sc, JMPHY_SPEC_DATA);
		val &= ~0x0002;
		val |= 0x0010 | 0x0001;
		FUNC2(sc, JMPHY_SPEC_DATA, val);
		FUNC2(sc, JMPHY_SPEC_ADDR, JMPHY_SPEC_ADDR_WRITE |
		    JMPHY_EXT_COMM_2);

		/* XXX 20ms to complete recalibration. */
		FUNC0(20 * 1000);

		FUNC1(sc, MII_100T2CR);
		FUNC2(sc, JMPHY_SPEC_ADDR, JMPHY_SPEC_ADDR_READ |
		    JMPHY_EXT_COMM_2);
		val = FUNC1(sc, JMPHY_SPEC_DATA);
		val &= ~(0x0001 | 0x0002 | 0x0010);
		FUNC2(sc, JMPHY_SPEC_DATA, val);
		FUNC2(sc, JMPHY_SPEC_ADDR, JMPHY_SPEC_ADDR_WRITE |
		    JMPHY_EXT_COMM_2);
		/* Disable PHY test mode. */
		FUNC1(sc, MII_100T2CR);
		t2cr &= ~GTCR_TEST_MASK;
		FUNC2(sc, MII_100T2CR, t2cr);
	}
}