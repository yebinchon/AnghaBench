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
struct atmegadci_softc {int /*<<< orphan*/  sc_bus; } ;
struct TYPE_4__ {int isoc_next; int is_synced; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 struct atmegadci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int ATMEGA_FRAME_MASK ; 
 int FUNC1 (struct atmegadci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATMEGA_UDFNUMH ; 
 int /*<<< orphan*/  ATMEGA_UDFNUML ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(struct usb_xfer *xfer)
{
	struct atmegadci_softc *sc = FUNC0(xfer->xroot->bus);
	uint32_t temp;
	uint32_t nframes;

	FUNC2(6, "xfer=%p next=%d nframes=%d\n",
	    xfer, xfer->endpoint->isoc_next, xfer->nframes);

	/* get the current frame index */

	nframes =
	    (FUNC1(sc, ATMEGA_UDFNUMH) << 8) |
	    (FUNC1(sc, ATMEGA_UDFNUML));

	nframes &= ATMEGA_FRAME_MASK;

	/*
	 * check if the frame index is within the window where the frames
	 * will be inserted
	 */
	temp = (nframes - xfer->endpoint->isoc_next) & ATMEGA_FRAME_MASK;

	if ((xfer->endpoint->is_synced == 0) ||
	    (temp < xfer->nframes)) {
		/*
		 * If there is data underflow or the pipe queue is
		 * empty we schedule the transfer a few frames ahead
		 * of the current frame position. Else two isochronous
		 * transfers might overlap.
		 */
		xfer->endpoint->isoc_next = (nframes + 3) & ATMEGA_FRAME_MASK;
		xfer->endpoint->is_synced = 1;
		FUNC2(3, "start next=%d\n", xfer->endpoint->isoc_next);
	}
	/*
	 * compute how many milliseconds the insertion is ahead of the
	 * current frame position:
	 */
	temp = (xfer->endpoint->isoc_next - nframes) & ATMEGA_FRAME_MASK;

	/*
	 * pre-compute when the isochronous transfer will be finished:
	 */
	xfer->isoc_time_complete =
	    FUNC4(&sc->sc_bus, nframes) + temp +
	    xfer->nframes;

	/* compute frame number for next insertion */
	xfer->endpoint->isoc_next += xfer->nframes;

	/* setup TDs */
	FUNC3(xfer);
}