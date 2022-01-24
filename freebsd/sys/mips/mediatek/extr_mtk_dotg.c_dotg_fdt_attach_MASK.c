#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int dma_bits; int /*<<< orphan*/  bdev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; int /*<<< orphan*/  parent; } ;
struct dwc_otg_softc {TYPE_1__ sc_bus; int /*<<< orphan*/ * sc_intr_hdl; void* sc_irq_res; void* sc_io_res; int /*<<< orphan*/  sc_io_size; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; int /*<<< orphan*/  sc_devices; int /*<<< orphan*/  sc_mode; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DWC_MODE_HOST ; 
 int /*<<< orphan*/  DWC_OTG_MAX_DEVICES ; 
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_TTY ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dwc_otg_softc*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct dwc_otg_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dwc_otg_filter_interrupt ; 
 int FUNC8 (struct dwc_otg_softc*) ; 
 int /*<<< orphan*/  dwc_otg_interrupt ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 scalar_t__ FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct dwc_otg_softc *sc = FUNC4(dev);
	int err, rid;

	/* setup controller interface softc */

	/* initialise some bus fields */
	sc->sc_mode = DWC_MODE_HOST;
	sc->sc_bus.parent = dev;
	sc->sc_bus.devices = sc->sc_devices;
	sc->sc_bus.devices_max = DWC_OTG_MAX_DEVICES;
	sc->sc_bus.dma_bits = 32;

	/* get all DMA memory */
	if (FUNC13(&sc->sc_bus,
	    FUNC0(dev), NULL)) {
		FUNC9("No mem\n");
		return (ENOMEM);
	}
	rid = 0;
	sc->sc_io_res =
	    FUNC1(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (!(sc->sc_io_res)) {
		FUNC9("Can`t alloc MEM\n");
		goto error;
	}
	sc->sc_io_tag = FUNC11(sc->sc_io_res);
	sc->sc_io_hdl = FUNC10(sc->sc_io_res);
	sc->sc_io_size = FUNC12(sc->sc_io_res);

	rid = 0;
	sc->sc_irq_res = FUNC1(dev, SYS_RES_IRQ, 
	    &rid, RF_ACTIVE);
	if (!(sc->sc_irq_res)) {
		FUNC9("Can`t alloc IRQ\n");
		goto error;
	}

	sc->sc_bus.bdev = FUNC3(dev, "usbus", -1);
	if (!(sc->sc_bus.bdev)) {
		FUNC9("Can`t add usbus\n");
		goto error;
	}
	FUNC6(sc->sc_bus.bdev, &sc->sc_bus);

	err = FUNC2(dev, sc->sc_irq_res,
	    INTR_TYPE_TTY | INTR_MPSAFE, dwc_otg_filter_interrupt,
	    dwc_otg_interrupt, sc, &sc->sc_intr_hdl);
	if (err) {
		sc->sc_intr_hdl = NULL;
		FUNC9("Can`t set IRQ handle\n");
		goto error;
	}

	err = FUNC8(sc);
	if (err) FUNC9("dotg_init fail\n");
	if (!err) {
		err = FUNC5(sc->sc_bus.bdev);
		if (err) FUNC9("device_probe_and_attach fail %d\n", err);
	}
	if (err) {
		goto error;
	}
	return (0);

error:
	FUNC7(dev);
	return (ENXIO);
}