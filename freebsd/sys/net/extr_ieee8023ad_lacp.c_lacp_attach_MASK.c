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
struct lagg_softc {TYPE_1__* sc_ifp; struct lacp_softc* sc_psc; } ;
struct lacp_softc {int /*<<< orphan*/  lsc_mtx; int /*<<< orphan*/  lsc_callout; int /*<<< orphan*/  lsc_transit_callout; int /*<<< orphan*/  lsc_ports; int /*<<< orphan*/  lsc_aggregators; int /*<<< orphan*/  lsc_strict_mode; int /*<<< orphan*/ * lsc_active_aggregator; int /*<<< orphan*/  lsc_hashkey; struct lagg_softc* lsc_softc; } ;
struct TYPE_2__ {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct lacp_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lacp_default_strict_mode ; 
 int /*<<< orphan*/  FUNC5 (struct lagg_softc*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct lacp_softc* FUNC7 (int,int /*<<< orphan*/ ,int) ; 

void
FUNC8(struct lagg_softc *sc)
{
	struct lacp_softc *lsc;

	lsc = FUNC7(sizeof(struct lacp_softc), M_DEVBUF, M_WAITOK | M_ZERO);

	sc->sc_psc = lsc;
	lsc->lsc_softc = sc;

	lsc->lsc_hashkey = FUNC6();
	lsc->lsc_active_aggregator = NULL;
	lsc->lsc_strict_mode = FUNC3(lacp_default_strict_mode);
	FUNC0(lsc);
	FUNC2(&lsc->lsc_aggregators);
	FUNC1(&lsc->lsc_ports);

	FUNC4(&lsc->lsc_transit_callout, &lsc->lsc_mtx, 0);
	FUNC4(&lsc->lsc_callout, &lsc->lsc_mtx, 0);

	/* if the lagg is already up then do the same */
	if (sc->sc_ifp->if_drv_flags & IFF_DRV_RUNNING)
		FUNC5(sc);
}