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
struct lance_softc {int sc_flags; int /*<<< orphan*/  (* sc_mediastatus ) (struct lance_softc*,struct ifmediareq*) ;} ;
struct ifnet {int if_flags; struct lance_softc* if_softc; } ;
struct ifmediareq {int /*<<< orphan*/  ifm_status; } ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  IFM_ACTIVE ; 
 int /*<<< orphan*/  IFM_AVALID ; 
 int LE_CARRIER ; 
 int /*<<< orphan*/  FUNC0 (struct lance_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct lance_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct lance_softc*,struct ifmediareq*) ; 

__attribute__((used)) static void
FUNC3(struct ifnet *ifp, struct ifmediareq *ifmr)
{
	struct lance_softc *sc = ifp->if_softc;

	FUNC0(sc);
	if (!(ifp->if_flags & IFF_UP)) {
		FUNC1(sc);
		return;
	}

	ifmr->ifm_status = IFM_AVALID;
	if (sc->sc_flags & LE_CARRIER)
		ifmr->ifm_status |= IFM_ACTIVE;

	if (sc->sc_mediastatus)
		(*sc->sc_mediastatus)(sc, ifmr);
	FUNC1(sc);
}