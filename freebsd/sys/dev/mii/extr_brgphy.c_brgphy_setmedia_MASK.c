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
struct mii_softc {int dummy; } ;

/* Variables and functions */
 int BRGPHY_1000CTL_AFD ; 
 int BRGPHY_1000CTL_AHD ; 
 int BRGPHY_1000CTL_MSC ; 
 int BRGPHY_1000CTL_MSE ; 
 int BRGPHY_BMCR_AUTOEN ; 
 int BRGPHY_BMCR_FDX ; 
 int BRGPHY_BMCR_STARTNEG ; 
 int /*<<< orphan*/  BRGPHY_MII_1000CTL ; 
 int /*<<< orphan*/  BRGPHY_MII_ANAR ; 
 int /*<<< orphan*/  BRGPHY_MII_BMCR ; 
 int BRGPHY_S10 ; 
 int BRGPHY_S100 ; 
 int BRGPHY_S1000 ; 
 int BRGPHY_SEL_TYPE ; 
#define  IFM_1000_SX 132 
#define  IFM_1000_T 131 
#define  IFM_100_TX 130 
#define  IFM_10_T 129 
#define  IFM_2500_SX 128 
 int IFM_ETH_MASTER ; 
 int IFM_FDX ; 
 int const FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*) ; 

__attribute__((used)) static void
FUNC3(struct mii_softc *sc, int media)
{
	int bmcr = 0, gig;

	switch (FUNC0(media)) {
	case IFM_2500_SX:
		break;
	case IFM_1000_SX:
	case IFM_1000_T:
		bmcr = BRGPHY_S1000;
		break;
	case IFM_100_TX:
		bmcr = BRGPHY_S100;
		break;
	case IFM_10_T:
	default:
		bmcr = BRGPHY_S10;
		break;
	}

	if ((media & IFM_FDX) != 0) {
		bmcr |= BRGPHY_BMCR_FDX;
		gig = BRGPHY_1000CTL_AFD;
	} else {
		gig = BRGPHY_1000CTL_AHD;
	}

	/* Force loopback to disconnect PHY from Ethernet medium. */
	FUNC2(sc);

	FUNC1(sc, BRGPHY_MII_1000CTL, 0);
	FUNC1(sc, BRGPHY_MII_ANAR, BRGPHY_SEL_TYPE);

	if (FUNC0(media) != IFM_1000_T &&
	    FUNC0(media) != IFM_1000_SX) {
		FUNC1(sc, BRGPHY_MII_BMCR, bmcr);
		return;
	}

	if (FUNC0(media) == IFM_1000_T) {
		gig |= BRGPHY_1000CTL_MSE;
		if ((media & IFM_ETH_MASTER) != 0)
			gig |= BRGPHY_1000CTL_MSC;
	}
	FUNC1(sc, BRGPHY_MII_1000CTL, gig);
	FUNC1(sc, BRGPHY_MII_BMCR,
	    bmcr | BRGPHY_BMCR_AUTOEN | BRGPHY_BMCR_STARTNEG);
}