#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sc_bus; int /*<<< orphan*/ * sc_io_res; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/ * sc_intr_hdl; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  USB_BRIDGE_INTR_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 int /*<<< orphan*/ * ih_err ; 
 int /*<<< orphan*/ * irq_err ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(device_t self)
{
	ehci_softc_t *sc = FUNC4(self);
	int err;

	/* during module unload there are lots of children leftover */
	FUNC3(self);

	/*
	 * disable interrupts that might have been switched on in mv_ehci_attach
	 */
	if (sc->sc_io_res) {
		FUNC0(sc, USB_BRIDGE_INTR_MASK, 0);
	}
	if (sc->sc_irq_res && sc->sc_intr_hdl) {
		/*
		 * only call ehci_detach() after ehci_init()
		 */
		FUNC6(sc);

		err = FUNC2(self, sc->sc_irq_res, sc->sc_intr_hdl);

		if (err)
			/* XXX or should we panic? */
			FUNC5(self, "Could not tear down irq, %d\n",
			    err);
		sc->sc_intr_hdl = NULL;
	}
	if (irq_err && ih_err) {
		err = FUNC2(self, irq_err, ih_err);

		if (err)
			FUNC5(self, "Could not tear down irq, %d\n",
			    err);
		ih_err = NULL;
	}
	if (irq_err) {
		FUNC1(self, SYS_RES_IRQ, 0, irq_err);
		irq_err = NULL;
	}
	if (sc->sc_irq_res) {
		FUNC1(self, SYS_RES_IRQ, 1, sc->sc_irq_res);
		sc->sc_irq_res = NULL;
	}
	if (sc->sc_io_res) {
		FUNC1(self, SYS_RES_MEMORY, 0,
		    sc->sc_io_res);
		sc->sc_io_res = NULL;
	}
	FUNC7(&sc->sc_bus, &ehci_iterate_hw_softc);

	return (0);
}