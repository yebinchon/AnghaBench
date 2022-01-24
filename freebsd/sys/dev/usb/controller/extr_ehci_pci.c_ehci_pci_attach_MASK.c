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
struct TYPE_9__ {int dma_bits; int /*<<< orphan*/  bdev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; int /*<<< orphan*/  parent; } ;
struct TYPE_8__ {TYPE_2__ sc_bus; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_vendor; void* sc_io_res; int /*<<< orphan*/  sc_io_size; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; int /*<<< orphan*/  sc_devices; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EHCI_MAX_DEVICES ; 
 int /*<<< orphan*/  EHCI_SCFLG_IAADBUG ; 
 int /*<<< orphan*/  EHCI_SCFLG_LOSTINTRBUG ; 
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int PCI_CBMEM ; 
#define  PCI_EHCI_VENDORID_ACERLABS 144 
#define  PCI_EHCI_VENDORID_AMD 143 
#define  PCI_EHCI_VENDORID_APPLE 142 
#define  PCI_EHCI_VENDORID_ATI 141 
#define  PCI_EHCI_VENDORID_CMDTECH 140 
#define  PCI_EHCI_VENDORID_INTEL 139 
#define  PCI_EHCI_VENDORID_NEC 138 
#define  PCI_EHCI_VENDORID_NVIDIA 137 
#define  PCI_EHCI_VENDORID_NVIDIA2 136 
#define  PCI_EHCI_VENDORID_OPTI 135 
#define  PCI_EHCI_VENDORID_PHILIPS 134 
#define  PCI_EHCI_VENDORID_SIS 133 
#define  PCI_EHCI_VENDORID_VIA 132 
 int /*<<< orphan*/  PCI_USBREV ; 
#define  PCI_USB_REV_1_0 131 
#define  PCI_USB_REV_1_1 130 
#define  PCI_USB_REV_2_0 129 
 int PCI_USB_REV_MASK ; 
#define  PCI_USB_REV_PRE_1_0 128 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bootverbose ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 scalar_t__ ehci_interrupt ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (void*) ; 
 int /*<<< orphan*/  FUNC21 (void*) ; 
 int /*<<< orphan*/  FUNC22 (void*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC24 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC25(device_t self)
{
	ehci_softc_t *sc = FUNC4(self);
	int err;
	int rid;

	/* initialise some bus fields */
	sc->sc_bus.parent = self;
	sc->sc_bus.devices = sc->sc_devices;
	sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
	sc->sc_bus.dma_bits = 32;

	/* get all DMA memory */
	if (FUNC24(&sc->sc_bus,
	    FUNC0(self), &ehci_iterate_hw_softc)) {
		return (ENOMEM);
	}

	FUNC15(self);

	switch (FUNC19(self, PCI_USBREV, 1) & PCI_USB_REV_MASK) {
	case PCI_USB_REV_PRE_1_0:
	case PCI_USB_REV_1_0:
	case PCI_USB_REV_1_1:
		/*
		 * NOTE: some EHCI USB controllers have the wrong USB
		 * revision number. It appears those controllers are
		 * fully compliant so we just ignore this value in
		 * some common cases.
		 */
		FUNC5(self, "pre-2.0 USB revision (ignored)\n");
		/* fallthrough */
	case PCI_USB_REV_2_0:
		break;
	default:
		/* Quirk for Parallels Desktop 4.0 */
		FUNC5(self, "USB revision is unknown. Assuming v2.0.\n");
		break;
	}

	rid = PCI_CBMEM;
	sc->sc_io_res = FUNC1(self, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->sc_io_res) {
		FUNC5(self, "Could not map memory\n");
		goto error;
	}
	sc->sc_io_tag = FUNC21(sc->sc_io_res);
	sc->sc_io_hdl = FUNC20(sc->sc_io_res);
	sc->sc_io_size = FUNC22(sc->sc_io_res);

	rid = 0;
	sc->sc_irq_res = FUNC1(self, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE | RF_ACTIVE);
	if (sc->sc_irq_res == NULL) {
		FUNC5(self, "Could not allocate irq\n");
		goto error;
	}
	sc->sc_bus.bdev = FUNC3(self, "usbus", -1);
	if (!sc->sc_bus.bdev) {
		FUNC5(self, "Could not add USB device\n");
		goto error;
	}
	FUNC8(sc->sc_bus.bdev, &sc->sc_bus);

	/*
	 * ehci_pci_match will never return NULL if ehci_pci_probe
	 * succeeded
	 */
	FUNC7(sc->sc_bus.bdev, FUNC12(self));
	switch (FUNC18(self)) {
	case PCI_EHCI_VENDORID_ACERLABS:
		FUNC23(sc->sc_vendor, "AcerLabs");
		break;
	case PCI_EHCI_VENDORID_AMD:
		FUNC23(sc->sc_vendor, "AMD");
		break;
	case PCI_EHCI_VENDORID_APPLE:
		FUNC23(sc->sc_vendor, "Apple");
		break;
	case PCI_EHCI_VENDORID_ATI:
		FUNC23(sc->sc_vendor, "ATI");
		break;
	case PCI_EHCI_VENDORID_CMDTECH:
		FUNC23(sc->sc_vendor, "CMDTECH");
		break;
	case PCI_EHCI_VENDORID_INTEL:
		FUNC23(sc->sc_vendor, "Intel");
		break;
	case PCI_EHCI_VENDORID_NEC:
		FUNC23(sc->sc_vendor, "NEC");
		break;
	case PCI_EHCI_VENDORID_OPTI:
		FUNC23(sc->sc_vendor, "OPTi");
		break;
	case PCI_EHCI_VENDORID_PHILIPS:
		FUNC23(sc->sc_vendor, "Philips");
		break;
	case PCI_EHCI_VENDORID_SIS:
		FUNC23(sc->sc_vendor, "SiS");
		break;
	case PCI_EHCI_VENDORID_NVIDIA:
	case PCI_EHCI_VENDORID_NVIDIA2:
		FUNC23(sc->sc_vendor, "nVidia");
		break;
	case PCI_EHCI_VENDORID_VIA:
		FUNC23(sc->sc_vendor, "VIA");
		break;
	default:
		if (bootverbose)
			FUNC5(self, "(New EHCI DeviceId=0x%08x)\n",
			    FUNC17(self));
		FUNC23(sc->sc_vendor, "(0x%04x)", FUNC18(self));
	}

#if (__FreeBSD_version >= 700031)
	err = bus_setup_intr(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, (driver_intr_t *)ehci_interrupt, sc, &sc->sc_intr_hdl);
#else
	err = FUNC2(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
	    (driver_intr_t *)ehci_interrupt, sc, &sc->sc_intr_hdl);
#endif
	if (err) {
		FUNC5(self, "Could not setup irq, %d\n", err);
		sc->sc_intr_hdl = NULL;
		goto error;
	}
	FUNC13(self);

	/* Undocumented quirks taken from Linux */

	switch (FUNC18(self)) {
	case PCI_EHCI_VENDORID_ATI:
		/* SB600 and SB700 EHCI quirk */
		switch (FUNC16(self)) {
		case 0x4386:
			FUNC10(self, 0);
			break;
		case 0x4396:
			FUNC10(self, 1);
			break;
		default:
			break;
		}
		break;

	case PCI_EHCI_VENDORID_VIA:
		FUNC14(self);
		break;

	default:
		break;
	}

	/* Dropped interrupts workaround */
	switch (FUNC18(self)) {
	case PCI_EHCI_VENDORID_ATI:
	case PCI_EHCI_VENDORID_VIA:
		sc->sc_flags |= EHCI_SCFLG_LOSTINTRBUG;
		if (bootverbose)
			FUNC5(self,
			    "Dropped interrupts workaround enabled\n");
		break;
	default:
		break;
	}

	/* Doorbell feature workaround */
	switch (FUNC18(self)) {
	case PCI_EHCI_VENDORID_NVIDIA:
	case PCI_EHCI_VENDORID_NVIDIA2:
		sc->sc_flags |= EHCI_SCFLG_IAADBUG;
		if (bootverbose)
			FUNC5(self,
			    "Doorbell workaround enabled\n");
		break;
	default:
		break;
	}

	err = FUNC9(sc);
	if (!err) {
		err = FUNC6(sc->sc_bus.bdev);
	}
	if (err) {
		FUNC5(self, "USB init failed err=%d\n", err);
		goto error;
	}
	return (0);

error:
	FUNC11(self);
	return (ENXIO);
}