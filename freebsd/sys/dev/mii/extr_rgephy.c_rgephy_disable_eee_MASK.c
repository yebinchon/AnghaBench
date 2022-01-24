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
struct mii_softc {int /*<<< orphan*/  mii_capabilities; } ;

/* Variables and functions */
 int ANAR_CSMA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MII_MMDAADR ; 
 int /*<<< orphan*/  MII_MMDACR ; 
 int MMDACR_DADDRMASK ; 
 int MMDACR_FN_ADDRESS ; 
 int MMDACR_FN_DATANPI ; 
 int /*<<< orphan*/  FUNC1 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 
 int RGEPHY_1000CTL_AFD ; 
 int RGEPHY_1000CTL_AHD ; 
 int RGEPHY_BMCR_AUTOEN ; 
 int RGEPHY_BMCR_RESET ; 
 int RGEPHY_BMCR_STARTNEG ; 
 int /*<<< orphan*/  RGEPHY_F_EPAGSR ; 
 int RGEPHY_F_MMD_DEV_7 ; 
 int RGEPHY_F_MMD_EEEAR ; 
 int /*<<< orphan*/  RGEPHY_MII_1000CTL ; 
 int /*<<< orphan*/  RGEPHY_MII_ANAR ; 
 int /*<<< orphan*/  RGEPHY_MII_BMCR ; 

__attribute__((used)) static void
FUNC2(struct mii_softc *sc)
{
	uint16_t anar;

	FUNC1(sc, RGEPHY_F_EPAGSR, 0x0000);
	FUNC1(sc, MII_MMDACR, MMDACR_FN_ADDRESS |
	    (MMDACR_DADDRMASK & RGEPHY_F_MMD_DEV_7));
	FUNC1(sc, MII_MMDAADR, RGEPHY_F_MMD_EEEAR);
	FUNC1(sc, MII_MMDACR, MMDACR_FN_DATANPI |
	    (MMDACR_DADDRMASK & RGEPHY_F_MMD_DEV_7));
	FUNC1(sc, MII_MMDAADR, 0x0000);
	FUNC1(sc, MII_MMDACR, 0x0000);
	/*
	 * XXX
	 * Restart auto-negotiation to take changes effect.
	 * This may result in link establishment.
	 */
	anar = FUNC0(sc->mii_capabilities) | ANAR_CSMA;
	FUNC1(sc, RGEPHY_MII_ANAR, anar);
	FUNC1(sc, RGEPHY_MII_1000CTL, RGEPHY_1000CTL_AHD |
	    RGEPHY_1000CTL_AFD);
	FUNC1(sc, RGEPHY_MII_BMCR, RGEPHY_BMCR_RESET |
	    RGEPHY_BMCR_AUTOEN | RGEPHY_BMCR_STARTNEG);
}