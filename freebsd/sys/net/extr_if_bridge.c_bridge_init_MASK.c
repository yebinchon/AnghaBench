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
struct ifnet {int if_drv_flags; } ;
struct bridge_softc {int /*<<< orphan*/  sc_stp; int /*<<< orphan*/  sc_brcallout; struct ifnet* sc_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bridge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bridge_softc*) ; 
 int IFF_DRV_RUNNING ; 
 int bridge_rtable_prune_period ; 
 int /*<<< orphan*/  bridge_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct bridge_softc*) ; 
 int hz ; 

__attribute__((used)) static void
FUNC4(void *xsc)
{
	struct bridge_softc *sc = (struct bridge_softc *)xsc;
	struct ifnet *ifp = sc->sc_ifp;

	if (ifp->if_drv_flags & IFF_DRV_RUNNING)
		return;

	FUNC0(sc);
	FUNC3(&sc->sc_brcallout, bridge_rtable_prune_period * hz,
	    bridge_timer, sc);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	FUNC2(&sc->sc_stp);		/* Initialize Spanning Tree */

	FUNC1(sc);
}