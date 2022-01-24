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
struct ure_softc {int sc_flags; int /*<<< orphan*/  sc_ue; int /*<<< orphan*/  sc_mtx; } ;
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct mii_data* FUNC0 (struct ure_softc*) ; 
 int IFF_DRV_RUNNING ; 
#define  IFM_1000_T 130 
#define  IFM_100_TX 129 
#define  IFM_10_T 128 
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int URE_FLAG_8152 ; 
 int URE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC2 (struct ure_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ure_softc*) ; 
 struct ure_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 struct ifnet* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(device_t dev)
{
	struct ure_softc *sc;
	struct mii_data *mii;
	struct ifnet *ifp;
	int locked;

	sc = FUNC4(dev);
	mii = FUNC0(sc);
	locked = FUNC5(&sc->sc_mtx);
	if (!locked)
		FUNC2(sc);

	ifp = FUNC6(&sc->sc_ue);
	if (mii == NULL || ifp == NULL ||
	    (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
		goto done;

	sc->sc_flags &= ~URE_FLAG_LINK;
	if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
	    (IFM_ACTIVE | IFM_AVALID)) {
		switch (FUNC1(mii->mii_media_active)) {
		case IFM_10_T:
		case IFM_100_TX:
			sc->sc_flags |= URE_FLAG_LINK;
			break;
		case IFM_1000_T:
			if ((sc->sc_flags & URE_FLAG_8152) != 0)
				break;
			sc->sc_flags |= URE_FLAG_LINK;
			break;
		default:
			break;
		}
	}

	/* Lost link, do nothing. */
	if ((sc->sc_flags & URE_FLAG_LINK) == 0)
		goto done;
done:
	if (!locked)
		FUNC3(sc);
}