#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usb_error_t ;
typedef  uintptr_t uint64_t ;
typedef  int uint32_t ;
typedef  size_t uint16_t ;
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  root_pc; int /*<<< orphan*/ * scratch_pc; int /*<<< orphan*/  ctx_pc; } ;
struct xhci_softc {int sc_event_ccs; int sc_command_ccs; int sc_noslot; size_t sc_noscratch; int sc_imod_default; TYPE_4__ sc_bus; int /*<<< orphan*/  (* sc_port_route ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__ sc_hw; int /*<<< orphan*/  sc_erst_max; scalar_t__ sc_command_idx; scalar_t__ sc_event_idx; } ;
struct xhci_hw_root {TYPE_3__* hwr_commands; TYPE_2__* hwr_ring_seg; int /*<<< orphan*/ * hwr_events; void** qwSpBufPtr; void** qwBaaDevCtxAddr; } ;
struct xhci_dev_ctx_addr {TYPE_3__* hwr_commands; TYPE_2__* hwr_ring_seg; int /*<<< orphan*/ * hwr_events; void** qwSpBufPtr; void** qwBaaDevCtxAddr; } ;
struct usb_page_search {uintptr_t physaddr; struct xhci_hw_root* buffer; } ;
struct TYPE_8__ {void* qwTrb0; } ;
struct TYPE_7__ {int /*<<< orphan*/  dwEvrsTableSize; void* qwEvrsTablePtr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ USB_ERR_IOERROR ; 
 int XHCI_CMD_HSEE ; 
 int XHCI_CMD_INTE ; 
 int XHCI_CMD_RS ; 
 int /*<<< orphan*/  XHCI_CONFIG ; 
 int /*<<< orphan*/  XHCI_CRCR_HI ; 
 int /*<<< orphan*/  XHCI_CRCR_LO ; 
 int XHCI_CRCR_LO_RCS ; 
 int /*<<< orphan*/  XHCI_DCBAAP_HI ; 
 int /*<<< orphan*/  XHCI_DCBAAP_LO ; 
 int /*<<< orphan*/  XHCI_DNCTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int XHCI_IMAN_INTR_ENA ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int XHCI_MAX_COMMANDS ; 
 int /*<<< orphan*/  XHCI_MAX_EVENTS ; 
 int XHCI_STS_HCH ; 
 int /*<<< orphan*/  XHCI_USBCMD ; 
 int /*<<< orphan*/  XHCI_USBSTS ; 
 int FUNC9 (struct xhci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xhci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 void* FUNC13 (uintptr_t) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC14 (struct xhci_hw_root*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  oper ; 
 int /*<<< orphan*/  runt ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct usb_page_search*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 
 int /*<<< orphan*/  xhci_iterate_hw_softc ; 
 scalar_t__ FUNC20 (struct xhci_softc*) ; 
 int /*<<< orphan*/  xhciroute ; 

usb_error_t
FUNC21(struct xhci_softc *sc)
{
	struct usb_page_search buf_res;
	struct xhci_hw_root *phwr;
	struct xhci_dev_ctx_addr *pdctxa;
	usb_error_t err;
	uint64_t addr;
	uint32_t temp;
	uint16_t i;

	FUNC0("\n");

	sc->sc_event_ccs = 1;
	sc->sc_event_idx = 0;
	sc->sc_command_ccs = 1;
	sc->sc_command_idx = 0;

	err = FUNC20(sc);
	if (err)
		return (err);

	/* set up number of device slots */
	FUNC0("CONFIG=0x%08x -> 0x%08x\n",
	    FUNC9(sc, oper, XHCI_CONFIG), sc->sc_noslot);

	FUNC10(sc, oper, XHCI_CONFIG, sc->sc_noslot);

	temp = FUNC9(sc, oper, XHCI_USBSTS);

	/* clear interrupts */
	FUNC10(sc, oper, XHCI_USBSTS, temp);
	/* disable all device notifications */
	FUNC10(sc, oper, XHCI_DNCTRL, 0);

	/* set up device context base address */
	FUNC18(&sc->sc_hw.ctx_pc, 0, &buf_res);
	pdctxa = buf_res.buffer;
	FUNC14(pdctxa, 0, sizeof(*pdctxa));

	addr = buf_res.physaddr;
	addr += (uintptr_t)&((struct xhci_dev_ctx_addr *)0)->qwSpBufPtr[0];

	/* slot 0 points to the table of scratchpad pointers */
	pdctxa->qwBaaDevCtxAddr[0] = FUNC13(addr);

	for (i = 0; i != sc->sc_noscratch; i++) {
		struct usb_page_search buf_scp;
		FUNC18(&sc->sc_hw.scratch_pc[i], 0, &buf_scp);
		pdctxa->qwSpBufPtr[i] = FUNC13((uint64_t)buf_scp.physaddr);
	}

	addr = buf_res.physaddr;

	FUNC10(sc, oper, XHCI_DCBAAP_LO, (uint32_t)addr);
	FUNC10(sc, oper, XHCI_DCBAAP_HI, (uint32_t)(addr >> 32));
	FUNC10(sc, oper, XHCI_DCBAAP_LO, (uint32_t)addr);
	FUNC10(sc, oper, XHCI_DCBAAP_HI, (uint32_t)(addr >> 32));

	/* set up event table size */
	FUNC0("ERSTSZ=0x%08x -> 0x%08x\n",
	    FUNC9(sc, runt, FUNC5(0)), sc->sc_erst_max);

	FUNC10(sc, runt, FUNC5(0), FUNC6(sc->sc_erst_max));

	/* set up interrupt rate */
	FUNC10(sc, runt, FUNC8(0), sc->sc_imod_default);

	FUNC18(&sc->sc_hw.root_pc, 0, &buf_res);

	phwr = buf_res.buffer;
	addr = buf_res.physaddr;
	addr += (uintptr_t)&((struct xhci_hw_root *)0)->hwr_events[0];

	/* reset hardware root structure */
	FUNC14(phwr, 0, sizeof(*phwr));

	phwr->hwr_ring_seg[0].qwEvrsTablePtr = FUNC13(addr);
	phwr->hwr_ring_seg[0].dwEvrsTableSize = FUNC12(XHCI_MAX_EVENTS);

	FUNC0("ERDP(0)=0x%016llx\n", (unsigned long long)addr);

	FUNC10(sc, runt, FUNC2(0), (uint32_t)addr);
	FUNC10(sc, runt, FUNC1(0), (uint32_t)(addr >> 32));

	addr = buf_res.physaddr;

	FUNC0("ERSTBA(0)=0x%016llx\n", (unsigned long long)addr);

	FUNC10(sc, runt, FUNC4(0), (uint32_t)addr);
	FUNC10(sc, runt, FUNC3(0), (uint32_t)(addr >> 32));

	/* set up interrupter registers */
	temp = FUNC9(sc, runt, FUNC7(0));
	temp |= XHCI_IMAN_INTR_ENA;
	FUNC10(sc, runt, FUNC7(0), temp);

	/* set up command ring control base address */
	addr = buf_res.physaddr;
	addr += (uintptr_t)&((struct xhci_hw_root *)0)->hwr_commands[0];

	FUNC0("CRCR=0x%016llx\n", (unsigned long long)addr);

	FUNC10(sc, oper, XHCI_CRCR_LO, ((uint32_t)addr) | XHCI_CRCR_LO_RCS);
	FUNC10(sc, oper, XHCI_CRCR_HI, (uint32_t)(addr >> 32));

	phwr->hwr_commands[XHCI_MAX_COMMANDS - 1].qwTrb0 = FUNC13(addr);

	FUNC16(&sc->sc_bus, &xhci_iterate_hw_softc);

	/* Go! */
	FUNC10(sc, oper, XHCI_USBCMD, XHCI_CMD_RS |
	    XHCI_CMD_INTE | XHCI_CMD_HSEE);

	for (i = 0; i != 100; i++) {
		FUNC17(NULL, hz / 100);
		temp = FUNC9(sc, oper, XHCI_USBSTS) & XHCI_STS_HCH;
		if (!temp)
			break;
	}
	if (temp) {
		FUNC10(sc, oper, XHCI_USBCMD, 0);
		FUNC11(sc->sc_bus.parent, "Run timeout.\n");
		return (USB_ERR_IOERROR);
	}

	/* catch any lost interrupts */
	FUNC19(&sc->sc_bus);

	if (sc->sc_port_route != NULL) {
		/* Route all ports to the XHCI by default */
		sc->sc_port_route(sc->sc_bus.parent,
		    ~xhciroute, xhciroute);
	}
	return (0);
}