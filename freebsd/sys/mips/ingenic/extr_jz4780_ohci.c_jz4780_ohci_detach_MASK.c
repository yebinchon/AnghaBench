#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ bdev; } ;
struct TYPE_4__ {TYPE_1__ sc_bus; scalar_t__ sc_io_hdl; scalar_t__ sc_io_tag; int /*<<< orphan*/ * sc_io_res; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/ * sc_intr_hdl; } ;
struct jz4780_ohci_softc {int /*<<< orphan*/  gpio_vbus; TYPE_2__ sc_ohci; int /*<<< orphan*/ * clk; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  OHCI_CONTROL ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 struct jz4780_ohci_softc* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  ohci_iterate_hw_softc ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct jz4780_ohci_softc *sc = FUNC7(dev);
	device_t bdev;

	if (sc->sc_ohci.sc_bus.bdev) {
		bdev = sc->sc_ohci.sc_bus.bdev;
		FUNC6(bdev);
		FUNC4(dev, bdev);
	}
	/* during module unload there are lots of children leftover */
	FUNC5(dev);

	/*
	 * Put the controller into reset, then disable clocks and do
	 * the MI tear down.  We have to disable the clocks/hardware
	 * after we do the rest of the teardown.  We also disable the
	 * clocks in the opposite order we acquire them, but that
	 * doesn't seem to be absolutely necessary.  We free up the
	 * clocks after we disable them, so the system could, in
	 * theory, reuse them.
	 */
	if (sc->sc_ohci.sc_io_res != NULL) {
		FUNC1(sc->sc_ohci.sc_io_tag, sc->sc_ohci.sc_io_hdl,
		    OHCI_CONTROL, 0);
	}

	if (sc->sc_ohci.sc_intr_hdl) {
		FUNC2(dev, sc->sc_ohci.sc_irq_res, sc->sc_ohci.sc_intr_hdl);
		sc->sc_ohci.sc_intr_hdl = NULL;
	}

	if (sc->sc_ohci.sc_irq_res && sc->sc_ohci.sc_intr_hdl) {
		/*
		 * only call ohci_detach() after ohci_init()
		 */
		FUNC9(&sc->sc_ohci);

		FUNC0(dev, SYS_RES_IRQ, 0, sc->sc_ohci.sc_irq_res);
		sc->sc_ohci.sc_irq_res = NULL;
	}
	if (sc->sc_ohci.sc_io_res) {
		FUNC0(dev, SYS_RES_MEMORY, 0, sc->sc_ohci.sc_io_res);
		sc->sc_ohci.sc_io_res = NULL;
		sc->sc_ohci.sc_io_tag = 0;
		sc->sc_ohci.sc_io_hdl = 0;
	}

	if (sc->clk != NULL)
		FUNC3(sc->clk);

	FUNC10(&sc->sc_ohci.sc_bus, &ohci_iterate_hw_softc);
	FUNC8(sc->gpio_vbus, M_DEVBUF);
	return (0);
}