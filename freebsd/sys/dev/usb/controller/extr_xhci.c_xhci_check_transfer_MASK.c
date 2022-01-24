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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct xhci_trb {int /*<<< orphan*/  dwTrb3; int /*<<< orphan*/  dwTrb2; int /*<<< orphan*/  qwTrb0; } ;
struct xhci_td {scalar_t__ td_self; int ntrb; int len; int remainder; struct xhci_td* obj_next; struct xhci_td* alt_next; int /*<<< orphan*/  page_cache; scalar_t__ status; TYPE_3__* td_trb; } ;
struct TYPE_6__ {TYPE_1__* devs; } ;
struct xhci_softc {scalar_t__ sc_noslot; TYPE_2__ sc_hw; } ;
struct xhci_endpoint_ext {scalar_t__ trb_ep_mode; struct usb_xfer** xfer; } ;
struct TYPE_8__ {scalar_t__ control_xfr; scalar_t__ isochronous_xfr; scalar_t__ short_frames_ok; } ;
struct usb_xfer {void* td_transfer_last; struct xhci_td* td_transfer_cache; TYPE_4__ flags_int; } ;
typedef  scalar_t__ int64_t ;
struct TYPE_7__ {int /*<<< orphan*/  dwTrb2; } ;
struct TYPE_5__ {struct xhci_endpoint_ext* endp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,...) ; 
 scalar_t__ USB_EP_MODE_STREAMS ; 
 scalar_t__ XHCI_MAX_ENDPOINTS ; 
 int XHCI_MAX_STREAMS ; 
 int XHCI_MAX_TRANSFERS ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ XHCI_TRB_ERROR_SHORT_PKT ; 
 scalar_t__ XHCI_TRB_ERROR_SUCCESS ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC14(struct xhci_softc *sc, struct xhci_trb *trb)
{
	struct xhci_endpoint_ext *pepext;
	int64_t offset;
	uint64_t td_event;
	uint32_t temp;
	uint32_t remainder;
	uint16_t stream_id = 0;
	uint16_t i;
	uint8_t status;
	uint8_t halted;
	uint8_t epno;
	uint8_t index;

	/* decode TRB */
	td_event = FUNC8(trb->qwTrb0);
	temp = FUNC7(trb->dwTrb2);

	remainder = FUNC4(temp);
	status = FUNC3(temp);

	temp = FUNC7(trb->dwTrb3);
	epno = FUNC5(temp);
	index = FUNC6(temp);

	/* check if error means halted */
	halted = (status != XHCI_TRB_ERROR_SHORT_PKT &&
	    status != XHCI_TRB_ERROR_SUCCESS);

	FUNC0("slot=%u epno=%u remainder=%u status=%u\n",
	    index, epno, remainder, status);

	if (index > sc->sc_noslot) {
		FUNC0("Invalid slot.\n");
		return;
	}

	if ((epno == 0) || (epno >= XHCI_MAX_ENDPOINTS)) {
		FUNC0("Invalid endpoint.\n");
		return;
	}

	pepext = &sc->sc_hw.devs[index].endp[epno];

	/* try to find the USB transfer that generated the event */
	for (i = 0;; i++) {
		struct usb_xfer *xfer;
		struct xhci_td *td;

		if (i == (XHCI_MAX_TRANSFERS - 1)) {
			if (pepext->trb_ep_mode != USB_EP_MODE_STREAMS ||
			    stream_id == (XHCI_MAX_STREAMS - 1))
				break;
			stream_id++;
			i = 0;
			FUNC1(5, "stream_id=%u\n", stream_id);
		}

		xfer = pepext->xfer[i + (XHCI_MAX_TRANSFERS * stream_id)];
		if (xfer == NULL)
			continue;

		td = xfer->td_transfer_cache;

		FUNC1(5, "Checking if 0x%016llx == (0x%016llx .. 0x%016llx)\n",
			(long long)td_event,
			(long long)td->td_self,
			(long long)td->td_self + sizeof(td->td_trb));

		/*
		 * NOTE: Some XHCI implementations might not trigger
		 * an event on the last LINK TRB so we need to
		 * consider both the last and second last event
		 * address as conditions for a successful transfer.
		 *
		 * NOTE: We assume that the XHCI will only trigger one
		 * event per chain of TRBs.
		 */

		offset = td_event - td->td_self;

		if (offset >= 0 &&
		    offset < (int64_t)sizeof(td->td_trb)) {

			FUNC10(td->page_cache);

			/* compute rest of remainder, if any */
			for (i = (offset / 16) + 1; i < td->ntrb; i++) {
				temp = FUNC7(td->td_trb[i].dwTrb2);
				remainder += FUNC2(temp);
			}

			FUNC1(5, "New remainder: %u\n", remainder);

			/* clear isochronous transfer errors */
			if (xfer->flags_int.isochronous_xfr) {
				if (halted) {
					halted = 0;
					status = XHCI_TRB_ERROR_SUCCESS;
					remainder = td->len;
				}
			}

			/* "td->remainder" is verified later */
			td->remainder = remainder;
			td->status = status;

			FUNC9(td->page_cache);

			/*
			 * 1) Last transfer descriptor makes the
			 * transfer done
			 */
			if (((void *)td) == xfer->td_transfer_last) {
				FUNC0("TD is last\n");
				FUNC12(xfer);
				break;
			}

			/*
			 * 2) Any kind of error makes the transfer
			 * done
			 */
			if (halted) {
				FUNC0("TD has I/O error\n");
				FUNC12(xfer);
				break;
			}

			/*
			 * 3) If there is no alternate next transfer,
			 * a short packet also makes the transfer done
			 */
			if (td->remainder > 0) {
				if (td->alt_next == NULL) {
					FUNC0(
					    "short TD has no alternate next\n");
					FUNC12(xfer);
					break;
				}
				FUNC0("TD has short pkt\n");
				if (xfer->flags_int.short_frames_ok ||
				    xfer->flags_int.isochronous_xfr ||
				    xfer->flags_int.control_xfr) {
					/* follow the alt next */
					xfer->td_transfer_cache = td->alt_next;
					FUNC11(xfer);
					break;
				}
				FUNC13(xfer);
				FUNC12(xfer);
				break;
			}

			/*
			 * 4) Transfer complete - go to next TD
			 */
			FUNC0("Following next TD\n");
			xfer->td_transfer_cache = td->obj_next;
			FUNC11(xfer);
			break;		/* there should only be one match */
		}
	}
}