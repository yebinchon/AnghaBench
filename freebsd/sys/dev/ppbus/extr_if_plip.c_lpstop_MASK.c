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
struct lp_data {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/ * sc_ifbuf; TYPE_1__* sc_ifp; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct lp_data *sc)
{
	device_t ppbus = FUNC0(sc->sc_dev);

	FUNC2(ppbus);
	FUNC4(ppbus, 0x00);
	sc->sc_ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
	FUNC1(sc->sc_ifbuf, M_DEVBUF);
	sc->sc_ifbuf = NULL;

	/* IFF_UP is not set, try to release the bus anyway */
	FUNC3(ppbus, sc->sc_dev);
}