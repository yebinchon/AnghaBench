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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_4__ {size_t curr_dma_set; scalar_t__ short_frames_ok; } ;
struct usb_xfer {TYPE_2__* endpoint; scalar_t__ td_transfer_cache; TYPE_1__ flags_int; TYPE_3__** qh_start; } ;
struct TYPE_6__ {int /*<<< orphan*/  ed_tailp; int /*<<< orphan*/  ed_headp; int /*<<< orphan*/  page_cache; } ;
typedef  TYPE_3__ ohci_ed_t ;
struct TYPE_5__ {int toggle_next; int /*<<< orphan*/ * methods; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct usb_xfer*) ; 
 int OHCI_HALTED ; 
 int OHCI_TOGGLECARRY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*) ; 
 int /*<<< orphan*/  ohci_device_isoc_methods ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t
FUNC6(struct usb_xfer *xfer)
{
	ohci_ed_t *ed;
	uint32_t ed_headp;
	uint32_t ed_tailp;

	FUNC0(13, "xfer=%p checking transfer\n", xfer);

	ed = xfer->qh_start[xfer->flags_int.curr_dma_set];

	FUNC5(ed->page_cache);
	ed_headp = FUNC1(ed->ed_headp);
	ed_tailp = FUNC1(ed->ed_tailp);

	if ((ed_headp & OHCI_HALTED) ||
	    (((ed_headp ^ ed_tailp) & (~0xF)) == 0)) {
		if (xfer->endpoint->methods == &ohci_device_isoc_methods) {
			/* isochronous transfer */
			FUNC3(xfer);
		} else {
			if (xfer->flags_int.short_frames_ok) {
				FUNC2(xfer);
				if (xfer->td_transfer_cache) {
					/* not finished yet */
					return (0);
				}
			}
			/* store data-toggle */
			if (ed_headp & OHCI_TOGGLECARRY) {
				xfer->endpoint->toggle_next = 1;
			} else {
				xfer->endpoint->toggle_next = 0;
			}

			/* non-isochronous transfer */
			FUNC4(xfer);
		}
		return (1);
	}
	FUNC0(13, "xfer=%p is still active\n", xfer);
	return (0);
}