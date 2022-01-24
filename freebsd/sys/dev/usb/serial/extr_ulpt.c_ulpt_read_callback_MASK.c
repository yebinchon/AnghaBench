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
struct ulpt_softc {int sc_zlps; struct usb_fifo** sc_fifo_open; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 size_t USB_FIFO_RX ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (struct usb_fifo*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_fifo*,struct usb_page_cache*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*) ; 
 struct ulpt_softc* FUNC10 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct usb_xfer *xfer, usb_error_t error)
{
	struct ulpt_softc *sc = FUNC10(xfer);
	struct usb_fifo *f = sc->sc_fifo_open[USB_FIFO_RX];
	struct usb_page_cache *pc;
	int actlen;

	FUNC11(xfer, &actlen, NULL, NULL, NULL);

	if (f == NULL) {
		/* should not happen */
		FUNC0("no FIFO\n");
		return;
	}
	FUNC0("state=0x%x\n", FUNC1(xfer));

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:

		if (actlen == 0) {

			if (sc->sc_zlps == 4) {
				/* enable BULK throttle */
				FUNC8(xfer, 500); /* ms */
			} else {
				sc->sc_zlps++;
			}
		} else {
			/* disable BULK throttle */

			FUNC8(xfer, 0);
			sc->sc_zlps = 0;
		}

		pc = FUNC5(xfer, 0);
		FUNC3(f, pc, 0, actlen, 1);

	case USB_ST_SETUP:
tr_setup:
		if (FUNC2(f) != 0) {
			FUNC7(xfer, 0, FUNC6(xfer));
			FUNC4(xfer);
		}
		break;

	default:			/* Error */
		/* disable BULK throttle */
		FUNC8(xfer, 0);
		sc->sc_zlps = 0;

		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC9(xfer);
			goto tr_setup;
		}
		break;
	}
}