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
typedef  int uint32_t ;
struct usb_xfer {int nframes; TYPE_2__* endpoint; scalar_t__ isoc_time_complete; TYPE_1__* xroot; } ;
struct musbotg_softc {int /*<<< orphan*/  sc_bus; } ;
struct TYPE_4__ {int isoc_next; int is_synced; } ;
struct TYPE_3__ {int /*<<< orphan*/  udev; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int MUSB2_MASK_FRAME ; 
 int FUNC1 (struct musbotg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUSB2_REG_FRAME ; 
 struct musbotg_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct usb_xfer *xfer)
{
	struct musbotg_softc *sc = FUNC2(xfer->xroot->bus);
	uint32_t temp;
	uint32_t nframes;
	uint32_t fs_frames;

	FUNC0(5, "xfer=%p next=%d nframes=%d\n",
	    xfer, xfer->endpoint->isoc_next, xfer->nframes);

	/* get the current frame index */

	nframes = FUNC1(sc, MUSB2_REG_FRAME);

	/*
	 * check if the frame index is within the window where the frames
	 * will be inserted
	 */
	temp = (nframes - xfer->endpoint->isoc_next) & MUSB2_MASK_FRAME;

	if (FUNC5(xfer->xroot->udev) == USB_SPEED_HIGH) {
		fs_frames = (xfer->nframes + 7) / 8;
	} else {
		fs_frames = xfer->nframes;
	}

	if ((xfer->endpoint->is_synced == 0) ||
	    (temp < fs_frames)) {
		/*
		 * If there is data underflow or the pipe queue is
		 * empty we schedule the transfer a few frames ahead
		 * of the current frame position. Else two isochronous
		 * transfers might overlap.
		 */
		xfer->endpoint->isoc_next = (nframes + 3) & MUSB2_MASK_FRAME;
		xfer->endpoint->is_synced = 1;
		FUNC0(2, "start next=%d\n", xfer->endpoint->isoc_next);
	}
	/*
	 * compute how many milliseconds the insertion is ahead of the
	 * current frame position:
	 */
	temp = (xfer->endpoint->isoc_next - nframes) & MUSB2_MASK_FRAME;

	/*
	 * pre-compute when the isochronous transfer will be finished:
	 */
	xfer->isoc_time_complete =
	    FUNC4(&sc->sc_bus, nframes) + temp +
	    fs_frames;

	/* compute frame number for next insertion */
	xfer->endpoint->isoc_next += fs_frames;

	/* setup TDs */
	FUNC3(xfer);
}