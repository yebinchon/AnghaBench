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
struct ifmedia {int /*<<< orphan*/  ifm_media; } ;
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; struct ifmedia mii_media; } ;
struct ifnet {int if_drv_flags; } ;
struct dc_softc {int dc_link; struct ifnet* dc_ifp; int /*<<< orphan*/  dc_miibus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dc_softc*) ; 
 scalar_t__ FUNC1 (struct dc_softc*) ; 
 int IFF_DRV_RUNNING ; 
#define  IFM_100_TX 129 
#define  IFM_10_T 128 
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 int IFM_HPNA_1 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(device_t dev)
{
	struct dc_softc *sc;
	struct ifnet *ifp;
	struct mii_data *mii;
	struct ifmedia *ifm;

	sc = FUNC4(dev);

	mii = FUNC4(sc->dc_miibus);
	ifp = sc->dc_ifp;
	if (mii == NULL || ifp == NULL ||
	    (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
		return;

	ifm = &mii->mii_media;
	if (FUNC1(sc) && FUNC2(ifm->ifm_media) == IFM_HPNA_1) {
		FUNC3(sc, ifm->ifm_media);
		return;
	} else if (!FUNC0(sc))
		FUNC3(sc, mii->mii_media_active);

	sc->dc_link = 0;
	if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
	    (IFM_ACTIVE | IFM_AVALID)) {
		switch (FUNC2(mii->mii_media_active)) {
		case IFM_10_T:
		case IFM_100_TX:
			sc->dc_link = 1;
			break;
		}
	}
}