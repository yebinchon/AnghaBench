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
typedef  uintptr_t uint64_t ;
typedef  int uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  root_pc; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus_mtx; } ;
struct xhci_softc {int sc_command_ccs; TYPE_2__ sc_hw; scalar_t__ sc_command_idx; TYPE_1__ sc_bus; } ;
struct xhci_hw_root {TYPE_3__* hwr_commands; } ;
struct usb_page_search {uintptr_t physaddr; struct xhci_hw_root* buffer; } ;
struct TYPE_6__ {int /*<<< orphan*/  qwTrb0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int USB_ERR_IOERROR ; 
 int /*<<< orphan*/  XHCI_CRCR_HI ; 
 int /*<<< orphan*/  XHCI_CRCR_LO ; 
 int XHCI_CRCR_LO_CA ; 
 int XHCI_CRCR_LO_CRR ; 
 int XHCI_CRCR_LO_CS ; 
 int XHCI_CRCR_LO_RCS ; 
 int XHCI_MAX_COMMANDS ; 
 int FUNC1 (struct xhci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (uintptr_t) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  oper ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct usb_page_search*) ; 

__attribute__((used)) static int
FUNC8(struct xhci_softc *sc)
{
	struct usb_page_search buf_res;
	struct xhci_hw_root *phwr;
	uint64_t addr;
	uint32_t temp;

	FUNC0("\n");

	temp = FUNC1(sc, oper, XHCI_CRCR_LO);
	if (temp & XHCI_CRCR_LO_CRR) {
		FUNC0("Command ring running\n");
		temp &= ~(XHCI_CRCR_LO_CS | XHCI_CRCR_LO_CA);

		/*
		 * Try to abort the last command as per section
		 * 4.6.1.2 "Aborting a Command" of the XHCI
		 * specification:
		 */

		/* stop and cancel */
		FUNC2(sc, oper, XHCI_CRCR_LO, temp | XHCI_CRCR_LO_CS);
		FUNC2(sc, oper, XHCI_CRCR_HI, 0);

		FUNC2(sc, oper, XHCI_CRCR_LO, temp | XHCI_CRCR_LO_CA);
		FUNC2(sc, oper, XHCI_CRCR_HI, 0);

 		/* wait 250ms */
 		FUNC5(&sc->sc_bus.bus_mtx, hz / 4);

		/* check if command ring is still running */
		temp = FUNC1(sc, oper, XHCI_CRCR_LO);
		if (temp & XHCI_CRCR_LO_CRR) {
			FUNC0("Comand ring still running\n");
			return (USB_ERR_IOERROR);
		}
	}

	/* reset command ring */
	sc->sc_command_ccs = 1;
	sc->sc_command_idx = 0;

	FUNC7(&sc->sc_hw.root_pc, 0, &buf_res);

	/* set up command ring control base address */
	addr = buf_res.physaddr;
	phwr = buf_res.buffer;
	addr += (uintptr_t)&((struct xhci_hw_root *)0)->hwr_commands[0];

	FUNC0("CRCR=0x%016llx\n", (unsigned long long)addr);

	FUNC4(phwr->hwr_commands, 0, sizeof(phwr->hwr_commands));
	phwr->hwr_commands[XHCI_MAX_COMMANDS - 1].qwTrb0 = FUNC3(addr);

	FUNC6(&sc->sc_hw.root_pc);

	FUNC2(sc, oper, XHCI_CRCR_LO, ((uint32_t)addr) | XHCI_CRCR_LO_RCS);
	FUNC2(sc, oper, XHCI_CRCR_HI, (uint32_t)(addr >> 32));

	return (0);
}