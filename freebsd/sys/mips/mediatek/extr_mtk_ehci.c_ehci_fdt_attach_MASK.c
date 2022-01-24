#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int dma_bits; int /*<<< orphan*/  bdev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {TYPE_2__ sc_bus; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_vendor; void* sc_io_res; int /*<<< orphan*/  sc_io_size; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; int /*<<< orphan*/  sc_devices; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_HC_DEVSTR ; 
 int /*<<< orphan*/  EHCI_MAX_DEVICES ; 
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*) ; 
 scalar_t__ ehci_interrupt ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC17(device_t self)
{
	ehci_softc_t *sc = FUNC4(self);
	int err;
	int rid;

	/* initialise some bus fields */
	sc->sc_bus.parent = self;
	sc->sc_bus.devices = sc->sc_devices;
	sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
	sc->sc_bus.dma_bits = 32;

	/* get all DMA memory */
	if (FUNC16(&sc->sc_bus,
	    FUNC0(self), &ehci_iterate_hw_softc)) {
		FUNC11("No mem\n");
		return (ENOMEM);
	}

	rid = 0;
	sc->sc_io_res = FUNC1(self, SYS_RES_MEMORY, &rid,
				RF_ACTIVE);
	if (!sc->sc_io_res) {
		FUNC5(self, "Could not map memory\n");
		goto error;
	}
	sc->sc_io_tag = FUNC13(sc->sc_io_res);
	sc->sc_io_hdl = FUNC12(sc->sc_io_res);
	sc->sc_io_size = FUNC14(sc->sc_io_res);

	rid = 0;
	sc->sc_irq_res = FUNC1(self, SYS_RES_IRQ, &rid,
		RF_SHAREABLE | RF_ACTIVE);
	if (sc->sc_irq_res == NULL) {
		FUNC5(self, "Could not allocate irq\n");
		goto error;
	}

	sc->sc_bus.bdev = FUNC3(self, "usbus", -1);
	if (!(sc->sc_bus.bdev)) {
		FUNC5(self, "Could not add USB device\n");
		goto error;
	}
	FUNC8(sc->sc_bus.bdev, &sc->sc_bus);
	FUNC7(sc->sc_bus.bdev, EHCI_HC_DEVSTR);

	FUNC15(sc->sc_vendor, "MediaTek");

	err = FUNC2(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
		NULL, (driver_intr_t *)ehci_interrupt, sc, &sc->sc_intr_hdl);
	if (err) {
		FUNC5(self, "Could not setup irq, %d\n", err);
		sc->sc_intr_hdl = NULL;
		goto error;
	}

	err = FUNC10(sc);
	if (!err) {
		err = FUNC6(sc->sc_bus.bdev);
	}
	if (err) {
		FUNC5(self, "USB init failed err=%d\n", err);
		goto error;
	}
	return (0);

error:
	FUNC9(self);
	return (ENXIO);
}