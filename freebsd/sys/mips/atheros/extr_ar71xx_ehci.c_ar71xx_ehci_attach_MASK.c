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
struct TYPE_9__ {int dma_bits; int /*<<< orphan*/  bdev; int /*<<< orphan*/  usbrev; int /*<<< orphan*/  devices_max; int /*<<< orphan*/  devices; int /*<<< orphan*/  parent; } ;
struct TYPE_8__ {int sc_flags; TYPE_2__ sc_bus; int /*<<< orphan*/  sc_offs; int /*<<< orphan*/  sc_vendor_get_port_speed; int /*<<< orphan*/  sc_vendor_post_reset; int /*<<< orphan*/ * sc_intr_hdl; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_vendor; void* sc_io_res; int /*<<< orphan*/  sc_io_size; int /*<<< orphan*/  sc_io_hdl; int /*<<< orphan*/  sc_io_tag; int /*<<< orphan*/  sc_devices; } ;
struct ar71xx_ehci_softc {TYPE_1__ base; } ;
typedef  TYPE_1__ ehci_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  AR71XX_SOC_AR7241 140 
#define  AR71XX_SOC_AR7242 139 
#define  AR71XX_SOC_AR9130 138 
#define  AR71XX_SOC_AR9132 137 
#define  AR71XX_SOC_AR9330 136 
#define  AR71XX_SOC_AR9331 135 
#define  AR71XX_SOC_AR9341 134 
#define  AR71XX_SOC_AR9342 133 
#define  AR71XX_SOC_AR9344 132 
#define  AR71XX_SOC_QCA9533 131 
#define  AR71XX_SOC_QCA9533_V2 130 
#define  AR71XX_SOC_QCA9556 129 
#define  AR71XX_SOC_QCA9558 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EHCI_CAPLEN_HCIVERSION ; 
 int /*<<< orphan*/  EHCI_HC_DEVSTR ; 
 int /*<<< orphan*/  EHCI_MAX_DEVICES ; 
 int EHCI_SCFLG_NORESTERM ; 
 int EHCI_SCFLG_TT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_BIO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_REV_2_0 ; 
 int /*<<< orphan*/  ar71xx_bus_space_reversed ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ar71xx_ehci_intr ; 
 int /*<<< orphan*/  ar71xx_ehci_post_reset ; 
 int ar71xx_soc ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 struct ar71xx_ehci_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  ehci_get_port_speed_portsc ; 
 int FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  ehci_iterate_hw_softc ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC18(device_t self)
{
	struct ar71xx_ehci_softc *isc = FUNC7(self);
	ehci_softc_t *sc = &isc->base;
	int err;
	int rid;

	/* initialise some bus fields */
	sc->sc_bus.parent = self;
	sc->sc_bus.devices = sc->sc_devices;
	sc->sc_bus.devices_max = EHCI_MAX_DEVICES;
	sc->sc_bus.dma_bits = 32;

	/* get all DMA memory */
	if (FUNC17(&sc->sc_bus,
	    FUNC2(self), &ehci_iterate_hw_softc)) {
		return (ENOMEM);
	}

	sc->sc_bus.usbrev = USB_REV_2_0;

	/* NB: hints fix the memory location and irq */

	rid = 0;
	sc->sc_io_res = FUNC4(self, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (!sc->sc_io_res) {
		FUNC8(self, "Could not map memory\n");
		goto error;
	}

	/*
	 * Craft special resource for bus space ops that handle
	 * byte-alignment of non-word addresses.  
	 */
	sc->sc_io_tag = ar71xx_bus_space_reversed;
	sc->sc_io_hdl = FUNC14(sc->sc_io_res);
	sc->sc_io_size = FUNC15(sc->sc_io_res);

	rid = 0;
	sc->sc_irq_res = FUNC4(self, SYS_RES_IRQ, &rid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (sc->sc_irq_res == NULL) {
		FUNC8(self, "Could not allocate irq\n");
		goto error;
	}
	sc->sc_bus.bdev = FUNC6(self, "usbus", -1);
	if (!sc->sc_bus.bdev) {
		FUNC8(self, "Could not add USB device\n");
		goto error;
	}
	FUNC11(sc->sc_bus.bdev, &sc->sc_bus);
	FUNC10(sc->sc_bus.bdev, EHCI_HC_DEVSTR);

	FUNC16(sc->sc_vendor, "Atheros");

	err = FUNC5(self, sc->sc_irq_res, INTR_TYPE_BIO | INTR_MPSAFE,
	    NULL, ar71xx_ehci_intr, sc, &sc->sc_intr_hdl);
	if (err) {
		FUNC8(self, "Could not setup irq, %d\n", err);
		sc->sc_intr_hdl = NULL;
		goto error;
	}

	/*
	 * Arrange to force Host mode, select big-endian byte alignment,
	 * and arrange to not terminate reset operations (the adapter
	 * will ignore it if we do but might as well save a reg write).
	 * Also, the controller has an embedded Transaction Translator
	 * which means port speed must be read from the Port Status
	 * register following a port enable.
	 */
	sc->sc_flags = 0;
	sc->sc_vendor_post_reset = ar71xx_ehci_post_reset;

	switch (ar71xx_soc) {
		case AR71XX_SOC_AR7241:
		case AR71XX_SOC_AR7242:
		case AR71XX_SOC_AR9130:
		case AR71XX_SOC_AR9132:
		case AR71XX_SOC_AR9330:
		case AR71XX_SOC_AR9331:
		case AR71XX_SOC_AR9341:
		case AR71XX_SOC_AR9342:
		case AR71XX_SOC_AR9344:
		case AR71XX_SOC_QCA9533:
		case AR71XX_SOC_QCA9533_V2:
		case AR71XX_SOC_QCA9556:
		case AR71XX_SOC_QCA9558:
			sc->sc_flags |= EHCI_SCFLG_TT | EHCI_SCFLG_NORESTERM;
			sc->sc_vendor_get_port_speed =
			    ehci_get_port_speed_portsc;
			break;
		default:
			/* fallthrough */
			break;
	}

	/*
	 * ehci_reset() needs the correct offset to access the host controller
	 * registers. The AR724x/AR913x offsets aren't 0.
	*/
	sc->sc_offs = FUNC0(FUNC1(sc, EHCI_CAPLEN_HCIVERSION));

	(void) FUNC13(sc);

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
	FUNC3(self);
	return (ENXIO);
}