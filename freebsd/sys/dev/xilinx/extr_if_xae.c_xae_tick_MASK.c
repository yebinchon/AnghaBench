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
struct xae_softc {int link_is_up; int /*<<< orphan*/  xae_callout; struct ifnet* ifp; int /*<<< orphan*/  mii_softc; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct xae_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct xae_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xae_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct xae_softc *sc;
	struct ifnet *ifp;
	int link_was_up;

	sc = arg;

	FUNC0(sc);

	ifp = sc->ifp;

	if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
		return;

	/* Gather stats from hardware counters. */
	FUNC3(sc);

	/* Check the media status. */
	link_was_up = sc->link_is_up;
	FUNC2(sc->mii_softc);
	if (sc->link_is_up && !link_was_up)
		FUNC4(sc->ifp);

	/* Schedule another check one second from now. */
	FUNC1(&sc->xae_callout, hz, xae_tick, sc);
}