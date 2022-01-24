#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t usb_stream_t ;
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint64_t ;
struct xhci_trb {void* dwTrb3; void* dwTrb2; void* qwTrb0; } ;
struct xhci_td {int ntrb; scalar_t__ td_self; int /*<<< orphan*/  page_cache; struct xhci_trb* td_trb; } ;
struct xhci_softc {int /*<<< orphan*/ * sc_config_msg; int /*<<< orphan*/  sc_bus; } ;
struct xhci_endpoint_ext {scalar_t__ physaddr; scalar_t__* trb_used; scalar_t__ trb_ep_maxp; int trb_halted; scalar_t__ trb_running; scalar_t__* trb_index; struct usb_xfer** xfer; int /*<<< orphan*/  page_cache; struct xhci_trb* trb; } ;
struct TYPE_7__ {int bandwidth_reclaimed; scalar_t__ control_xfr; } ;
struct usb_xfer {size_t stream_id; TYPE_3__ flags_int; scalar_t__ qh_pos; TYPE_2__* xroot; TYPE_1__* endpoint; struct xhci_td* td_transfer_last; struct xhci_td* td_transfer_first; } ;
struct TYPE_8__ {int bmAttributes; scalar_t__* wMaxPacketSize; } ;
struct TYPE_6__ {int /*<<< orphan*/  bus; int /*<<< orphan*/  udev; } ;
struct TYPE_5__ {TYPE_4__* edesc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
#define  UE_CONTROL 129 
#define  UE_INTERRUPT 128 
 int UE_XFERTYPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USB_ERR_NOMEM ; 
 struct xhci_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int XHCI_MAX_TRANSFERS ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int XHCI_TRB_3_CYCLE_BIT ; 
 int XHCI_TRB_3_IOC_BIT ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XHCI_TRB_TYPE_LINK ; 
 void* FUNC6 (int) ; 
 void* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct xhci_trb*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*) ; 
 struct xhci_endpoint_ext* FUNC12 (int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static usb_error_t
FUNC13(struct usb_xfer *xfer)
{
	struct xhci_td *td_first;
	struct xhci_td *td_last;
	struct xhci_trb *trb_link;
	struct xhci_endpoint_ext *pepext;
	uint64_t addr;
	usb_stream_t id;
	uint8_t i;
	uint8_t inext;
	uint8_t trb_limit;

	FUNC1(8, "\n");

	id = xfer->stream_id;

	/* check if already inserted */
	if (xfer->flags_int.bandwidth_reclaimed) {
		FUNC1(8, "Already in schedule\n");
		return (0);
	}

	pepext = FUNC12(xfer->xroot->udev,
	    xfer->endpoint->edesc);

	td_first = xfer->td_transfer_first;
	td_last = xfer->td_transfer_last;
	addr = pepext->physaddr;

	switch (xfer->endpoint->edesc->bmAttributes & UE_XFERTYPE) {
	case UE_CONTROL:
	case UE_INTERRUPT:
		/* single buffered */
		trb_limit = 1;
		break;
	default:
		/* multi buffered */
		trb_limit = (XHCI_MAX_TRANSFERS - 2);
		break;
	}

	if (pepext->trb_used[id] >= trb_limit) {
		FUNC1(8, "Too many TDs queued.\n");
		return (USB_ERR_NOMEM);
	}

	/* check if bMaxPacketSize changed */
	if (xfer->flags_int.control_xfr != 0 &&
	    pepext->trb_ep_maxp != xfer->endpoint->edesc->wMaxPacketSize[0]) {

		FUNC1(8, "Reconfigure control endpoint\n");

		/* force driver to reconfigure endpoint */
		pepext->trb_halted = 1;
		pepext->trb_running = 0;
	}

	/* check for stopped condition, after putting transfer on interrupt queue */
	if (pepext->trb_running == 0) {
		struct xhci_softc *sc = FUNC3(xfer->xroot->bus);

		FUNC1(8, "Not running\n");

		/* start configuration */
		(void)FUNC9(FUNC2(&sc->sc_bus),
		    &sc->sc_config_msg[0], &sc->sc_config_msg[1]);
		return (0);
	}

	pepext->trb_used[id]++;

	/* get current TRB index */
	i = pepext->trb_index[id];

	/* get next TRB index */
	inext = (i + 1);

	/* the last entry of the ring is a hardcoded link TRB */
	if (inext >= (XHCI_MAX_TRANSFERS - 1))
		inext = 0;

	/* store next TRB index, before stream ID offset is added */
	pepext->trb_index[id] = inext;

	/* offset for stream */
	i += id * XHCI_MAX_TRANSFERS;
	inext += id * XHCI_MAX_TRANSFERS;

	/* compute terminating return address */
	addr += (inext * sizeof(struct xhci_trb));

	/* compute link TRB pointer */
	trb_link = td_last->td_trb + td_last->ntrb;

	/* update next pointer of last link TRB */
	trb_link->qwTrb0 = FUNC7(addr);
	trb_link->dwTrb2 = FUNC6(FUNC4(0));
	trb_link->dwTrb3 = FUNC6(XHCI_TRB_3_IOC_BIT |
	    XHCI_TRB_3_CYCLE_BIT |
	    FUNC5(XHCI_TRB_TYPE_LINK));

#ifdef USB_DEBUG
	xhci_dump_trb(&td_last->td_trb[td_last->ntrb]);
#endif
	FUNC8(td_last->page_cache);

	/* write ahead chain end marker */

	pepext->trb[inext].qwTrb0 = 0;
	pepext->trb[inext].dwTrb2 = 0;
	pepext->trb[inext].dwTrb3 = 0;

	/* update next pointer of link TRB */

	pepext->trb[i].qwTrb0 = FUNC7((uint64_t)td_first->td_self);
	pepext->trb[i].dwTrb2 = FUNC6(FUNC4(0));

#ifdef USB_DEBUG
	xhci_dump_trb(&pepext->trb[i]);
#endif
	FUNC8(pepext->page_cache);

	/* toggle cycle bit which activates the transfer chain */

	pepext->trb[i].dwTrb3 = FUNC6(XHCI_TRB_3_CYCLE_BIT |
	    FUNC5(XHCI_TRB_TYPE_LINK));

	FUNC8(pepext->page_cache);

	FUNC0("qh_pos = %u\n", i);

	pepext->xfer[i] = xfer;

	xfer->qh_pos = i;

	xfer->flags_int.bandwidth_reclaimed = 1;

	FUNC11(xfer);

	return (0);
}