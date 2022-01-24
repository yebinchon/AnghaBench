#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_fifo {int dummy; } ;
struct uhid_snes_softc {int sc_zero_length_packets; struct usb_fifo** sc_fifo_open; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 size_t USB_FIFO_RX ; 
 int FUNC0 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC1 (struct usb_fifo*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_fifo*,struct usb_page_cache*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC4 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*) ; 
 struct uhid_snes_softc* FUNC9 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct usb_xfer *transfer, usb_error_t error)
{
	struct uhid_snes_softc *sc = FUNC9(transfer);
	struct usb_fifo *fifo = sc->sc_fifo_open[USB_FIFO_RX];
	struct usb_page_cache *pc;
	int actual, max;

	FUNC10(transfer, &actual, NULL, NULL, NULL);
	if (fifo == NULL)
		return;

	switch (FUNC0(transfer)) {
	case USB_ST_TRANSFERRED:
		if (actual == 0) {
			if (sc->sc_zero_length_packets == 4)
				/* Throttle transfers. */
				FUNC7(transfer, 500);
			else
				sc->sc_zero_length_packets++;

		} else {
			/* disable throttling. */
			FUNC7(transfer, 0);
			sc->sc_zero_length_packets = 0;
		}
		pc = FUNC4(transfer, 0);
		FUNC2(fifo, pc, 0, actual, 1);
		/* Fall through */
	setup:
	case USB_ST_SETUP:
		if (FUNC1(fifo) != 0) {
			max = FUNC5(transfer);
			FUNC6(transfer, 0, max);
			FUNC3(transfer);
		}
		break;

	default:
		/*disable throttling. */
		FUNC7(transfer, 0);
		sc->sc_zero_length_packets = 0;

		if (error != USB_ERR_CANCELLED) {
			/* Issue a clear-stall request. */
			FUNC8(transfer);
			goto setup;
		}
		break;
	}
}