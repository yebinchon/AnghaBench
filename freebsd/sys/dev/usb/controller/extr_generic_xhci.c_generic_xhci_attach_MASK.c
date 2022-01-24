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
struct TYPE_2__ {int /*<<< orphan*/ * bdev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; int /*<<< orphan*/  parent; } ;
struct xhci_softc {TYPE_1__ sc_bus; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_vendor; int /*<<< orphan*/ * sc_io_res; int /*<<< orphan*/  sc_io_size; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; int /*<<< orphan*/  sc_devices; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  IS_DMA_32B ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  XHCI_HC_DEVSTR ; 
 char* XHCI_HC_VENDOR ; 
 int /*<<< orphan*/  XHCI_MAX_DEVICES ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct xhci_softc*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct xhci_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int FUNC13 (struct xhci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ xhci_interrupt ; 
 int FUNC14 (struct xhci_softc*) ; 

int
FUNC15(device_t dev)
{
	struct xhci_softc *sc = FUNC3(dev);
	int err = 0, rid = 0;

	sc->sc_bus.parent = dev;
	sc->sc_bus.devices = sc->sc_devices;
	sc->sc_bus.devices_max = XHCI_MAX_DEVICES;

	sc->sc_io_res = FUNC0(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->sc_io_res == NULL) {
		FUNC4(dev, "Failed to map memory\n");
		FUNC8(dev);
		return (ENXIO);
	}

	sc->sc_io_tag = FUNC10(sc->sc_io_res);
	sc->sc_io_hdl = FUNC9(sc->sc_io_res);
	sc->sc_io_size = FUNC11(sc->sc_io_res);

	sc->sc_irq_res = FUNC0(dev, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE);
	if (sc->sc_irq_res == NULL) {
		FUNC4(dev, "Failed to allocate IRQ\n");
		FUNC8(dev);
		return (ENXIO);
	}

	sc->sc_bus.bdev = FUNC2(dev, "usbus", -1);
	if (sc->sc_bus.bdev == NULL) {
		FUNC4(dev, "Failed to add USB device\n");
		FUNC8(dev);
		return (ENXIO);
	}

	FUNC7(sc->sc_bus.bdev, &sc->sc_bus);

	FUNC12(sc->sc_vendor, XHCI_HC_VENDOR);
	FUNC6(sc->sc_bus.bdev, XHCI_HC_DEVSTR);

	err = FUNC1(dev, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, (driver_intr_t *)xhci_interrupt, sc, &sc->sc_intr_hdl);
	if (err != 0) {
		FUNC4(dev, "Failed to setup error IRQ, %d\n", err);
		sc->sc_intr_hdl = NULL;
		FUNC8(dev);
		return (err);
	}

	err = FUNC13(sc, dev, IS_DMA_32B);
	if (err != 0) {
		FUNC4(dev, "Failed to init XHCI, with error %d\n", err);
		FUNC8(dev);
		return (ENXIO);
	}

	err = FUNC14(sc);
	if (err != 0) {
		FUNC4(dev, "Failed to start XHCI controller, with error %d\n", err);
		FUNC8(dev);
		return (ENXIO);
	}

	err = FUNC5(sc->sc_bus.bdev);
	if (err != 0) {
		FUNC4(dev, "Failed to initialize USB, with error %d\n", err);
		FUNC8(dev);
		return (ENXIO);
	}

	return (0);
}