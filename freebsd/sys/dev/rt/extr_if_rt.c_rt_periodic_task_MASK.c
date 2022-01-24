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
struct rt_softc {int periodic_round; int /*<<< orphan*/  periodic_ch; struct ifnet* ifp; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  RT_DEBUG_PERIODIC ; 
 int /*<<< orphan*/  FUNC0 (struct rt_softc*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct rt_softc*) ; 
 int hz ; 
 int /*<<< orphan*/  rt_periodic ; 
 int /*<<< orphan*/  FUNC4 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt_softc*) ; 

__attribute__((used)) static void
FUNC7(void *context, int pending)
{
	struct rt_softc *sc;
	struct ifnet *ifp;

	sc = context;
	ifp = sc->ifp;

	FUNC0(sc, RT_DEBUG_PERIODIC, "periodic task: round=%lu\n",
	    sc->periodic_round);

	if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
		return;

	FUNC1(sc);
	sc->periodic_round++;
	FUNC5(sc);

	if ((sc->periodic_round % 10) == 0) {
		FUNC4(sc);
		FUNC6(sc);
	}

	FUNC2(sc);
	FUNC3(&sc->periodic_ch, hz / 10, rt_periodic, sc);
}