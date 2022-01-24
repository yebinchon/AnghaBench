#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_9__ {int dma_bits; int /*<<< orphan*/  bdev; int /*<<< orphan*/  usbrev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; int /*<<< orphan*/  parent; } ;
struct TYPE_8__ {TYPE_2__ sc_bus; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_vendor; void* sc_io_res; int /*<<< orphan*/  sc_io_size; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; int /*<<< orphan*/  sc_devices; } ;
struct jz4780_ehci_softc {TYPE_1__ base; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_HC_DEVSTR ; 
 int /*<<< orphan*/  EHCI_MAX_DEVICES ; 
 int /*<<< orphan*/  EHCI_USBINTR ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  JZ_EHCI_REG_UTMI_BUS ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_REV_2_0 ; 
 int /*<<< orphan*/  UTMI_BUS_WIDTH ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 struct jz4780_ehci_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  jz4780_ehci_intr ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC20 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC21(device_t dev)
{
	struct jz4780_ehci_softc *isc;
	ehci_softc_t *sc;
	int err;
	int rid;
	uint32_t reg;

	isc = FUNC6(dev);
	sc = &isc->base;

	/* initialise some bus fields */
	sc->sc_bus.parent = dev;
	sc->sc_bus.devices = sc->sc_devices;
	sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
	sc->sc_bus.dma_bits = 32;

	/* get all DMA memory */
	if (FUNC20(&sc->sc_bus,
	    FUNC2(dev), &ehci_iterate_hw_softc)) {
		return (ENOMEM);
	}

	sc->sc_bus.usbrev = USB_REV_2_0;

	err = FUNC15(dev);
	if (err)
		goto error;

	rid = 0;
	sc->sc_io_res = FUNC3(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (!sc->sc_io_res) {
		FUNC7(dev, "Could not map memory\n");
		goto error;
	}

	/*
	 * Craft special resource for bus space ops that handle
	 * byte-alignment of non-word addresses.
	 */
	sc->sc_io_tag = FUNC17(sc->sc_io_res);
	sc->sc_io_hdl = FUNC16(sc->sc_io_res);
	sc->sc_io_size = FUNC18(sc->sc_io_res);

	err = FUNC12(dev);
	if (err)
		goto error;

	if (FUNC14() != 0) {
		FUNC7(dev, "CGU failed to enable EHCI\n");
		err = ENXIO;
		goto error;
	}

	FUNC1(sc, EHCI_USBINTR, 0);

	rid = 0;
	sc->sc_irq_res = FUNC3(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (sc->sc_irq_res == NULL) {
		FUNC7(dev, "Could not allocate irq\n");
		goto error;
	}
	sc->sc_bus.bdev = FUNC5(dev, "usbus", -1);
	if (!sc->sc_bus.bdev) {
		FUNC7(dev, "Could not add USB device\n");
		goto error;
	}
	FUNC10(sc->sc_bus.bdev, &sc->sc_bus);
	FUNC9(sc->sc_bus.bdev, EHCI_HC_DEVSTR);

	FUNC19(sc->sc_vendor, "Ingenic");

	err = FUNC4(dev, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, jz4780_ehci_intr, sc, &sc->sc_intr_hdl);
	if (err) {
		FUNC7(dev, "Could not setup irq, %d\n", err);
		sc->sc_intr_hdl = NULL;
		goto error;
	}

	err = FUNC11(sc);
	if (!err) {
		/* Voodoo: set utmi data bus width on controller to 16 bit */
		reg = FUNC0(sc, JZ_EHCI_REG_UTMI_BUS);
		reg |= UTMI_BUS_WIDTH;
		FUNC1(sc, JZ_EHCI_REG_UTMI_BUS, reg);

		err = FUNC8(sc->sc_bus.bdev);
	}
	if (err) {
		FUNC7(dev, "USB init failed err=%d\n", err);
		goto error;
	}
	return (0);

error:
	FUNC13(dev);
	return (ENXIO);
}