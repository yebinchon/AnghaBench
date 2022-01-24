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
struct ti_softc {int /*<<< orphan*/  ti_dev; TYPE_1__* ti_ifp; } ;
struct TYPE_2__ {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct ti_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_softc*) ; 

__attribute__((used)) static void
FUNC3(void *xsc)
{
	struct ti_softc *sc = xsc;

	if (sc->ti_ifp->if_drv_flags & IFF_DRV_RUNNING)
		return;

	/* Cancel pending I/O and flush buffers. */
	FUNC2(sc);

	/* Init the gen info block, ring control blocks and firmware. */
	if (FUNC1(sc)) {
		FUNC0(sc->ti_dev, "initialization failure\n");
		return;
	}
}