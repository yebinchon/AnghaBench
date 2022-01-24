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
struct TYPE_2__ {int /*<<< orphan*/  sc_bus; scalar_t__ sc_io_hdl; scalar_t__ sc_io_tag; int /*<<< orphan*/ * sc_io_res; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/ * sc_intr_hdl; } ;
struct ar71xx_ohci_softc {TYPE_1__ sc_ohci; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  OHCI_CONTROL ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ar71xx_ohci_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  ohci_iterate_hw_softc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct ar71xx_ohci_softc *sc = FUNC4(dev);

	/* during module unload there are lots of children leftover */
	FUNC3(dev);

	/*
	 * Put the controller into reset, then disable clocks and do
	 * the MI tear down.  We have to disable the clocks/hardware
	 * after we do the rest of the teardown.  We also disable the
	 * clocks in the opposite order we acquire them, but that
	 * doesn't seem to be absolutely necessary.  We free up the
	 * clocks after we disable them, so the system could, in
	 * theory, reuse them.
	 */
	FUNC1(sc->sc_ohci.sc_io_tag, sc->sc_ohci.sc_io_hdl,
	    OHCI_CONTROL, 0);

	if (sc->sc_ohci.sc_intr_hdl) {
		FUNC2(dev, sc->sc_ohci.sc_irq_res, sc->sc_ohci.sc_intr_hdl);
		sc->sc_ohci.sc_intr_hdl = NULL;
	}

	if (sc->sc_ohci.sc_irq_res && sc->sc_ohci.sc_intr_hdl) {
		/*
		 * only call ohci_detach() after ohci_init()
		 */
		FUNC5(&sc->sc_ohci);

		FUNC0(dev, SYS_RES_IRQ, 0, sc->sc_ohci.sc_irq_res);
		sc->sc_ohci.sc_irq_res = NULL;
	}
	if (sc->sc_ohci.sc_io_res) {
		FUNC0(dev, SYS_RES_MEMORY, 0, sc->sc_ohci.sc_io_res);
		sc->sc_ohci.sc_io_res = NULL;
		sc->sc_ohci.sc_io_tag = 0;
		sc->sc_ohci.sc_io_hdl = 0;
	}
	FUNC6(&sc->sc_ohci.sc_bus, &ohci_iterate_hw_softc);

	return (0);
}