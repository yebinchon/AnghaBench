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
struct ar71xx_ohci_softc {TYPE_2__ sc_ohci; } ;
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
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  ar71xx_ohci_intr ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (void*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ar71xx_ohci_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (void*,char*,int) ; 
 struct ar71xx_ohci_softc* FUNC6 (void*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  ohci_iterate_hw_softc ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct ar71xx_ohci_softc *sc = FUNC6(dev);
	int err;
	int rid;

	/* initialise some bus fields */
	sc->sc_ohci.sc_bus.parent = dev;
	sc->sc_ohci.sc_bus.devices = sc->sc_ohci.sc_devices;
	sc->sc_ohci.sc_bus.devices_max = OHCI_MAX_DEVICES;
	sc->sc_ohci.sc_bus.dma_bits = 32;

	/* get all DMA memory */
	if (FUNC14(&sc->sc_ohci.sc_bus,
	    FUNC0(dev), &ohci_iterate_hw_softc)) {
		return (ENOMEM);
	}

	sc->sc_ohci.sc_dev = dev;

	rid = 0;
	sc->sc_ohci.sc_io_res = FUNC2(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->sc_ohci.sc_io_res == NULL) {
		err = ENOMEM;
		goto error;
	}
	sc->sc_ohci.sc_io_tag = FUNC11(sc->sc_ohci.sc_io_res);
	sc->sc_ohci.sc_io_hdl = FUNC10(sc->sc_ohci.sc_io_res);
	sc->sc_ohci.sc_io_size = FUNC12(sc->sc_ohci.sc_io_res);

	rid = 0;
	sc->sc_ohci.sc_irq_res = FUNC2(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (sc->sc_ohci.sc_irq_res == NULL) {
		err = ENOMEM;
		goto error;
	}
	sc->sc_ohci.sc_bus.bdev = FUNC5(dev, "usbus", -1);
	if (sc->sc_ohci.sc_bus.bdev == NULL) {
		err = ENOMEM;
		goto error;
	}
	FUNC8(sc->sc_ohci.sc_bus.bdev, &sc->sc_ohci.sc_bus);

	err = FUNC3(dev, sc->sc_ohci.sc_irq_res, 
	    INTR_TYPE_BIO | INTR_MPSAFE, NULL, 
	    ar71xx_ohci_intr, sc, &sc->sc_ohci.sc_intr_hdl);
	if (err) {
		err = ENXIO;
		goto error;
	}

	FUNC13(sc->sc_ohci.sc_vendor, "Atheros", sizeof(sc->sc_ohci.sc_vendor));

	FUNC4(sc->sc_ohci.sc_io_tag, sc->sc_ohci.sc_io_hdl, OHCI_CONTROL, 0);

	err = FUNC9(&sc->sc_ohci);
	if (!err)
		err = FUNC7(sc->sc_ohci.sc_bus.bdev);

	if (err)
		goto error;
	return (0);

error:
	if (err) {
		FUNC1(dev);
		return (err);
	}
	return (err);
}