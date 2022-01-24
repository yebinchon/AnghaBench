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
struct mii_softc {int /*<<< orphan*/  mii_dev; struct mii_data* mii_pdata; } ;
struct mii_data {scalar_t__ mii_media_active; int /*<<< orphan*/  mii_media_status; } ;

/* Variables and functions */
 int BMSR_LINK ; 
 int CIPHY_1000STS_MSR ; 
 int CIPHY_AUXCSR_FDX ; 
 int CIPHY_AUXCSR_SPEED ; 
 int CIPHY_BMCR_AUTOEN ; 
 int CIPHY_BMCR_LOOP ; 
 int CIPHY_BMSR_ACOMP ; 
 int /*<<< orphan*/  CIPHY_MII_1000STS ; 
 int /*<<< orphan*/  CIPHY_MII_AUXCSR ; 
 int /*<<< orphan*/  CIPHY_MII_BMCR ; 
#define  CIPHY_SPEED10 130 
#define  CIPHY_SPEED100 129 
#define  CIPHY_SPEED1000 128 
 scalar_t__ IFM_1000_T ; 
 scalar_t__ IFM_100_TX ; 
 scalar_t__ IFM_10_T ; 
 int /*<<< orphan*/  IFM_ACTIVE ; 
 int /*<<< orphan*/  IFM_AVALID ; 
 scalar_t__ IFM_ETHER ; 
 int IFM_ETH_MASTER ; 
 int IFM_FDX ; 
 int IFM_HDX ; 
 scalar_t__ IFM_LOOP ; 
 scalar_t__ IFM_NONE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int FUNC1 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct mii_softc*) ; 

__attribute__((used)) static void
FUNC4(struct mii_softc *sc)
{
	struct mii_data *mii = sc->mii_pdata;
	int bmsr, bmcr;

	mii->mii_media_status = IFM_AVALID;
	mii->mii_media_active = IFM_ETHER;

	bmsr = FUNC1(sc, MII_BMSR) | FUNC1(sc, MII_BMSR);

	if (bmsr & BMSR_LINK)
		mii->mii_media_status |= IFM_ACTIVE;

	bmcr = FUNC1(sc, CIPHY_MII_BMCR);

	if (bmcr & CIPHY_BMCR_LOOP)
		mii->mii_media_active |= IFM_LOOP;

	if (bmcr & CIPHY_BMCR_AUTOEN) {
		if ((bmsr & CIPHY_BMSR_ACOMP) == 0) {
			/* Erg, still trying, I guess... */
			mii->mii_media_active |= IFM_NONE;
			return;
		}
	}

	bmsr = FUNC1(sc, CIPHY_MII_AUXCSR);
	switch (bmsr & CIPHY_AUXCSR_SPEED) {
	case CIPHY_SPEED10:
		mii->mii_media_active |= IFM_10_T;
		break;
	case CIPHY_SPEED100:
		mii->mii_media_active |= IFM_100_TX;
		break;
	case CIPHY_SPEED1000:
		mii->mii_media_active |= IFM_1000_T;
		break;
	default:
		FUNC2(sc->mii_dev, "unknown PHY speed %x\n",
		    bmsr & CIPHY_AUXCSR_SPEED);
		break;
	}

	if (bmsr & CIPHY_AUXCSR_FDX)
		mii->mii_media_active |= IFM_FDX | FUNC3(sc);
	else
		mii->mii_media_active |= IFM_HDX;

	if ((FUNC0(mii->mii_media_active) == IFM_1000_T) &&
	   (FUNC1(sc, CIPHY_MII_1000STS) & CIPHY_1000STS_MSR) != 0)
		mii->mii_media_active |= IFM_ETH_MASTER;
}