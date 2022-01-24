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
struct TYPE_8__ {int dma_bits; int /*<<< orphan*/  bdev; int /*<<< orphan*/  usbrev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {TYPE_2__ sc_bus; int /*<<< orphan*/  sc_vendor_post_reset; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_vendor; void* sc_io_res; int /*<<< orphan*/  sc_io_size; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; int /*<<< orphan*/  sc_devices; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  EHCI_HC_DEVSTR ; 
 int /*<<< orphan*/  EHCI_MAX_DEVICES ; 
 int /*<<< orphan*/  EHCI_SCFLG_LOSTINTRBUG ; 
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_REV_2_0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bhnd_ehci_post_reset ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC10 (TYPE_1__*) ; 
 scalar_t__ ehci_interrupt ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(device_t self)
{
	ehci_softc_t	*sc;
	int		 err;
	int		 rid;

	sc = FUNC6(self);
	/* initialise some bus fields */
	sc->sc_bus.parent = self;
	sc->sc_bus.devices = sc->sc_devices;
	sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
	sc->sc_bus.usbrev = USB_REV_2_0;
	sc->sc_bus.dma_bits = 32;

	/* get all DMA memory */
	if ((err = FUNC15(&sc->sc_bus, FUNC1(self),
	    &ehci_iterate_hw_softc)) != 0) {
		FUNC0(self, "can't allocate DMA memory: %d", err);
		return (ENOMEM);
	}

	rid = 0;
	sc->sc_io_res = FUNC3(self, SYS_RES_MEMORY, &rid, 
	    RF_ACTIVE);
	if (!sc->sc_io_res) {
		FUNC0(self, "Could not map memory");
		goto error;
	}
	sc->sc_io_tag = FUNC12(sc->sc_io_res);
	sc->sc_io_hdl = FUNC11(sc->sc_io_res);
	sc->sc_io_size = FUNC13(sc->sc_io_res);

	rid = 0;
	sc->sc_irq_res = FUNC3(self, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE);

	if (sc->sc_irq_res == NULL) {
		FUNC0(self, "Could not allocate error irq");
		FUNC2(self);
		return (ENXIO);
	}

	sc->sc_bus.bdev = FUNC5(self, "usbus", -1);
	if (!sc->sc_bus.bdev) {
		FUNC0(self, "Could not add USB device");
		goto error;
	}
	FUNC9(sc->sc_bus.bdev, &sc->sc_bus);
	FUNC8(sc->sc_bus.bdev, EHCI_HC_DEVSTR);

 	FUNC14(sc->sc_vendor, "Broadcom");

	err = FUNC4(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, (driver_intr_t *)ehci_interrupt, sc, &sc->sc_intr_hdl);
	if (err) {
		FUNC0(self, "Could not setup irq, %d", err);
		sc->sc_intr_hdl = NULL;
		goto error;
	}

	sc->sc_flags |= EHCI_SCFLG_LOSTINTRBUG;
	sc->sc_vendor_post_reset = bhnd_ehci_post_reset;

	err = FUNC10(sc);
	if (!err) {
		err = FUNC7(sc->sc_bus.bdev);
	}
	if (err) {
		FUNC0(self, "USB init failed err=%d", err);
		goto error;
	}
	return (0);

error:
	FUNC2(self);
	return (ENXIO);
}