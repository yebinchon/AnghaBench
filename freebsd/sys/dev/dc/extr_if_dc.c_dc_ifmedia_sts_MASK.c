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
struct mii_data {int /*<<< orphan*/  mii_media_status; int /*<<< orphan*/  mii_media_active; struct ifmedia mii_media; } ;
struct ifnet {struct dc_softc* if_softc; } ;
struct ifmediareq {int /*<<< orphan*/  ifm_status; int /*<<< orphan*/  ifm_active; } ;
struct dc_softc {int /*<<< orphan*/  dc_miibus; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct dc_softc*) ; 
 scalar_t__ IFM_HPNA_1 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct mii_data* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC6(struct ifnet *ifp, struct ifmediareq *ifmr)
{
	struct dc_softc *sc;
	struct mii_data *mii;
	struct ifmedia *ifm;

	sc = ifp->if_softc;
	mii = FUNC4(sc->dc_miibus);
	FUNC1(sc);
	FUNC5(mii);
	ifm = &mii->mii_media;
	if (FUNC0(sc)) {
		if (FUNC3(ifm->ifm_media) == IFM_HPNA_1) {
			ifmr->ifm_active = ifm->ifm_media;
			ifmr->ifm_status = 0;
			FUNC2(sc);
			return;
		}
	}
	ifmr->ifm_active = mii->mii_media_active;
	ifmr->ifm_status = mii->mii_media_status;
	FUNC2(sc);
}