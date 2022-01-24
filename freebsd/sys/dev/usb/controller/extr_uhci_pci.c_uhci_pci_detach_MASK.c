#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sc_bus; int /*<<< orphan*/ * sc_io_res; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/ * sc_intr_hdl; } ;
typedef  TYPE_1__ uhci_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_UHCI_BASE_REG ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uhci_iterate_hw_softc ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC10(device_t self)
{
	uhci_softc_t *sc = FUNC5(self);

	/* during module unload there are lots of children leftover */
	FUNC4(self);

	/*
	 * disable interrupts that might have been switched on in
	 * uhci_init.
	 */
	if (sc->sc_io_res) {
		FUNC0(&sc->sc_bus);

		/* stop the controller */
		FUNC8(sc);

		FUNC1(&sc->sc_bus);
	}
	FUNC7(self);

	if (sc->sc_irq_res && sc->sc_intr_hdl) {
		int err = FUNC3(self, sc->sc_irq_res, sc->sc_intr_hdl);

		if (err) {
			/* XXX or should we panic? */
			FUNC6(self, "Could not tear down irq, %d\n",
			    err);
		}
		sc->sc_intr_hdl = NULL;
	}
	if (sc->sc_irq_res) {
		FUNC2(self, SYS_RES_IRQ, 0, sc->sc_irq_res);
		sc->sc_irq_res = NULL;
	}
	if (sc->sc_io_res) {
		FUNC2(self, SYS_RES_IOPORT, PCI_UHCI_BASE_REG,
		    sc->sc_io_res);
		sc->sc_io_res = NULL;
	}
	FUNC9(&sc->sc_bus, &uhci_iterate_hw_softc);

	return (0);
}