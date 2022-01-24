#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct usb_xfer {int nframes; TYPE_5__* endpoint; scalar_t__ isoc_time_complete; TYPE_4__* xroot; } ;
struct TYPE_7__ {scalar_t__ status_high_speed; } ;
struct dwc_otg_softc {int /*<<< orphan*/  sc_bus; TYPE_2__ sc_flags; } ;
struct TYPE_10__ {int isoc_next; int is_synced; } ;
struct TYPE_9__ {TYPE_3__* udev; int /*<<< orphan*/  bus; } ;
struct TYPE_6__ {scalar_t__ usb_mode; } ;
struct TYPE_8__ {scalar_t__ speed; TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOTG_DSTS ; 
 int /*<<< orphan*/  DOTG_HFNUM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (int) ; 
 struct dwc_otg_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int DWC_OTG_FRAME_MASK ; 
 int FUNC3 (struct dwc_otg_softc*,int /*<<< orphan*/ ) ; 
 int HFNUM_FRNUM_MASK ; 
 scalar_t__ USB_MODE_HOST ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC8(struct usb_xfer *xfer)
{
	struct dwc_otg_softc *sc = FUNC2(xfer->xroot->bus);
	uint32_t temp;
	uint32_t msframes;
	uint32_t framenum;
	uint8_t shift = FUNC7(xfer);

	FUNC0(6, "xfer=%p next=%d nframes=%d\n",
	    xfer, xfer->endpoint->isoc_next, xfer->nframes);

	if (xfer->xroot->udev->flags.usb_mode == USB_MODE_HOST) {
		temp = FUNC3(sc, DOTG_HFNUM);

		/* get the current frame index */
		framenum = (temp & HFNUM_FRNUM_MASK);
	} else {
		temp = FUNC3(sc, DOTG_DSTS);

		/* get the current frame index */
		framenum = FUNC1(temp);
	}

	/*
	 * Check if port is doing 8000 or 1000 frames per second:
	 */
	if (sc->sc_flags.status_high_speed)
		framenum /= 8;

	framenum &= DWC_OTG_FRAME_MASK;

	/*
	 * Compute number of milliseconds worth of data traffic for
	 * this USB transfer:
	 */ 
	if (xfer->xroot->udev->speed == USB_SPEED_HIGH)
		msframes = ((xfer->nframes << shift) + 7) / 8;
	else
		msframes = xfer->nframes;

	/*
	 * check if the frame index is within the window where the frames
	 * will be inserted
	 */
	temp = (framenum - xfer->endpoint->isoc_next) & DWC_OTG_FRAME_MASK;

	if ((xfer->endpoint->is_synced == 0) || (temp < msframes)) {
		/*
		 * If there is data underflow or the pipe queue is
		 * empty we schedule the transfer a few frames ahead
		 * of the current frame position. Else two isochronous
		 * transfers might overlap.
		 */
		xfer->endpoint->isoc_next = (framenum + 3) & DWC_OTG_FRAME_MASK;
		xfer->endpoint->is_synced = 1;
		FUNC0(3, "start next=%d\n", xfer->endpoint->isoc_next);
	}
	/*
	 * compute how many milliseconds the insertion is ahead of the
	 * current frame position:
	 */
	temp = (xfer->endpoint->isoc_next - framenum) & DWC_OTG_FRAME_MASK;

	/*
	 * pre-compute when the isochronous transfer will be finished:
	 */
	xfer->isoc_time_complete =
		FUNC6(&sc->sc_bus, framenum) + temp + msframes;

	/* setup TDs */
	FUNC4(xfer);

	/* compute frame number for next insertion */
	xfer->endpoint->isoc_next += msframes;

	/* start TD chain */
	FUNC5(xfer);
}