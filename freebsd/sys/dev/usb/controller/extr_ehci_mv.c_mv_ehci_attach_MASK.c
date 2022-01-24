#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  enum mv_ehci_hwtype { ____Placeholder_mv_ehci_hwtype } mv_ehci_hwtype ;
struct TYPE_10__ {int dma_bits; int /*<<< orphan*/  bdev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; int /*<<< orphan*/  parent; } ;
struct TYPE_9__ {int sc_flags; TYPE_2__ sc_bus; int /*<<< orphan*/  sc_vendor_get_port_speed; int /*<<< orphan*/  sc_vendor_post_reset; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_vendor; int /*<<< orphan*/  sc_io_hdl; scalar_t__ sc_io_size; int /*<<< orphan*/  sc_io_tag; void* sc_io_res; int /*<<< orphan*/  sc_devices; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;
struct TYPE_11__ {int ocd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_HC_DEVSTR ; 
 int /*<<< orphan*/  EHCI_MAX_DEVICES ; 
 int EHCI_SCFLG_NORESTERM ; 
 int EHCI_SCFLG_TT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int HWTYPE_MV_EHCI_V1 ; 
 int HWTYPE_NONE ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int MV_USB_ADDR_DECODE_ERR ; 
 int MV_USB_DEVICE_UNDERFLOW ; 
 scalar_t__ MV_USB_HOST_OFST ; 
 int MV_USB_HOST_OVERFLOW ; 
 int MV_USB_HOST_UNDERFLOW ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  USB_BRIDGE_INTR_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  ehci_get_port_speed_portsc ; 
 int FUNC12 (TYPE_1__*) ; 
 scalar_t__ ehci_interrupt ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 int /*<<< orphan*/ * err_intr ; 
 int /*<<< orphan*/ * ih_err ; 
 int /*<<< orphan*/ * irq_err ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mv_ehci_post_reset ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 scalar_t__ FUNC18 (void*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC20 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC21(device_t self)
{
	ehci_softc_t *sc = FUNC7(self);
	enum mv_ehci_hwtype hwtype;
	bus_space_handle_t bsh;
	int err;
	int rid;

	/* initialise some bus fields */
	sc->sc_bus.parent = self;
	sc->sc_bus.devices = sc->sc_devices;
	sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
	sc->sc_bus.dma_bits = 32;

	hwtype = FUNC14(self, compat_data)->ocd_data;
	if (hwtype == HWTYPE_NONE) {
		FUNC8(self, "Wrong HW type flag detected\n");
		return (ENXIO);
	}

	/* get all DMA memory */
	if (FUNC20(&sc->sc_bus,
	    FUNC1(self), &ehci_iterate_hw_softc)) {
		return (ENOMEM);
	}

	rid = 0;
	sc->sc_io_res = FUNC2(self, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (!sc->sc_io_res) {
		FUNC8(self, "Could not map memory\n");
		goto error;
	}
	sc->sc_io_tag = FUNC17(sc->sc_io_res);
	bsh = FUNC16(sc->sc_io_res);
	sc->sc_io_size = FUNC18(sc->sc_io_res) - MV_USB_HOST_OFST;

	/*
	 * Marvell EHCI host controller registers start at certain offset
	 * within the whole USB registers range, so create a subregion for the
	 * host mode configuration purposes.
	 */

	if (FUNC4(sc->sc_io_tag, bsh, MV_USB_HOST_OFST,
	    sc->sc_io_size, &sc->sc_io_hdl) != 0)
		FUNC15("%s: unable to subregion USB host registers",
		    FUNC6(self));

	rid = 0;
	if (hwtype == HWTYPE_MV_EHCI_V1) {
		irq_err = FUNC2(self, SYS_RES_IRQ, &rid,
		    RF_SHAREABLE | RF_ACTIVE);
		if (irq_err == NULL) {
			FUNC8(self, "Could not allocate error irq\n");
			FUNC13(self);
			return (ENXIO);
		}
		rid = 1;
	}

	/*
	 * Notice: Marvell EHCI controller has TWO interrupt lines, so make
	 * sure to use the correct rid for the main one (controller interrupt)
	 * -- refer to DTS for the right resource number to use here.
	 */
	sc->sc_irq_res = FUNC2(self, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE);
	if (sc->sc_irq_res == NULL) {
		FUNC8(self, "Could not allocate irq\n");
		goto error;
	}

	sc->sc_bus.bdev = FUNC5(self, "usbus", -1);
	if (!sc->sc_bus.bdev) {
		FUNC8(self, "Could not add USB device\n");
		goto error;
	}
	FUNC11(sc->sc_bus.bdev, &sc->sc_bus);
	FUNC10(sc->sc_bus.bdev, EHCI_HC_DEVSTR);

	FUNC19(sc->sc_vendor, "Marvell");

	if (hwtype == HWTYPE_MV_EHCI_V1) {
		err = FUNC3(self, irq_err, INTR_TYPE_BIO,
		    err_intr, NULL, sc, &ih_err);
		if (err) {
			FUNC8(self, "Could not setup error irq, %d\n", err);
			ih_err = NULL;
			goto error;
		}
	}

	FUNC0(sc, USB_BRIDGE_INTR_MASK, MV_USB_ADDR_DECODE_ERR |
	    MV_USB_HOST_UNDERFLOW | MV_USB_HOST_OVERFLOW |
	    MV_USB_DEVICE_UNDERFLOW);

	err = FUNC3(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, (driver_intr_t *)ehci_interrupt, sc, &sc->sc_intr_hdl);
	if (err) {
		FUNC8(self, "Could not setup irq, %d\n", err);
		sc->sc_intr_hdl = NULL;
		goto error;
	}

	/*
	 * Workaround for Marvell integrated EHCI controller: reset of
	 * the EHCI core clears the USBMODE register, which sets the core in
	 * an undefined state (neither host nor agent), so it needs to be set
	 * again for proper operation.
	 *
	 * Refer to errata document MV-S500832-00D.pdf (p. 5.24 GL USB-2) for
	 * details.
	 */
	sc->sc_vendor_post_reset = mv_ehci_post_reset;
	if (bootverbose)
		FUNC8(self, "5.24 GL USB-2 workaround enabled\n");

	/* XXX all MV chips need it? */
	sc->sc_flags |= EHCI_SCFLG_TT | EHCI_SCFLG_NORESTERM;
	sc->sc_vendor_get_port_speed = ehci_get_port_speed_portsc;
	err = FUNC12(sc);
	if (!err) {
		err = FUNC9(sc->sc_bus.bdev);
	}
	if (err) {
		FUNC8(self, "USB init failed err=%d\n", err);
		goto error;
	}
	return (0);

error:
	FUNC13(self);
	return (ENXIO);
}