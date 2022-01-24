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
struct xl_softc {int xl_media; struct ifmedia ifmedia; int /*<<< orphan*/ * xl_miibus; } ;
struct mii_data {struct ifmedia mii_media; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; struct xl_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
#define  IFM_100_FX 131 
#define  IFM_10_2 130 
#define  IFM_10_5 129 
#define  IFM_10_FL 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xl_softc*) ; 
 int XL_MEDIAOPT_BT4 ; 
 int XL_MEDIAOPT_BTX ; 
 int XL_MEDIAOPT_MII ; 
 int /*<<< orphan*/  FUNC2 (struct xl_softc*) ; 
 struct mii_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct xl_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct ifnet *ifp)
{
	struct xl_softc		*sc = ifp->if_softc;
	struct ifmedia		*ifm = NULL;
	struct mii_data		*mii = NULL;

	FUNC1(sc);

	if (sc->xl_miibus != NULL)
		mii = FUNC3(sc->xl_miibus);
	if (mii == NULL)
		ifm = &sc->ifmedia;
	else
		ifm = &mii->mii_media;

	switch (FUNC0(ifm->ifm_media)) {
	case IFM_100_FX:
	case IFM_10_FL:
	case IFM_10_2:
	case IFM_10_5:
		FUNC5(sc, ifm->ifm_media);
		FUNC2(sc);
		return (0);
	}

	if (sc->xl_media & XL_MEDIAOPT_MII ||
	    sc->xl_media & XL_MEDIAOPT_BTX ||
	    sc->xl_media & XL_MEDIAOPT_BT4) {
		ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC4(sc);
	} else {
		FUNC5(sc, ifm->ifm_media);
	}

	FUNC2(sc);

	return (0);
}