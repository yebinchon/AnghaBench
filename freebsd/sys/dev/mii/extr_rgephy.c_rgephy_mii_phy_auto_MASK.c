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
struct mii_softc {int mii_flags; int /*<<< orphan*/  mii_capabilities; } ;

/* Variables and functions */
 int ANAR_CSMA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EJUSTRETURN ; 
 int IFM_FLOW ; 
 int MIIF_FORCEPAUSE ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 
 int RGEPHY_1000CTL_AFD ; 
 int RGEPHY_1000CTL_AHD ; 
 int RGEPHY_ANAR_ASP ; 
 int RGEPHY_ANAR_PC ; 
 int RGEPHY_BMCR_AUTOEN ; 
 int RGEPHY_BMCR_STARTNEG ; 
 int /*<<< orphan*/  RGEPHY_MII_1000CTL ; 
 int /*<<< orphan*/  RGEPHY_MII_ANAR ; 
 int /*<<< orphan*/  RGEPHY_MII_BMCR ; 
 int /*<<< orphan*/  FUNC4 (struct mii_softc*) ; 

__attribute__((used)) static int
FUNC5(struct mii_softc *sc, int media)
{
	int anar;

	FUNC4(sc);
	FUNC2(sc);

	anar = FUNC0(sc->mii_capabilities) | ANAR_CSMA;
	if ((media & IFM_FLOW) != 0 || (sc->mii_flags & MIIF_FORCEPAUSE) != 0)
		anar |= RGEPHY_ANAR_PC | RGEPHY_ANAR_ASP;
	FUNC3(sc, RGEPHY_MII_ANAR, anar);
	FUNC1(1000);
	FUNC3(sc, RGEPHY_MII_1000CTL,
	    RGEPHY_1000CTL_AHD | RGEPHY_1000CTL_AFD);
	FUNC1(1000);
	FUNC3(sc, RGEPHY_MII_BMCR,
	    RGEPHY_BMCR_AUTOEN | RGEPHY_BMCR_STARTNEG);
	FUNC1(100);

	return (EJUSTRETURN);
}