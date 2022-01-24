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
struct vtnet_softc {int vtnet_act_vq_pairs; int /*<<< orphan*/  vtnet_tick_ch; int /*<<< orphan*/ * vtnet_txqs; struct ifnet* vtnet_ifp; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (struct vtnet_softc*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *xsc)
{
	struct vtnet_softc *sc;
	struct ifnet *ifp;
	int i, timedout;

	sc = xsc;
	ifp = sc->vtnet_ifp;
	timedout = 0;

	FUNC0(sc);

	for (i = 0; i < sc->vtnet_act_vq_pairs; i++)
		timedout |= FUNC3(&sc->vtnet_txqs[i]);

	if (timedout != 0) {
		ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC2(sc);
	} else
		FUNC1(&sc->vtnet_tick_ch, hz);
}