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
struct vtnet_softc {int /*<<< orphan*/  vtnet_tick_ch; scalar_t__ vtnet_link_active; struct ifnet* vtnet_ifp; int /*<<< orphan*/  vtnet_dev; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct vtnet_softc*) ; 

__attribute__((used)) static void
FUNC6(struct vtnet_softc *sc)
{
	device_t dev;
	struct ifnet *ifp;

	dev = sc->vtnet_dev;
	ifp = sc->vtnet_ifp;

	FUNC0(sc);

	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	sc->vtnet_link_active = 0;
	FUNC1(&sc->vtnet_tick_ch);

	/* Only advisory. */
	FUNC3(sc);

	/*
	 * Stop the host adapter. This resets it to the pre-initialized
	 * state. It will not generate any interrupts until after it is
	 * reinitialized.
	 */
	FUNC2(dev);
	FUNC5(sc);

	/* Free any mbufs left in the virtqueues. */
	FUNC4(sc);
}