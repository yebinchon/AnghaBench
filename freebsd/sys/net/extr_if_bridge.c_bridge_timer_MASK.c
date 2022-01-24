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
struct bridge_softc {int /*<<< orphan*/  sc_brcallout; TYPE_1__* sc_ifp; } ;
struct TYPE_2__ {int if_drv_flags; int /*<<< orphan*/  if_vnet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bridge_softc*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int IFF_DRV_RUNNING ; 
 int bridge_rtable_prune_period ; 
 int /*<<< orphan*/  FUNC3 (struct bridge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,void (*) (void*),struct bridge_softc*) ; 
 int hz ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct bridge_softc *sc = arg;

	FUNC0(sc);

	/* Destruction of rtnodes requires a proper vnet context */
	FUNC2(sc->sc_ifp->if_vnet);
	FUNC3(sc);

	if (sc->sc_ifp->if_drv_flags & IFF_DRV_RUNNING)
		FUNC4(&sc->sc_brcallout,
		    bridge_rtable_prune_period * hz, bridge_timer, sc);
	FUNC1();
}