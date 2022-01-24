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
struct TYPE_2__ {int /*<<< orphan*/  bdev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; int /*<<< orphan*/  parent; } ;
struct xhci_softc {TYPE_1__ sc_bus; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_vendor; void* sc_io_res; int /*<<< orphan*/  sc_io_size; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; int /*<<< orphan*/  sc_devices; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  XHCI_HC_DEVSTR ; 
 int /*<<< orphan*/  XHCI_MAX_DEVICES ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct xhci_softc*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct xhci_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int FUNC14 (struct xhci_softc*) ; 
 int FUNC15 (struct xhci_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ xhci_interrupt ; 
 int FUNC16 (struct xhci_softc*) ; 

__attribute__((used)) static int
FUNC17(device_t self)
{
	struct xhci_softc *sc = FUNC3(self);
	int err;
	int rid;

	/* initialise some bus fields */
	sc->sc_bus.parent = self;
	sc->sc_bus.devices = sc->sc_devices;
	sc->sc_bus.devices_max = XHCI_MAX_DEVICES;

	rid = 0;
	sc->sc_io_res = FUNC0(self, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->sc_io_res) {
		FUNC4(self, "Could not map memory\n");
		goto error;
	}
	sc->sc_io_tag = FUNC11(sc->sc_io_res);
	sc->sc_io_hdl = FUNC10(sc->sc_io_res);
	sc->sc_io_size = FUNC12(sc->sc_io_res);

	FUNC9(self);

	rid = 0;
	sc->sc_irq_res = FUNC0(self, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE);
	if (sc->sc_irq_res == NULL) {
		FUNC4(self, "Could not allocate irq\n");
		goto error;
	}

	sc->sc_bus.bdev = FUNC2(self, "usbus", -1);
	if (!(sc->sc_bus.bdev)) {
		FUNC4(self, "Could not add USB device\n");
		goto error;
	}
	FUNC7(sc->sc_bus.bdev, &sc->sc_bus);
	FUNC6(sc->sc_bus.bdev, XHCI_HC_DEVSTR);

	FUNC13(sc->sc_vendor, "Mediatek");

	err = FUNC1(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, (driver_intr_t *)xhci_interrupt, sc, &sc->sc_intr_hdl);
	if (err) {
		FUNC4(self, "Could not setup irq, %d\n", err);
		sc->sc_intr_hdl = NULL;
		goto error;
	}

	err = FUNC15(sc, self, 1);
	if (err == 0)
		err = FUNC14(sc);
	if (err == 0)
		err = FUNC16(sc);
	if (err == 0)
		err = FUNC5(sc->sc_bus.bdev);
	if (err) {
		FUNC4(self, "USB init failed err=%d\n", err);
		goto error;
	}
	return (0);

error:
	FUNC8(self);
	return (ENXIO);
}