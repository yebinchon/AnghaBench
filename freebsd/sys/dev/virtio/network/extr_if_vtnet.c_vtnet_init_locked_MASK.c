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
struct vtnet_softc {int /*<<< orphan*/  vtnet_tick_ch; struct ifnet* vtnet_ifp; int /*<<< orphan*/  vtnet_dev; } ;
struct ifnet {int if_drv_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vtnet_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  vtnet_tick ; 
 int /*<<< orphan*/  FUNC5 (struct vtnet_softc*) ; 
 scalar_t__ FUNC6 (struct vtnet_softc*) ; 

__attribute__((used)) static void
FUNC7(struct vtnet_softc *sc)
{
	device_t dev;
	struct ifnet *ifp;

	dev = sc->vtnet_dev;
	ifp = sc->vtnet_ifp;

	FUNC0(sc);

	if (ifp->if_drv_flags & IFF_DRV_RUNNING)
		return;

	FUNC4(sc);

	/* Reinitialize with the host. */
	if (FUNC6(sc) != 0)
		goto fail;

	if (FUNC3(sc) != 0)
		goto fail;

	FUNC2(dev);

	FUNC5(sc);
	FUNC1(&sc->vtnet_tick_ch, hz, vtnet_tick, sc);

	return;

fail:
	FUNC4(sc);
}