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
typedef  int /*<<< orphan*/  usb_mode ;
struct TYPE_4__ {int dma_bits; int /*<<< orphan*/ * bdev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; int /*<<< orphan*/  parent; } ;
struct TYPE_5__ {TYPE_1__ sc_bus; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/ * sc_irq_res; void* sc_io_res; int /*<<< orphan*/  sc_io_size; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; int /*<<< orphan*/  sc_mode; int /*<<< orphan*/  sc_devices; } ;
struct dwc_otg_fdt_softc {TYPE_2__ sc_otg; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DWC_MODE_DEVICE ; 
 int /*<<< orphan*/  DWC_MODE_HOST ; 
 int /*<<< orphan*/  DWC_OTG_MAX_DEVICES ; 
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_TTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char**,int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct dwc_otg_fdt_softc*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct dwc_otg_fdt_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dwc_otg_filter_interrupt ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  dwc_otg_interrupt ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 scalar_t__ FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC18(device_t dev)
{
	struct dwc_otg_fdt_softc *sc = FUNC5(dev);
	char usb_mode[24];
	int err;
	int rid;

	/* initialise some bus fields */
	sc->sc_otg.sc_bus.parent = dev;
	sc->sc_otg.sc_bus.devices = sc->sc_otg.sc_devices;
	sc->sc_otg.sc_bus.devices_max = DWC_OTG_MAX_DEVICES;
	sc->sc_otg.sc_bus.dma_bits = 32;

	/* get USB mode, if any */
	if (FUNC0(FUNC11(dev), "dr_mode",
	    &usb_mode, sizeof(usb_mode)) > 0) {

		/* ensure proper zero termination */
		usb_mode[sizeof(usb_mode) - 1] = 0;

		if (FUNC16(usb_mode, "host") == 0)
			sc->sc_otg.sc_mode = DWC_MODE_HOST;
		else if (FUNC16(usb_mode, "peripheral") == 0)
			sc->sc_otg.sc_mode = DWC_MODE_DEVICE;
		else if (FUNC16(usb_mode, "otg") != 0) {
			FUNC6(dev, "Invalid FDT dr_mode: %s\n",
			    usb_mode);
		}
	}

	/* get all DMA memory */
	if (FUNC17(&sc->sc_otg.sc_bus,
	    FUNC1(dev), NULL)) {
		return (ENOMEM);
	}
	rid = 0;
	sc->sc_otg.sc_io_res =
	    FUNC2(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);

	if (!(sc->sc_otg.sc_io_res)) {
		err = ENOMEM;
		goto error;
	}
	sc->sc_otg.sc_io_tag = FUNC14(sc->sc_otg.sc_io_res);
	sc->sc_otg.sc_io_hdl = FUNC13(sc->sc_otg.sc_io_res);
	sc->sc_otg.sc_io_size = FUNC15(sc->sc_otg.sc_io_res);


	/*
	 * brcm,bcm2708-usb FDT provides two interrupts,
	 * we need only second one (VC_USB)
	 */
	rid = FUNC12(dev, "brcm,bcm2708-usb") ? 1 : 0;
	sc->sc_otg.sc_irq_res =
	    FUNC2(dev, SYS_RES_IRQ, &rid, RF_ACTIVE);
	if (sc->sc_otg.sc_irq_res == NULL)
		goto error;

	sc->sc_otg.sc_bus.bdev = FUNC4(dev, "usbus", -1);
	if (sc->sc_otg.sc_bus.bdev == NULL)
		goto error;

	FUNC8(sc->sc_otg.sc_bus.bdev, &sc->sc_otg.sc_bus);

	err = FUNC3(dev, sc->sc_otg.sc_irq_res, INTR_TYPE_TTY | INTR_MPSAFE,
	    &dwc_otg_filter_interrupt, &dwc_otg_interrupt, sc, &sc->sc_otg.sc_intr_hdl);
	if (err) {
		sc->sc_otg.sc_intr_hdl = NULL;
		goto error;
	}
	err = FUNC10(&sc->sc_otg);
	if (err == 0) {
		err = FUNC7(sc->sc_otg.sc_bus.bdev);
	}
	if (err)
		goto error;


	return (0);

error:
	FUNC9(dev);
	return (ENXIO);
}