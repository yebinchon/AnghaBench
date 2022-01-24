#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct TYPE_6__ {int dma_bits; int control_ep_quirk; int /*<<< orphan*/  parent; void* devices_max; int /*<<< orphan*/  devices; int /*<<< orphan*/ * methods; int /*<<< orphan*/  usbrev; } ;
struct xhci_softc {int sc_event_ccs; int sc_command_ccs; int sc_oper_off; int sc_runt_off; int sc_door_off; int sc_ctx_is_64_byte; int sc_noslot; int sc_noscratch; unsigned int sc_erst_max; scalar_t__ sc_imod_default; TYPE_3__ sc_bus; TYPE_2__* sc_config_msg; int /*<<< orphan*/  sc_cmd_sx; int /*<<< orphan*/  sc_cmd_cv; scalar_t__ sc_exit_lat_max; int /*<<< orphan*/  sc_noport; scalar_t__ sc_capa_off; int /*<<< orphan*/  sc_devices; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/ * pm_callback; } ;
struct TYPE_5__ {TYPE_3__* bus; TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_REV_3_0 ; 
 int /*<<< orphan*/  XHCI_CAPLENGTH ; 
 int /*<<< orphan*/  XHCI_DBOFF ; 
 int /*<<< orphan*/  XHCI_HCIVERSION ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 unsigned int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  XHCI_HCSPARAMS0 ; 
 int /*<<< orphan*/  XHCI_HCSPARAMS1 ; 
 int /*<<< orphan*/  XHCI_HCSPARAMS2 ; 
 int /*<<< orphan*/  XHCI_HCSPARAMS3 ; 
 scalar_t__ XHCI_IMOD_DEFAULT ; 
 void* XHCI_MAX_DEVICES ; 
 unsigned int XHCI_MAX_RSEG ; 
 int XHCI_MAX_SCRATCHPADS ; 
 int /*<<< orphan*/  XHCI_PAGESIZE ; 
 int XHCI_PAGESIZE_4K ; 
 int /*<<< orphan*/  XHCI_RTSOFF ; 
 int FUNC10 (struct xhci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct xhci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct xhci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  capa ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  oper ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC16 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xhci_bus_methods ; 
 int /*<<< orphan*/  xhci_configure_msg ; 
 int /*<<< orphan*/  xhci_iterate_hw_softc ; 
 scalar_t__ xhcictlquirk ; 
 scalar_t__ xhcidma32 ; 

usb_error_t
FUNC17(struct xhci_softc *sc, device_t self, uint8_t dma32)
{
	uint32_t temp;

	FUNC0("\n");

	/* initialize some bus fields */
	sc->sc_bus.parent = self;

	/* set the bus revision */
	sc->sc_bus.usbrev = USB_REV_3_0;

	/* set up the bus struct */
	sc->sc_bus.methods = &xhci_bus_methods;

	/* set up devices array */
	sc->sc_bus.devices = sc->sc_devices;
	sc->sc_bus.devices_max = XHCI_MAX_DEVICES;

	/* set default cycle state in case of early interrupts */
	sc->sc_event_ccs = 1;
	sc->sc_command_ccs = 1;

	/* set up bus space offsets */
	sc->sc_capa_off = 0;
	sc->sc_oper_off = FUNC10(sc, capa, XHCI_CAPLENGTH);
	sc->sc_runt_off = FUNC12(sc, capa, XHCI_RTSOFF) & ~0x1F;
	sc->sc_door_off = FUNC12(sc, capa, XHCI_DBOFF) & ~0x3;

	FUNC0("CAPLENGTH=0x%x\n", sc->sc_oper_off);
	FUNC0("RUNTIMEOFFSET=0x%x\n", sc->sc_runt_off);
	FUNC0("DOOROFFSET=0x%x\n", sc->sc_door_off);

	FUNC0("xHCI version = 0x%04x\n", FUNC11(sc, capa, XHCI_HCIVERSION));

	if (!(FUNC12(sc, oper, XHCI_PAGESIZE) & XHCI_PAGESIZE_4K)) {
		FUNC14(sc->sc_bus.parent, "Controller does "
		    "not support 4K page size.\n");
		return (ENXIO);
	}

	temp = FUNC12(sc, capa, XHCI_HCSPARAMS0);

	FUNC0("HCS0 = 0x%08x\n", temp);

	/* set up context size */
	if (FUNC3(temp)) {
		sc->sc_ctx_is_64_byte = 1;
	} else {
		sc->sc_ctx_is_64_byte = 0;
	}

	/* get DMA bits */
	sc->sc_bus.dma_bits = (FUNC2(temp) &&
	    xhcidma32 == 0 && dma32 == 0) ? 64 : 32;

	FUNC14(self, "%d bytes context size, %d-bit DMA\n",
	    sc->sc_ctx_is_64_byte ? 64 : 32, (int)sc->sc_bus.dma_bits);

	/* enable 64Kbyte control endpoint quirk */
	sc->sc_bus.control_ep_quirk = (xhcictlquirk ? 1 : 0);

	temp = FUNC12(sc, capa, XHCI_HCSPARAMS1);

	/* get number of device slots */
	sc->sc_noport = FUNC5(temp);

	if (sc->sc_noport == 0) {
		FUNC14(sc->sc_bus.parent, "Invalid number "
		    "of ports: %u\n", sc->sc_noport);
		return (ENXIO);
	}

	sc->sc_noport = sc->sc_noport;
	sc->sc_noslot = FUNC4(temp);

	FUNC0("Max slots: %u\n", sc->sc_noslot);

	if (sc->sc_noslot > XHCI_MAX_DEVICES)
		sc->sc_noslot = XHCI_MAX_DEVICES;

	temp = FUNC12(sc, capa, XHCI_HCSPARAMS2);

	FUNC0("HCS2=0x%08x\n", temp);

	/* get number of scratchpads */
	sc->sc_noscratch = FUNC7(temp);

	if (sc->sc_noscratch > XHCI_MAX_SCRATCHPADS) {
		FUNC14(sc->sc_bus.parent, "XHCI request "
		    "too many scratchpads\n");
		return (ENOMEM);
	}

	FUNC0("Max scratch: %u\n", sc->sc_noscratch);

	/* get event table size */
	sc->sc_erst_max = 1U << FUNC6(temp);
	if (sc->sc_erst_max > XHCI_MAX_RSEG)
		sc->sc_erst_max = XHCI_MAX_RSEG;

	temp = FUNC12(sc, capa, XHCI_HCSPARAMS3);

	/* get maximum exit latency */
	sc->sc_exit_lat_max = FUNC8(temp) +
	    FUNC9(temp) + 250 /* us */;

	/* Check if we should use the default IMOD value. */
	if (sc->sc_imod_default == 0)
		sc->sc_imod_default = XHCI_IMOD_DEFAULT;

	/* get all DMA memory */
	if (FUNC16(&sc->sc_bus,
	    FUNC1(self), &xhci_iterate_hw_softc)) {
		return (ENOMEM);
	}

	/* set up command queue mutex and condition varible */
	FUNC13(&sc->sc_cmd_cv, "CMDQ");
	FUNC15(&sc->sc_cmd_sx, "CMDQ lock");

	sc->sc_config_msg[0].hdr.pm_callback = &xhci_configure_msg;
	sc->sc_config_msg[0].bus = &sc->sc_bus;
	sc->sc_config_msg[1].hdr.pm_callback = &xhci_configure_msg;
	sc->sc_config_msg[1].bus = &sc->sc_bus;

	return (0);
}