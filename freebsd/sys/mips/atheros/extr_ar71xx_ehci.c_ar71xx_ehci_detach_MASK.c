#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sc_bus; int /*<<< orphan*/ * sc_io_res; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/ * sc_intr_hdl; } ;
struct ar71xx_ehci_softc {TYPE_1__ base; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ar71xx_ehci_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(device_t self)
{
	struct ar71xx_ehci_softc *isc = FUNC3(self);
	ehci_softc_t *sc = &isc->base;
	int err;

	/* during module unload there are lots of children leftover */
	FUNC2(self);

 	if (sc->sc_irq_res && sc->sc_intr_hdl) {
		/*
		 * only call ehci_detach() after ehci_init()
		 */
		FUNC5(sc);

		err = FUNC1(self, sc->sc_irq_res, sc->sc_intr_hdl);

		if (err)
			/* XXX or should we panic? */
			FUNC4(self, "Could not tear down irq, %d\n",
			    err);
		sc->sc_intr_hdl = NULL;
	}

 	if (sc->sc_irq_res) {
		FUNC0(self, SYS_RES_IRQ, 0, sc->sc_irq_res);
		sc->sc_irq_res = NULL;
	}
	if (sc->sc_io_res) {
		FUNC0(self, SYS_RES_MEMORY, 0,
		    sc->sc_io_res);
		sc->sc_io_res = NULL;
	}
	FUNC6(&sc->sc_bus, &ehci_iterate_hw_softc);

	return (0);
}