#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ bdev; } ;
struct TYPE_5__ {TYPE_2__ sc_bus; int /*<<< orphan*/ * sc_io_res; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/ * sc_intr_hdl; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 TYPE_1__* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	ehci_softc_t *sc;
	device_t bdev;
	int err;

	sc = FUNC5(dev);

	if (sc->sc_bus.bdev) {
		bdev = sc->sc_bus.bdev;
		FUNC4(bdev);
		FUNC2(dev, bdev);
	}

	FUNC3(dev);

	if (sc->sc_irq_res && sc->sc_intr_hdl) {
		/* only call ehci_detach() after ehci_init() */
		FUNC7(sc);

		err = FUNC1(dev, sc->sc_irq_res, sc->sc_intr_hdl);
		if (err)
			FUNC6(dev, "Could not tear down irq, %d\n",
			    err);
		sc->sc_intr_hdl = NULL;
	}

	if (sc->sc_irq_res) {
		FUNC0(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
		sc->sc_irq_res = NULL;
	}
	if (sc->sc_io_res) {
		FUNC0(dev, SYS_RES_MEMORY, 0,
		    sc->sc_io_res);
		sc->sc_io_res = NULL;
	}

	FUNC8(&sc->sc_bus, &ehci_iterate_hw_softc);

	return (0);
}