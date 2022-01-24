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
struct TYPE_9__ {int dma_bits; int /*<<< orphan*/  bdev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; void* parent; } ;
struct TYPE_8__ {TYPE_2__ sc_bus; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_vendor; void* sc_io_res; int /*<<< orphan*/  sc_io_size; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; void* sc_dev; int /*<<< orphan*/  sc_devices; } ;
typedef  TYPE_1__ ohci_softc_t ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  void* device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int /*<<< orphan*/  OHCI_MAX_DEVICES ; 
 int PCI_CBMEM ; 
#define  PCI_OHCI_VENDORID_ACERLABS 138 
#define  PCI_OHCI_VENDORID_AMD 137 
#define  PCI_OHCI_VENDORID_APPLE 136 
#define  PCI_OHCI_VENDORID_ATI 135 
#define  PCI_OHCI_VENDORID_CMDTECH 134 
#define  PCI_OHCI_VENDORID_NEC 133 
#define  PCI_OHCI_VENDORID_NVIDIA 132 
#define  PCI_OHCI_VENDORID_NVIDIA2 131 
#define  PCI_OHCI_VENDORID_OPTI 130 
#define  PCI_OHCI_VENDORID_SIS 129 
#define  PCI_OHCI_VENDORID_SUN 128 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  bootverbose ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (void*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,...) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*,int) ; 
 TYPE_1__* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 scalar_t__ ohci_interrupt ; 
 int /*<<< orphan*/  ohci_iterate_hw_softc ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int FUNC13 (void*) ; 
 scalar_t__ FUNC14 (void*) ; 
 int FUNC15 (void*) ; 
 int /*<<< orphan*/  FUNC16 (void*,int) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 
 int /*<<< orphan*/  FUNC19 (void*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC21 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC22(device_t self)
{
	ohci_softc_t *sc = FUNC4(self);
	int rid;
	int err;

	/* initialise some bus fields */
	sc->sc_bus.parent = self;
	sc->sc_bus.devices = sc->sc_devices;
	sc->sc_bus.devices_max = OHCI_MAX_DEVICES;
	sc->sc_bus.dma_bits = 32;

	/* get all DMA memory */
	if (FUNC21(&sc->sc_bus, FUNC0(self),
	    &ohci_iterate_hw_softc)) {
		return (ENOMEM);
	}
	sc->sc_dev = self;

	FUNC12(self);

	/*
	 * Some Sun PCIO-2 USB controllers have their intpin register
	 * bogusly set to 0, although it should be 4.  Correct that.
	 */
	if (FUNC13(self) == 0x1103108e && FUNC14(self) == 0)
		FUNC16(self, 4);

	rid = PCI_CBMEM;
	sc->sc_io_res = FUNC1(self, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->sc_io_res) {
		FUNC5(self, "Could not map memory\n");
		goto error;
	}
	sc->sc_io_tag = FUNC18(sc->sc_io_res);
	sc->sc_io_hdl = FUNC17(sc->sc_io_res);
	sc->sc_io_size = FUNC19(sc->sc_io_res);

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
	 * ohci_pci_match will never return NULL if ohci_pci_probe
	 * succeeded
	 */
	FUNC7(sc->sc_bus.bdev, FUNC11(self));
	switch (FUNC15(self)) {
	case PCI_OHCI_VENDORID_ACERLABS:
		FUNC20(sc->sc_vendor, "AcerLabs");
		break;
	case PCI_OHCI_VENDORID_AMD:
		FUNC20(sc->sc_vendor, "AMD");
		break;
	case PCI_OHCI_VENDORID_APPLE:
		FUNC20(sc->sc_vendor, "Apple");
		break;
	case PCI_OHCI_VENDORID_ATI:
		FUNC20(sc->sc_vendor, "ATI");
		break;
	case PCI_OHCI_VENDORID_CMDTECH:
		FUNC20(sc->sc_vendor, "CMDTECH");
		break;
	case PCI_OHCI_VENDORID_NEC:
		FUNC20(sc->sc_vendor, "NEC");
		break;
	case PCI_OHCI_VENDORID_NVIDIA:
	case PCI_OHCI_VENDORID_NVIDIA2:
		FUNC20(sc->sc_vendor, "nVidia");
		break;
	case PCI_OHCI_VENDORID_OPTI:
		FUNC20(sc->sc_vendor, "OPTi");
		break;
	case PCI_OHCI_VENDORID_SIS:
		FUNC20(sc->sc_vendor, "SiS");
		break;
	case PCI_OHCI_VENDORID_SUN:
		FUNC20(sc->sc_vendor, "SUN");
		break;
	default:
		if (bootverbose) {
			FUNC5(self, "(New OHCI DeviceId=0x%08x)\n",
			    FUNC13(self));
		}
		FUNC20(sc->sc_vendor, "(0x%04x)", FUNC15(self));
	}

	/* sc->sc_bus.usbrev; set by ohci_init() */

#if (__FreeBSD_version >= 700031)
	err = bus_setup_intr(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, (driver_intr_t *)ohci_interrupt, sc, &sc->sc_intr_hdl);
#else
	err = FUNC2(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
	    (driver_intr_t *)ohci_interrupt, sc, &sc->sc_intr_hdl);
#endif
	if (err) {
		FUNC5(self, "Could not setup irq, %d\n", err);
		sc->sc_intr_hdl = NULL;
		goto error;
	}
	err = FUNC9(sc);
	if (!err) {
		err = FUNC6(sc->sc_bus.bdev);
	}
	if (err) {
		FUNC5(self, "USB init failed\n");
		goto error;
	}
	return (0);

error:
	FUNC10(self);
	return (ENXIO);
}