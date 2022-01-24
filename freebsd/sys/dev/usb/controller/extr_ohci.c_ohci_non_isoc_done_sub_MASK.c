#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_3__ {scalar_t__ short_frames_ok; } ;
struct usb_xfer {size_t aframes; size_t nframes; int* frlengths; void* td_transfer_last; TYPE_2__* td_transfer_cache; TYPE_1__ flags_int; } ;
struct TYPE_4__ {int len; struct TYPE_4__* alt_next; struct TYPE_4__* obj_next; int /*<<< orphan*/  td_be; int /*<<< orphan*/  td_flags; int /*<<< orphan*/  td_cbp; int /*<<< orphan*/  page_cache; } ;
typedef  TYPE_2__ ohci_td_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,int /*<<< orphan*/ ) ; 
 int OHCI_CC_STALL ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int OHCI_PAGE_SIZE ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  USB_ERR_IOERROR ; 
 int /*<<< orphan*/  USB_ERR_NORMAL_COMPLETION ; 
 int /*<<< orphan*/  USB_ERR_STALLED ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ohci_cc_strs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static usb_error_t
FUNC7(struct usb_xfer *xfer)
{
	ohci_td_t *td;
	ohci_td_t *td_alt_next;
	uint32_t temp;
	uint32_t phy_start;
	uint32_t phy_end;
	uint32_t td_flags;
	uint16_t cc;

	td = xfer->td_transfer_cache;
	td_alt_next = td->alt_next;
	td_flags = 0;

	if (xfer->aframes != xfer->nframes) {
		FUNC6(xfer, xfer->aframes, 0);
	}
	while (1) {

		FUNC5(td->page_cache);
		phy_start = FUNC4(td->td_cbp);
		td_flags = FUNC4(td->td_flags);
		cc = FUNC3(td_flags);

		if (phy_start) {
			/*
			 * short transfer - compute the number of remaining
			 * bytes in the hardware buffer:
			 */
			phy_end = FUNC4(td->td_be);
			temp = (FUNC1(phy_start ^ phy_end) ?
			    (OHCI_PAGE_SIZE + 1) : 0x0001);
			temp += FUNC2(phy_end);
			temp -= FUNC2(phy_start);

			if (temp > td->len) {
				/* guard against corruption */
				cc = OHCI_CC_STALL;
			} else if (xfer->aframes != xfer->nframes) {
				/*
				 * Sum up total transfer length
				 * in "frlengths[]":
				 */
				xfer->frlengths[xfer->aframes] += td->len - temp;
			}
		} else {
			if (xfer->aframes != xfer->nframes) {
				/* transfer was complete */
				xfer->frlengths[xfer->aframes] += td->len;
			}
		}
		/* Check for last transfer */
		if (((void *)td) == xfer->td_transfer_last) {
			td = NULL;
			break;
		}
		/* Check transfer status */
		if (cc) {
			/* the transfer is finished */
			td = NULL;
			break;
		}
		/* Check for short transfer */
		if (phy_start) {
			if (xfer->flags_int.short_frames_ok) {
				/* follow alt next */
				td = td->alt_next;
			} else {
				/* the transfer is finished */
				td = NULL;
			}
			break;
		}
		td = td->obj_next;

		if (td->alt_next != td_alt_next) {
			/* this USB frame is complete */
			break;
		}
	}

	/* update transfer cache */

	xfer->td_transfer_cache = td;

	FUNC0(16, "error cc=%d (%s)\n",
	    cc, ohci_cc_strs[cc]);

	return ((cc == 0) ? USB_ERR_NORMAL_COMPLETION :
	    (cc == OHCI_CC_STALL) ? USB_ERR_STALLED : USB_ERR_IOERROR);
}