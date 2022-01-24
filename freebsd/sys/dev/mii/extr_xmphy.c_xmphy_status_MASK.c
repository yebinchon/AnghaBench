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
struct mii_softc {struct mii_data* mii_pdata; } ;
struct mii_data {int mii_media_active; int /*<<< orphan*/  mii_media_status; } ;

/* Variables and functions */
 int IFM_1000_SX ; 
 int /*<<< orphan*/  IFM_ACTIVE ; 
 int /*<<< orphan*/  IFM_AVALID ; 
 int IFM_ETHER ; 
 int IFM_FDX ; 
 int IFM_HDX ; 
 int IFM_LOOP ; 
 int IFM_NONE ; 
 int FUNC0 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 int XMPHY_ANLPAR_FDX ; 
 int XMPHY_BMCR_AUTOEN ; 
 int XMPHY_BMCR_FDX ; 
 int XMPHY_BMCR_LOOP ; 
 int XMPHY_BMSR_ACOMP ; 
 int XMPHY_BMSR_LINK ; 
 int /*<<< orphan*/  XMPHY_MII_ANAR ; 
 int /*<<< orphan*/  XMPHY_MII_ANLPAR ; 
 int /*<<< orphan*/  XMPHY_MII_BMCR ; 
 int /*<<< orphan*/  XMPHY_MII_BMSR ; 
 int /*<<< orphan*/  XMPHY_MII_EXTSTS ; 

__attribute__((used)) static void
FUNC1(struct mii_softc *sc)
{
	struct mii_data *mii = sc->mii_pdata;
	int bmsr, bmcr, anlpar;

	mii->mii_media_status = IFM_AVALID;
	mii->mii_media_active = IFM_ETHER;

	bmsr = FUNC0(sc, XMPHY_MII_BMSR) |
	    FUNC0(sc, XMPHY_MII_BMSR);
	if (bmsr & XMPHY_BMSR_LINK)
		mii->mii_media_status |= IFM_ACTIVE;

	/* Do dummy read of extended status register. */
	bmcr = FUNC0(sc, XMPHY_MII_EXTSTS);

	bmcr = FUNC0(sc, XMPHY_MII_BMCR);

	if (bmcr & XMPHY_BMCR_LOOP)
		mii->mii_media_active |= IFM_LOOP;

	if (bmcr & XMPHY_BMCR_AUTOEN) {
		if ((bmsr & XMPHY_BMSR_ACOMP) == 0) {
			if (bmsr & XMPHY_BMSR_LINK) {
				mii->mii_media_active |= IFM_1000_SX|IFM_HDX;
				return;
			}
			/* Erg, still trying, I guess... */
			mii->mii_media_active |= IFM_NONE;
			return;
		}

		mii->mii_media_active |= IFM_1000_SX;
		anlpar = FUNC0(sc, XMPHY_MII_ANAR) &
		    FUNC0(sc, XMPHY_MII_ANLPAR);
		if (anlpar & XMPHY_ANLPAR_FDX)
			mii->mii_media_active |= IFM_FDX;
		else
			mii->mii_media_active |= IFM_HDX;
		return;
	}

	mii->mii_media_active |= IFM_1000_SX;
	if (bmcr & XMPHY_BMCR_FDX)
		mii->mii_media_active |= IFM_FDX;
	else
		mii->mii_media_active |= IFM_HDX;
}