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
struct mii_softc {scalar_t__ mii_media_active; scalar_t__ mii_media_status; int /*<<< orphan*/  mii_ticks; int /*<<< orphan*/  mii_anegticks; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {scalar_t__ mii_media_active; scalar_t__ mii_media_status; TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;

/* Variables and functions */
 int BMCR_ISO ; 
 int BMCR_PDOWN ; 
 int BMSR_LINK ; 
 int CIPHY_1000CTL_AFD ; 
 int CIPHY_1000CTL_AHD ; 
 int CIPHY_1000CTL_MSC ; 
 int CIPHY_1000CTL_MSE ; 
 int CIPHY_BMCR_AUTOEN ; 
 int CIPHY_BMCR_FDX ; 
 int CIPHY_BMCR_STARTNEG ; 
 int /*<<< orphan*/  CIPHY_MII_1000CTL ; 
 int /*<<< orphan*/  CIPHY_MII_ANAR ; 
 int /*<<< orphan*/  CIPHY_MII_BMCR ; 
 int CIPHY_S10 ; 
 int CIPHY_S100 ; 
 int CIPHY_S1000 ; 
 int CIPHY_SEL_TYPE ; 
 int EINVAL ; 
#define  IFM_1000_T 135 
#define  IFM_100_TX 134 
#define  IFM_10_T 133 
#define  IFM_AUTO 132 
 int IFM_ETH_MASTER ; 
 int IFM_FDX ; 
#define  IFM_NONE 131 
 int const FUNC0 (int) ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_BMSR ; 
#define  MII_MEDIACHG 130 
#define  MII_POLLSTAT 129 
#define  MII_TICK 128 
 int FUNC1 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct mii_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mii_softc*,int) ; 

__attribute__((used)) static int
FUNC7(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
	struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
	int reg, speed, gig;

	switch (cmd) {
	case MII_POLLSTAT:
		break;

	case MII_MEDIACHG:
		FUNC4(sc);	/* XXX hardware bug work-around */

		switch (FUNC0(ife->ifm_media)) {
		case IFM_AUTO:
#ifdef foo
			/*
			 * If we're already in auto mode, just return.
			 */
			if (PHY_READ(sc, CIPHY_MII_BMCR) & CIPHY_BMCR_AUTOEN)
				return (0);
#endif
			(void)FUNC5(sc);
			break;
		case IFM_1000_T:
			speed = CIPHY_S1000;
			goto setit;
		case IFM_100_TX:
			speed = CIPHY_S100;
			goto setit;
		case IFM_10_T:
			speed = CIPHY_S10;
setit:
			if ((ife->ifm_media & IFM_FDX) != 0) {
				speed |= CIPHY_BMCR_FDX;
				gig = CIPHY_1000CTL_AFD;
			} else
				gig = CIPHY_1000CTL_AHD;

			if (FUNC0(ife->ifm_media) == IFM_1000_T) {
				gig |= CIPHY_1000CTL_MSE;
				if ((ife->ifm_media & IFM_ETH_MASTER) != 0)
					gig |= CIPHY_1000CTL_MSC;
				speed |=
				    CIPHY_BMCR_AUTOEN | CIPHY_BMCR_STARTNEG;
			} else
				gig = 0;
			FUNC3(sc, CIPHY_MII_1000CTL, gig);
			FUNC3(sc, CIPHY_MII_BMCR, speed);
			FUNC3(sc, CIPHY_MII_ANAR, CIPHY_SEL_TYPE);
			break;
		case IFM_NONE:
			FUNC3(sc, MII_BMCR, BMCR_ISO | BMCR_PDOWN);
			break;
		default:
			return (EINVAL);
		}
		break;

	case MII_TICK:
		/*
		 * Only used for autonegotiation.
		 */
		if (FUNC0(ife->ifm_media) != IFM_AUTO)
			break;

		/*
		 * Check to see if we have link.  If we do, we don't
		 * need to restart the autonegotiation process.  Read
		 * the BMSR twice in case it's latched.
		 */
		reg = FUNC1(sc, MII_BMSR) | FUNC1(sc, MII_BMSR);
		if (reg & BMSR_LINK)
			break;

		/* Announce link loss right after it happens. */
		if (++sc->mii_ticks == 0)
			break;
		/*
		 * Only retry autonegotiation every mii_anegticks seconds.
		 */
		if (sc->mii_ticks <= sc->mii_anegticks)
			break;

		sc->mii_ticks = 0;
		FUNC5(sc);
		break;
	}

	/* Update the media status. */
	FUNC2(sc);

	/*
	 * Callback if something changed. Note that we need to poke
	 * apply fixups for certain PHY revs.
	 */
	if (sc->mii_media_active != mii->mii_media_active ||
	    sc->mii_media_status != mii->mii_media_status ||
	    cmd == MII_MEDIACHG) {
		FUNC4(sc);
	}
	FUNC6(sc, cmd);
	return (0);
}