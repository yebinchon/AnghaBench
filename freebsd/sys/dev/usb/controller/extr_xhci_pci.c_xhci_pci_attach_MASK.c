#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/ * bdev; int /*<<< orphan*/  bus_mtx; } ;
struct xhci_softc {int sc_ctlstep; TYPE_1__ sc_bus; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_vendor; int /*<<< orphan*/ * sc_msix_res; int /*<<< orphan*/  sc_callout; int /*<<< orphan*/ * sc_io_res; int /*<<< orphan*/  sc_imod_default; int /*<<< orphan*/ * sc_port_route; int /*<<< orphan*/  sc_io_size; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int PCI_XHCI_CBMEM ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  XHCI_IMOD_DEFAULT_LP ; 
 scalar_t__ bootverbose ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct xhci_softc*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 struct xhci_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int hz ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct xhci_softc*) ; 
 scalar_t__ FUNC24 (struct xhci_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ xhci_interrupt ; 
 int /*<<< orphan*/  FUNC25 (struct xhci_softc*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xhci_pci_port_route ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int FUNC28 (struct xhci_softc*) ; 
 scalar_t__ xhci_use_msi ; 
 scalar_t__ xhci_use_msix ; 
 scalar_t__ FUNC29 () ; 

__attribute__((used)) static int
FUNC30(device_t self)
{
	struct xhci_softc *sc = FUNC6(self);
	int count, err, msix_table, rid;
	uint8_t usemsi = 1;
	uint8_t usedma32 = 0;

	rid = PCI_XHCI_CBMEM;
	sc->sc_io_res = FUNC2(self, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->sc_io_res) {
		FUNC7(self, "Could not map memory\n");
		return (ENOMEM);
	}
	sc->sc_io_tag = FUNC18(sc->sc_io_res);
	sc->sc_io_hdl = FUNC17(sc->sc_io_res);
	sc->sc_io_size = FUNC20(sc->sc_io_res);

	switch (FUNC13(self)) {
	case 0x01941033:	/* NEC uPD720200 USB 3.0 controller */
	case 0x00141912:	/* NEC uPD720201 USB 3.0 controller */
		/* Don't use 64-bit DMA on these controllers. */
		usedma32 = 1;
		break;
	case 0x10001b73:	/* FL1000G */
		/* Fresco Logic host doesn't support MSI. */
		usemsi = 0;
		break;
	case 0x0f358086:	/* BayTrail */
	case 0x9c318086:	/* Panther Point */
	case 0x1e318086:	/* Panther Point */
	case 0x8c318086:	/* Lynx Point */
	case 0x8cb18086:	/* Wildcat Point */
	case 0x9cb18086:	/* Broadwell Mobile Integrated */
		/*
		 * On Intel chipsets, reroute ports from EHCI to XHCI
		 * controller and use a different IMOD value.
		 */
		sc->sc_port_route = &xhci_pci_port_route;
		sc->sc_imod_default = XHCI_IMOD_DEFAULT_LP;
		sc->sc_ctlstep = 1;
		break;
	}

	if (FUNC24(sc, self, usedma32)) {
		FUNC7(self, "Could not initialize softc\n");
		FUNC3(self, SYS_RES_MEMORY, PCI_XHCI_CBMEM,
		    sc->sc_io_res);
		return (ENXIO);
	}

	FUNC12(self);

	FUNC22(&sc->sc_callout, &sc->sc_bus.bus_mtx, 0);

	rid = 0;
	if (xhci_use_msix && (msix_table = FUNC15(self)) >= 0) {
		sc->sc_msix_res = FUNC2(self, SYS_RES_MEMORY,
		    &msix_table, RF_ACTIVE);
		if (sc->sc_msix_res == NULL) {
			/* May not be enabled */
			FUNC7(self,
			    "Unable to map MSI-X table \n");
		} else {
			count = 1;
			if (FUNC11(self, &count) == 0) {
				if (bootverbose)
					FUNC7(self, "MSI-X enabled\n");
				rid = 1;
			} else {
				FUNC3(self, SYS_RES_MEMORY,
				    msix_table, sc->sc_msix_res);
				sc->sc_msix_res = NULL;
			}
		}
	}
	if (rid == 0 && xhci_use_msi && usemsi) {
		count = 1;
		if (FUNC10(self, &count) == 0) {
			if (bootverbose)
				FUNC7(self, "MSI enabled\n");
			rid = 1;
		}
	}
	sc->sc_irq_res = FUNC2(self, SYS_RES_IRQ, &rid,
	    RF_ACTIVE | (rid != 0 ? 0 : RF_SHAREABLE));
	if (sc->sc_irq_res == NULL) {
		FUNC16(self);
		FUNC7(self, "Could not allocate IRQ\n");
		/* goto error; FALLTHROUGH - use polling */
	}
	sc->sc_bus.bdev = FUNC5(self, "usbus", -1);
	if (sc->sc_bus.bdev == NULL) {
		FUNC7(self, "Could not add USB device\n");
		goto error;
	}
	FUNC9(sc->sc_bus.bdev, &sc->sc_bus);

	FUNC21(sc->sc_vendor, "0x%04x", FUNC14(self));

	if (sc->sc_irq_res != NULL) {
		err = FUNC4(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
		    NULL, (driver_intr_t *)xhci_interrupt, sc, &sc->sc_intr_hdl);
		if (err != 0) {
			FUNC3(self, SYS_RES_IRQ,
			    FUNC19(sc->sc_irq_res), sc->sc_irq_res);
			sc->sc_irq_res = NULL;
			FUNC16(self);
			FUNC7(self, "Could not setup IRQ, err=%d\n", err);
			sc->sc_intr_hdl = NULL;
		}
	}
	if (sc->sc_irq_res == NULL || sc->sc_intr_hdl == NULL) {
		if (FUNC29() != 0) {
			FUNC7(self, "Interrupt polling at %dHz\n", hz);
			FUNC0(&sc->sc_bus);
			FUNC25(sc);
			FUNC1(&sc->sc_bus);
		} else
			goto error;
	}

	FUNC27(self);

	err = FUNC23(sc);

	if (err == 0)
		err = FUNC28(sc);

	if (err == 0)
		err = FUNC8(sc->sc_bus.bdev);

	if (err) {
		FUNC7(self, "XHCI halt/start/probe failed err=%d\n", err);
		goto error;
	}
	return (0);

error:
	FUNC26(self);
	return (ENXIO);
}