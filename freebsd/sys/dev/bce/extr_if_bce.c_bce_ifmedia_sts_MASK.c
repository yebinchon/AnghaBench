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
struct mii_data {int /*<<< orphan*/  mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct ifnet {int if_flags; struct bce_softc* if_softc; } ;
struct ifmediareq {int /*<<< orphan*/  ifm_status; int /*<<< orphan*/  ifm_active; } ;
struct bce_softc {int bce_phy_flags; int /*<<< orphan*/  bce_miibus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bce_softc*) ; 
 int BCE_PHY_REMOTE_CAP_FLAG ; 
 int /*<<< orphan*/  FUNC1 (struct bce_softc*) ; 
 int /*<<< orphan*/  BCE_VERBOSE_PHY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC4 (struct bce_softc*,struct ifmediareq*) ; 
 struct mii_data* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC7(struct ifnet *ifp, struct ifmediareq *ifmr)
{
	struct bce_softc *sc = ifp->if_softc;
	struct mii_data *mii;

	FUNC2(BCE_VERBOSE_PHY);

	FUNC0(sc);

	if ((ifp->if_flags & IFF_UP) == 0) {
		FUNC1(sc);
		return;
	}

	if ((sc->bce_phy_flags & BCE_PHY_REMOTE_CAP_FLAG) != 0)
		FUNC4(sc, ifmr);
	else {
		mii = FUNC5(sc->bce_miibus);
		FUNC6(mii);
		ifmr->ifm_active = mii->mii_media_active;
		ifmr->ifm_status = mii->mii_media_status;
	}

	FUNC1(sc);

	FUNC3(BCE_VERBOSE_PHY);
}