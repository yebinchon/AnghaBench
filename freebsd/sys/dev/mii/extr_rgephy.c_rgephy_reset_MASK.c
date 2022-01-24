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
struct mii_softc {int mii_mpd_rev; int mii_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MIIF_PHYPRIV0 ; 
 int FUNC1 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 
 int RGEPHY_8211B ; 
#define  RGEPHY_8211C 129 
#define  RGEPHY_8211F 128 
 int /*<<< orphan*/  RGEPHY_F_MII_PCR1 ; 
 int RGEPHY_F_PCR1_ALDPS_EN ; 
 int RGEPHY_F_PCR1_MDI_MM ; 
 int /*<<< orphan*/  RGEPHY_MII_PCR ; 
 int /*<<< orphan*/  RGEPHY_MII_SSR ; 
 int RGEPHY_PCR_MDIX_AUTO ; 
 int RGEPHY_PCR_MDI_MASK ; 
 int RGEPHY_SSR_ALDPS ; 
 int /*<<< orphan*/  FUNC3 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct mii_softc*) ; 

__attribute__((used)) static void
FUNC6(struct mii_softc *sc)
{
	uint16_t pcr, ssr;

	switch (sc->mii_mpd_rev) {
	case RGEPHY_8211F:
		pcr = FUNC1(sc, RGEPHY_F_MII_PCR1);
		pcr &= ~(RGEPHY_F_PCR1_MDI_MM | RGEPHY_F_PCR1_ALDPS_EN);
		FUNC2(sc, RGEPHY_F_MII_PCR1, pcr);
		FUNC4(sc);
		break;
	case RGEPHY_8211C:
		if ((sc->mii_flags & MIIF_PHYPRIV0) == 0) {
			/* RTL8211C(L) */
			ssr = FUNC1(sc, RGEPHY_MII_SSR);
			if ((ssr & RGEPHY_SSR_ALDPS) != 0) {
				ssr &= ~RGEPHY_SSR_ALDPS;
				FUNC2(sc, RGEPHY_MII_SSR, ssr);
			}
		}
		/* FALLTHROUGH */
	default:
		if (sc->mii_mpd_rev >= RGEPHY_8211B) {
			pcr = FUNC1(sc, RGEPHY_MII_PCR);
			if ((pcr & RGEPHY_PCR_MDIX_AUTO) == 0) {
				pcr &= ~RGEPHY_PCR_MDI_MASK;
				pcr |= RGEPHY_PCR_MDIX_AUTO;
				FUNC2(sc, RGEPHY_MII_PCR, pcr);
			}
		}
		break;
	}

	FUNC3(sc);
	FUNC0(1000);
	FUNC5(sc);
}