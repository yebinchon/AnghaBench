#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int dma_bits; int /*<<< orphan*/  bdev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; int /*<<< orphan*/  parent; } ;
struct TYPE_10__ {int sc_id_vendor; int sc_flags; TYPE_2__ sc_bus; int /*<<< orphan*/  sc_vendor; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/ * sc_io_tag; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/ * sc_io_res; int /*<<< orphan*/  sc_devices; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_MAX_DEVICES ; 
 int EHCI_SCFLG_DONEINIT ; 
 int EHCI_SCFLG_DONTRESET ; 
 int EHCI_SCFLG_NORESTERM ; 
 int EIO ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FSL_EHCI_REG_OFF ; 
 int /*<<< orphan*/  FSL_EHCI_REG_SIZE ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bs_le_tag ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC10 (TYPE_1__*) ; 
 scalar_t__ ehci_interrupt ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC20 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC21(device_t self)
{
	ehci_softc_t *sc;
	int rid;
	int err;
	bus_space_handle_t ioh;
	bus_space_tag_t iot;

	sc = FUNC6(self);
	rid = 0;

	sc->sc_bus.parent = self;
	sc->sc_bus.devices = sc->sc_devices;
	sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
	sc->sc_bus.dma_bits = 32;

	if (FUNC20(&sc->sc_bus,
	    FUNC0(self), &ehci_iterate_hw_softc))
		return (ENOMEM);

	/* Allocate io resource for EHCI */
	sc->sc_io_res = FUNC1(self, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->sc_io_res == NULL) {
		err = FUNC13(self);
		if (err) {
			FUNC7(self,
			    "Detach of the driver failed with error %d\n",
			    err);
		}
		return (ENXIO);
	}
	iot = FUNC15(sc->sc_io_res);

	/*
	 * Set handle to USB related registers subregion used by generic
	 * EHCI driver
	 */
	ioh = FUNC14(sc->sc_io_res);

	err = FUNC3(iot, ioh, FSL_EHCI_REG_OFF, FSL_EHCI_REG_SIZE,
	    &sc->sc_io_hdl);
	if (err != 0) {
		err = FUNC13(self);
		if (err) {
			FUNC7(self,
			    "Detach of the driver failed with error %d\n",
			    err);
		}
		return (ENXIO);
	}

	/* Set little-endian tag for use by the generic EHCI driver */
	sc->sc_io_tag = &bs_le_tag;

	/* Allocate irq */
	sc->sc_irq_res = FUNC1(self, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (sc->sc_irq_res == NULL) {
		err = FUNC13(self);
		if (err) {
			FUNC7(self,
			    "Detach of the driver failed with error %d\n",
			    err);
		}
		return (ENXIO);
	}

	/* Setup interrupt handler */
	err = FUNC2(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, (driver_intr_t *)ehci_interrupt, sc, &sc->sc_intr_hdl);
	if (err) {
		FUNC7(self, "Could not setup irq, %d\n", err);
		sc->sc_intr_hdl = NULL;
		err = FUNC13(self);
		if (err) {
			FUNC7(self,
			    "Detach of the driver failed with error %d\n",
			    err);
		}
		return (ENXIO);
	}

	/* Add USB device */
	sc->sc_bus.bdev = FUNC5(self, "usbus", -1);
	if (!sc->sc_bus.bdev) {
		FUNC7(self, "Could not add USB device\n");
		err = FUNC13(self);
		if (err) {
			FUNC7(self,
			    "Detach of the driver failed with error %d\n",
			    err);
		}
		return (ENOMEM);
	}
	FUNC9(sc->sc_bus.bdev, &sc->sc_bus);

	sc->sc_id_vendor = 0x1234;
	FUNC19(sc->sc_vendor, "Freescale", sizeof(sc->sc_vendor));

	/* Enable USB */
	err = FUNC11(sc);
	if (err) {
		FUNC7(self, "Could not reset the controller\n");
		err = FUNC13(self);
		if (err) {
			FUNC7(self,
			    "Detach of the driver failed with error %d\n",
			    err);
		}
		return (ENXIO);
	}

	FUNC12(self, iot, ioh);
	FUNC17(iot, ioh);
	FUNC18(sc);
	FUNC16(iot, ioh);

	/*
	 * If usb subsystem is enabled in U-Boot, port power has to be turned
	 * off to allow proper discovery of devices during boot up.
	 */
	FUNC4(sc);

	/* Set flags */
	sc->sc_flags |= EHCI_SCFLG_DONTRESET | EHCI_SCFLG_NORESTERM;

	err = FUNC10(sc);
	if (!err) {
		sc->sc_flags |= EHCI_SCFLG_DONEINIT;
		err = FUNC8(sc->sc_bus.bdev);
	}

	if (err) {
		FUNC7(self, "USB init failed err=%d\n", err);
		err = FUNC13(self);
		if (err) {
			FUNC7(self,
			    "Detach of the driver failed with error %d\n",
			    err);
		}
		return (EIO);
	}

	return (0);
}