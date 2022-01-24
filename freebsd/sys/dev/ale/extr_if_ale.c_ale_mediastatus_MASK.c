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
struct mii_data {int /*<<< orphan*/  mii_media_active; int /*<<< orphan*/  mii_media_status; } ;
struct ifnet {int if_flags; struct ale_softc* if_softc; } ;
struct ifmediareq {int /*<<< orphan*/  ifm_active; int /*<<< orphan*/  ifm_status; } ;
struct ale_softc {int /*<<< orphan*/  ale_miibus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ale_softc*) ; 
 int IFF_UP ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC4(struct ifnet *ifp, struct ifmediareq *ifmr)
{
	struct ale_softc *sc;
	struct mii_data *mii;

	sc = ifp->if_softc;
	FUNC0(sc);
	if ((ifp->if_flags & IFF_UP) == 0) {
		FUNC1(sc);
		return;
	}
	mii = FUNC2(sc->ale_miibus);

	FUNC3(mii);
	ifmr->ifm_status = mii->mii_media_status;
	ifmr->ifm_active = mii->mii_media_active;
	FUNC1(sc);
}