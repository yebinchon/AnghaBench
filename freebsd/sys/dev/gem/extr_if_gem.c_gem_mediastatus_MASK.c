#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ifnet {int if_flags; struct gem_softc* if_softc; } ;
struct ifmediareq {int /*<<< orphan*/  ifm_status; int /*<<< orphan*/  ifm_active; } ;
struct gem_softc {TYPE_1__* sc_mii; } ;
struct TYPE_2__ {int /*<<< orphan*/  mii_media_status; int /*<<< orphan*/  mii_media_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gem_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct gem_softc*) ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3(struct ifnet *ifp, struct ifmediareq *ifmr)
{
	struct gem_softc *sc = ifp->if_softc;

	FUNC0(sc);
	if ((ifp->if_flags & IFF_UP) == 0) {
		FUNC1(sc);
		return;
	}

	FUNC2(sc->sc_mii);
	ifmr->ifm_active = sc->sc_mii->mii_media_active;
	ifmr->ifm_status = sc->sc_mii->mii_media_status;
	FUNC1(sc);
}