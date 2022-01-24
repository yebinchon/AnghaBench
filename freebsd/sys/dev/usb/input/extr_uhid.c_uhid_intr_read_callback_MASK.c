#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * fp; } ;
struct uhid_softc {int sc_isize; TYPE_1__ sc_fifo; int /*<<< orphan*/  sc_iid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 size_t USB_FIFO_RX ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct usb_page_cache*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 struct uhid_softc* FUNC8 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct usb_xfer *xfer, usb_error_t error)
{
	struct uhid_softc *sc = FUNC8(xfer);
	struct usb_page_cache *pc;
	int actlen;

	FUNC9(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC0("transferred!\n");

		pc = FUNC5(xfer, 0);

		/* 
		 * If the ID byte is non zero we allow descriptors
		 * having multiple sizes:
		 */
		if ((actlen >= (int)sc->sc_isize) ||
		    ((actlen > 0) && (sc->sc_iid != 0))) {
			/* limit report length to the maximum */
			if (actlen > (int)sc->sc_isize)
				actlen = sc->sc_isize;
			FUNC3(sc->sc_fifo.fp[USB_FIFO_RX], pc,
			    0, actlen, 1);
		} else {
			/* ignore it */
			FUNC0("ignored transfer, %d bytes\n", actlen);
		}

	case USB_ST_SETUP:
re_submit:
		if (FUNC2(
		    sc->sc_fifo.fp[USB_FIFO_RX]) != 0) {
			FUNC6(xfer, 0, sc->sc_isize);
			FUNC4(xfer);
		}
		return;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC7(xfer);
			goto re_submit;
		}
		return;
	}
}