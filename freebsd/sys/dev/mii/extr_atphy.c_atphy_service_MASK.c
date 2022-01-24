#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct mii_softc {int mii_flags; int mii_extcapabilities; int /*<<< orphan*/  mii_ticks; int /*<<< orphan*/  mii_anegticks; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;

/* Variables and functions */
 int ANAR_CSMA ; 
 int ANAR_PAUSE_TOWARDS ; 
 int BMCR_AUTOEN ; 
 int BMCR_FDX ; 
 int BMCR_ISO ; 
 int BMCR_RESET ; 
 int BMCR_S10 ; 
 int BMCR_S100 ; 
 int BMCR_STARTNEG ; 
 int BMSR_LINK ; 
 int EINVAL ; 
 int EXTSR_1000TFDX ; 
 int EXTSR_1000THDX ; 
 int /*<<< orphan*/  IFM_1000_T ; 
#define  IFM_100_TX 133 
#define  IFM_10_T 132 
 int /*<<< orphan*/  IFM_AUTO ; 
 int IFM_FDX ; 
 int IFM_FLOW ; 
#define  IFM_NONE 131 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MIIF_FORCEPAUSE ; 
 int /*<<< orphan*/  MII_100T2CR ; 
 int /*<<< orphan*/  MII_ANAR ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_BMSR ; 
#define  MII_MEDIACHG 130 
#define  MII_POLLSTAT 129 
#define  MII_TICK 128 
 int FUNC1 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ifmedia_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct mii_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mii_softc*,int) ; 

__attribute__((used)) static int
FUNC7(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
	struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
	uint16_t anar, bmcr, bmsr;

	switch (cmd) {
	case MII_POLLSTAT:
		break;

	case MII_MEDIACHG:
		if (FUNC0(ife->ifm_media) == IFM_AUTO ||
		    FUNC0(ife->ifm_media) == IFM_1000_T) {
			FUNC5(sc, ife->ifm_media);
			break;
		}

		bmcr = 0;
		switch (FUNC0(ife->ifm_media)) {
		case IFM_100_TX:
			bmcr = BMCR_S100;
			break;
		case IFM_10_T:
			bmcr = BMCR_S10;
			break;
		case IFM_NONE:
			bmcr = FUNC1(sc, MII_BMCR);
			/*
			 * XXX
			 * Due to an unknown reason powering down PHY resulted
			 * in unexpected results such as inaccessibility of
			 * hardware of freshly rebooted system. Disable
			 * powering down PHY until I got more information for
			 * Attansic/Atheros PHY hardwares.
			 */
			FUNC3(sc, MII_BMCR, bmcr | BMCR_ISO);
			goto done;
		default:
			return (EINVAL);
		}

		anar = FUNC4(ife);
		if ((ife->ifm_media & IFM_FDX) != 0) {
			bmcr |= BMCR_FDX;
			if ((ife->ifm_media & IFM_FLOW) != 0 ||
			    (sc->mii_flags & MIIF_FORCEPAUSE) != 0)
				anar |= ANAR_PAUSE_TOWARDS;
		}

		if ((sc->mii_extcapabilities & (EXTSR_1000TFDX |
		    EXTSR_1000THDX)) != 0)
			FUNC3(sc, MII_100T2CR, 0);
		FUNC3(sc, MII_ANAR, anar | ANAR_CSMA);

		/*
		 * Reset the PHY so all changes take effect.
		 */
		FUNC3(sc, MII_BMCR, bmcr | BMCR_RESET | BMCR_AUTOEN |
		    BMCR_STARTNEG);
done:
		break;

	case MII_TICK:
		/*
		 * Only used for autonegotiation.
		 */
		if (FUNC0(ife->ifm_media) != IFM_AUTO) {
			sc->mii_ticks = 0;
			break;
		}

		/*
		 * Check for link.
		 * Read the status register twice; BMSR_LINK is latch-low.
		 */
		bmsr = FUNC1(sc, MII_BMSR) | FUNC1(sc, MII_BMSR);
		if (bmsr & BMSR_LINK) {
			sc->mii_ticks = 0;
			break;
		}

		/* Announce link loss right after it happens. */
		if (sc->mii_ticks++ == 0)
			break;
		if (sc->mii_ticks <= sc->mii_anegticks)
			return (0);

		sc->mii_ticks = 0;
		FUNC5(sc, ife->ifm_media);
		break;
	}

	/* Update the media status. */
	FUNC2(sc);

	/* Callback if something changed. */
	FUNC6(sc, cmd);
	return (0);
}