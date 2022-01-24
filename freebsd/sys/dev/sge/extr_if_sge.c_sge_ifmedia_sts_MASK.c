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
struct sge_softc {int /*<<< orphan*/  sge_miibus; } ;
struct mii_data {int /*<<< orphan*/  mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct ifnet {int if_flags; struct sge_softc* if_softc; } ;
struct ifmediareq {int /*<<< orphan*/  ifm_status; int /*<<< orphan*/  ifm_active; } ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct sge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct sge_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC4(struct ifnet *ifp, struct ifmediareq *ifmr)
{
	struct sge_softc *sc;
	struct mii_data *mii;

	sc = ifp->if_softc;
	FUNC0(sc);
	mii = FUNC2(sc->sge_miibus);
	if ((ifp->if_flags & IFF_UP) == 0) {
		FUNC1(sc);
		return;
	}
	FUNC3(mii);
	ifmr->ifm_active = mii->mii_media_active;
	ifmr->ifm_status = mii->mii_media_status;
	FUNC1(sc);
}