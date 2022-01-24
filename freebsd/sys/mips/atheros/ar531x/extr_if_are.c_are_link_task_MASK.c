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
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
struct are_softc {int are_link_status; struct ifnet* are_ifp; int /*<<< orphan*/  are_miibus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct are_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct are_softc*) ; 
 int IFF_DRV_RUNNING ; 
 int IFM_ACTIVE ; 
 scalar_t__ IFM_NONE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct mii_data* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *arg, int pending)
{
#ifdef ARE_MII
	struct are_softc		*sc;
	struct mii_data		*mii;
	struct ifnet		*ifp;
	/* int			lfdx, mfdx; */

	sc = (struct are_softc *)arg;

	ARE_LOCK(sc);
	mii = device_get_softc(sc->are_miibus);
	ifp = sc->are_ifp;
	if (mii == NULL || ifp == NULL ||
	    (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
		ARE_UNLOCK(sc);
		return;
	}

	if (mii->mii_media_status & IFM_ACTIVE) {
		if (IFM_SUBTYPE(mii->mii_media_active) != IFM_NONE)
			sc->are_link_status = 1;
	} else
		sc->are_link_status = 0;

	ARE_UNLOCK(sc);
#endif
}