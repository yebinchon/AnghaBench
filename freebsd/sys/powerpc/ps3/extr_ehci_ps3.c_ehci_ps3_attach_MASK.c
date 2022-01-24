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
struct TYPE_7__ {TYPE_2__ sc_bus; int /*<<< orphan*/  sc_vendor_post_reset; int /*<<< orphan*/  sc_intr_hdl; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_vendor; void* sc_io_res; int /*<<< orphan*/  sc_io_size; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; int /*<<< orphan*/  sc_devices; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
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
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 scalar_t__ ehci_interrupt ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 int /*<<< orphan*/  ehci_ps3_post_reset ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	ehci_softc_t *sc = FUNC4(dev);
	int rid, err;

	sc->sc_bus.parent = dev;
	sc->sc_bus.devices = sc->sc_devices;
	sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
	sc->sc_bus.dma_bits = 32;

	/* get all DMA memory */
	if (FUNC13(&sc->sc_bus,
	    FUNC0(dev), &ehci_iterate_hw_softc))
		return (ENOMEM);

	rid = 1;
	sc->sc_io_res = FUNC1(dev, SYS_RES_MEMORY,
	    &rid, RF_ACTIVE);

	if (!sc->sc_io_res) {
		FUNC5(dev, "Could not map memory\n");
		goto error;
	}

	sc->sc_io_tag = FUNC10(sc->sc_io_res);
	sc->sc_io_hdl = FUNC9(sc->sc_io_res);
	sc->sc_io_size = FUNC11(sc->sc_io_res);

	rid = 1;
	sc->sc_irq_res = FUNC1(dev, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE);

	if (sc->sc_irq_res == NULL) {
		FUNC5(dev, "Could not allocate irq\n");
		return (ENXIO);
	}

	sc->sc_bus.bdev = FUNC3(dev, "usbus", -1);
	if (!sc->sc_bus.bdev) {
		FUNC5(dev, "Could not add USB device\n");
		return (ENXIO);
	}

	FUNC7(sc->sc_bus.bdev, &sc->sc_bus);

	FUNC12(sc->sc_vendor, "Sony");

	err = FUNC2(dev, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, (driver_intr_t *)ehci_interrupt, sc, &sc->sc_intr_hdl);
	if (err) {
		FUNC5(dev, "Could not setup error irq, %d\n", err);
		goto error;
	}

	sc->sc_vendor_post_reset = ehci_ps3_post_reset;
	err = FUNC8(sc);
	if (err) {
		FUNC5(dev, "USB init failed err=%d\n", err);
		goto error;
	}

	err = FUNC6(sc->sc_bus.bdev);
	if (err == 0)
		return (0);

error:
	return (ENXIO);
}