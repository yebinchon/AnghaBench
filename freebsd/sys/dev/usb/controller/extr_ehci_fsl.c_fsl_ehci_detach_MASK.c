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
struct TYPE_5__ {int /*<<< orphan*/ * bdev; } ;
struct TYPE_6__ {int sc_flags; scalar_t__ sc_io_hdl; scalar_t__ sc_io_tag; int /*<<< orphan*/ * sc_io_res; int /*<<< orphan*/ * sc_irq_res; TYPE_1__ sc_bus; int /*<<< orphan*/ * sc_intr_hdl; } ;
typedef  TYPE_2__ ehci_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EHCI_SCFLG_DONEINIT ; 
 int /*<<< orphan*/  EHCI_USBINTR ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC8(device_t self)
{

	int err;
	ehci_softc_t *sc;

	sc = FUNC5(self);
	/*
	 * only call ehci_detach() after ehci_init()
	 */
	if (sc->sc_flags & EHCI_SCFLG_DONEINIT) {
		FUNC7(sc);
		sc->sc_flags &= ~EHCI_SCFLG_DONEINIT;
	}

	/* Disable interrupts that might have been switched on in ehci_init */
	if (sc->sc_io_tag && sc->sc_io_hdl)
		FUNC1(sc->sc_io_tag, sc->sc_io_hdl, EHCI_USBINTR, 0);

	if (sc->sc_irq_res && sc->sc_intr_hdl) {
		err = FUNC2(self, sc->sc_irq_res, sc->sc_intr_hdl);
		if (err) {
			FUNC6(self, "Could not tear down irq, %d\n",
			    err);
			return (err);
		}
		sc->sc_intr_hdl = NULL;
	}

	if (sc->sc_bus.bdev) {
		FUNC3(self, sc->sc_bus.bdev);
		sc->sc_bus.bdev = NULL;
	}

	/* During module unload there are lots of children leftover */
	FUNC4(self);

	if (sc->sc_irq_res) {
		FUNC0(self, SYS_RES_IRQ, 0, sc->sc_irq_res);
		sc->sc_irq_res = NULL;
	}

	if (sc->sc_io_res) {
		FUNC0(self, SYS_RES_MEMORY, 0, sc->sc_io_res);
		sc->sc_io_res = NULL;
		sc->sc_io_tag = 0;
		sc->sc_io_hdl = 0;
	}

	return (0);
}