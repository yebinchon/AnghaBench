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
struct TYPE_8__ {int dma_bits; int /*<<< orphan*/  bdev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; void* parent; } ;
struct TYPE_7__ {TYPE_2__ sc_bus; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_vendor; void* sc_io_res; int /*<<< orphan*/  sc_io_size; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; void* sc_dev; int /*<<< orphan*/  sc_devices; } ;
typedef  TYPE_1__ ohci_softc_t ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  void* device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  OHCI_MAX_DEVICES ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (void*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (void*,char*,int) ; 
 TYPE_1__* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*,char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 scalar_t__ ohci_interrupt ; 
 int /*<<< orphan*/  ohci_iterate_hw_softc ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(device_t self)
{
	ohci_softc_t	*sc;
	int		 rid;
	int		 err;

	sc = FUNC5(self);
	/* initialise some bus fields */
	sc->sc_bus.parent = self;
	sc->sc_bus.devices = sc->sc_devices;
	sc->sc_bus.devices_max = OHCI_MAX_DEVICES;
	sc->sc_bus.dma_bits = 32;

	/* get all DMA memory */
	if (FUNC14(&sc->sc_bus, FUNC0(self),
	    &ohci_iterate_hw_softc)) {
		return (ENOMEM);
	}
	sc->sc_dev = self;

	rid = 0;
	sc->sc_io_res = FUNC2(self, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->sc_io_res) {
		FUNC6(self, "Could not map memory\n");
		goto error;
	}
	sc->sc_io_tag = FUNC11(sc->sc_io_res);
	sc->sc_io_hdl = FUNC10(sc->sc_io_res);
	sc->sc_io_size = FUNC12(sc->sc_io_res);

	rid = 0;
	sc->sc_irq_res = FUNC2(self, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE);
	if (sc->sc_irq_res == NULL) {
		FUNC6(self, "Could not allocate irq\n");
		goto error;
	}
	sc->sc_bus.bdev = FUNC4(self, "usbus", -1);
	if (!sc->sc_bus.bdev) {
		FUNC6(self, "Could not add USB device\n");
		goto error;
	}
	FUNC8(sc->sc_bus.bdev, &sc->sc_bus);

	FUNC13(sc->sc_vendor, "Broadcom", sizeof(sc->sc_vendor));

	err = FUNC3(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, (driver_intr_t *)ohci_interrupt, sc, &sc->sc_intr_hdl);

	if (err) {
		FUNC6(self, "Could not setup irq, %d\n", err);
		sc->sc_intr_hdl = NULL;
		goto error;
	}
	err = FUNC9(sc);
	if (!err) {
		err = FUNC7(sc->sc_bus.bdev);
	}
	if (err) {
		FUNC6(self, "USB init failed\n");
		goto error;
	}
	return (0);

error:
	FUNC1(self);
	return (ENXIO);
}