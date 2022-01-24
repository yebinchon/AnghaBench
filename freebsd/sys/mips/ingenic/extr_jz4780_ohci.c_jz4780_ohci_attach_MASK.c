#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dma_bits; int /*<<< orphan*/ * bdev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; void* parent; } ;
struct TYPE_5__ {TYPE_1__ sc_bus; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; int /*<<< orphan*/  sc_vendor; int /*<<< orphan*/  sc_intr_hdl; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/ * sc_io_res; int /*<<< orphan*/  sc_io_size; void* sc_dev; int /*<<< orphan*/  sc_devices; } ;
struct jz4780_ohci_softc {TYPE_2__ sc_ohci; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  void* device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  OHCI_CONTROL ; 
 int /*<<< orphan*/  OHCI_MAX_DEVICES ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (void*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct jz4780_ohci_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (void*,char*,int) ; 
 struct jz4780_ohci_softc* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 scalar_t__ FUNC11 () ; 
 int FUNC12 (void*,struct jz4780_ohci_softc*) ; 
 int FUNC13 (TYPE_2__*) ; 
 scalar_t__ ohci_interrupt ; 
 int /*<<< orphan*/  ohci_iterate_hw_softc ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	struct jz4780_ohci_softc *sc = FUNC5(dev);
	int err;
	int rid;

	/* initialize some bus fields */
	sc->sc_ohci.sc_bus.parent = dev;
	sc->sc_ohci.sc_bus.devices = sc->sc_ohci.sc_devices;
	sc->sc_ohci.sc_bus.devices_max = OHCI_MAX_DEVICES;
	sc->sc_ohci.sc_bus.dma_bits = 32;

	/* get all DMA memory */
	if (FUNC18(&sc->sc_ohci.sc_bus,
	    FUNC0(dev), &ohci_iterate_hw_softc)) {
		return (ENOMEM);
	}

	sc->sc_ohci.sc_dev = dev;

	/* frob vbus gpio */
	err = FUNC12(dev, sc);
	if (err)
		goto error;

	err = FUNC9(dev);
	if (err)
		goto error;

	rid = 0;
	sc->sc_ohci.sc_io_res = FUNC1(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->sc_ohci.sc_io_res == NULL) {
		err = ENOMEM;
		goto error;
	}
	sc->sc_ohci.sc_io_tag = FUNC15(sc->sc_ohci.sc_io_res);
	sc->sc_ohci.sc_io_hdl = FUNC14(sc->sc_ohci.sc_io_res);
	sc->sc_ohci.sc_io_size = FUNC16(sc->sc_ohci.sc_io_res);

	rid = 0;
	sc->sc_ohci.sc_irq_res = FUNC1(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (sc->sc_ohci.sc_irq_res == NULL) {
		err = ENOMEM;
		goto error;
	}

	if (FUNC11() != 0) {
		FUNC6(dev, "CGU failed to enable OHCI\n");
		err = ENXIO;
		goto error;
	}

	sc->sc_ohci.sc_bus.bdev = FUNC4(dev, "usbus", -1);
	if (sc->sc_ohci.sc_bus.bdev == NULL) {
		err = ENOMEM;
		goto error;
	}
	FUNC8(sc->sc_ohci.sc_bus.bdev, &sc->sc_ohci.sc_bus);

	err = FUNC2(dev, sc->sc_ohci.sc_irq_res,
	    INTR_TYPE_BIO | INTR_MPSAFE, NULL,
	    (driver_intr_t *)ohci_interrupt, sc, &sc->sc_ohci.sc_intr_hdl);
	if (err) {
		err = ENXIO;
		goto error;
	}

	FUNC17(sc->sc_ohci.sc_vendor, "Ingenic", sizeof(sc->sc_ohci.sc_vendor));
	FUNC3(sc->sc_ohci.sc_io_tag, sc->sc_ohci.sc_io_hdl, OHCI_CONTROL, 0);

	err = FUNC13(&sc->sc_ohci);
	if (!err)
		err = FUNC7(sc->sc_ohci.sc_bus.bdev);

	if (err)
		goto error;
	return (0);

error:
	if (err)
		FUNC10(dev);
	return (err);
}