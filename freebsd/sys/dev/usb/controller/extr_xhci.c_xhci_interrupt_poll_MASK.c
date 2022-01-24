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
typedef  int uint8_t ;
typedef  uintptr_t uint64_t ;
typedef  int uint32_t ;
typedef  size_t uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  root_pc; } ;
struct xhci_softc {size_t sc_event_idx; int sc_event_ccs; TYPE_1__ sc_hw; } ;
struct xhci_hw_root {TYPE_2__* hwr_events; } ;
struct usb_page_search {uintptr_t physaddr; struct xhci_hw_root* buffer; } ;
struct TYPE_5__ {int /*<<< orphan*/  dwTrb3; int /*<<< orphan*/  dwTrb2; int /*<<< orphan*/  qwTrb0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,size_t,int,long long,long,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 uintptr_t XHCI_ERDP_LO_BUSY ; 
 size_t XHCI_MAX_EVENTS ; 
 int XHCI_TRB_3_CYCLE_BIT ; 
 int FUNC4 (int) ; 
#define  XHCI_TRB_EVENT_CMD_COMPLETE 129 
#define  XHCI_TRB_EVENT_TRANSFER 128 
 int /*<<< orphan*/  FUNC5 (struct xhci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  runt ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct usb_page_search*) ; 
 int FUNC10 (struct xhci_softc*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct xhci_softc*,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC12(struct xhci_softc *sc)
{
	struct usb_page_search buf_res;
	struct xhci_hw_root *phwr;
	uint64_t addr;
	uint32_t temp;
	int retval = 0;
	uint16_t i;
	uint8_t event;
	uint8_t j;
	uint8_t k;
	uint8_t t;

	FUNC9(&sc->sc_hw.root_pc, 0, &buf_res);

	phwr = buf_res.buffer;

	/* Receive any events */

	FUNC8(&sc->sc_hw.root_pc);

	i = sc->sc_event_idx;
	j = sc->sc_event_ccs;
	t = 2;

	while (1) {

		temp = FUNC6(phwr->hwr_events[i].dwTrb3);

		k = (temp & XHCI_TRB_3_CYCLE_BIT) ? 1 : 0;

		if (j != k)
			break;

		event = FUNC4(temp);

		FUNC1(10, "event[%u] = %u (0x%016llx 0x%08lx 0x%08lx)\n",
		    i, event, (long long)FUNC7(phwr->hwr_events[i].qwTrb0),
		    (long)FUNC6(phwr->hwr_events[i].dwTrb2),
		    (long)FUNC6(phwr->hwr_events[i].dwTrb3));

		switch (event) {
		case XHCI_TRB_EVENT_TRANSFER:
			FUNC11(sc, &phwr->hwr_events[i]);
			break;
		case XHCI_TRB_EVENT_CMD_COMPLETE:
			retval |= FUNC10(sc, &phwr->hwr_events[i]);
			break;
		default:
			FUNC0("Unhandled event = %u\n", event);
			break;
		}

		i++;

		if (i == XHCI_MAX_EVENTS) {
			i = 0;
			j ^= 1;

			/* check for timeout */
			if (!--t)
				break;
		}
	}

	sc->sc_event_idx = i;
	sc->sc_event_ccs = j;

	/*
	 * NOTE: The Event Ring Dequeue Pointer Register is 64-bit
	 * latched. That means to activate the register we need to
	 * write both the low and high double word of the 64-bit
	 * register.
	 */

	addr = buf_res.physaddr;
	addr += (uintptr_t)&((struct xhci_hw_root *)0)->hwr_events[i];

	/* try to clear busy bit */
	addr |= XHCI_ERDP_LO_BUSY;

	FUNC5(sc, runt, FUNC3(0), (uint32_t)addr);
	FUNC5(sc, runt, FUNC2(0), (uint32_t)(addr >> 32));

	return (retval);
}