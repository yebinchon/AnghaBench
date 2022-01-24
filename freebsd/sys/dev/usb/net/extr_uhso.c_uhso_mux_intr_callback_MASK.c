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
struct usb_page_search {scalar_t__ buffer; } ;
struct usb_page_cache {int dummy; } ;
struct uhso_softc {TYPE_1__* sc_tty; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ht_xfer; } ;

/* Variables and functions */
 size_t UHSO_CTRL_READ ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 unsigned int UHSO_MPORT_TYPE_NOMAX ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_page_search*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*) ; 
 struct uhso_softc* FUNC11 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC12(struct usb_xfer *xfer, usb_error_t error)
{
	struct usb_page_cache *pc;
	struct usb_page_search res;
	struct uhso_softc *sc = FUNC11(xfer);
	unsigned int i, mux;

	FUNC0(3, "status %d\n", FUNC1(xfer));

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		/*
		 * The multiplexed port number can be found at the first byte.
		 * It contains a bit mask, we transform this in to an integer.
		 */
		pc = FUNC6(xfer, 0);
		FUNC3(pc, 0, &res);

		i = *((unsigned char *)res.buffer);
		mux = 0;
		while (i >>= 1) {
			mux++;
		}

		FUNC0(3, "mux port %d (%d)\n", mux, i);
		if (mux > UHSO_MPORT_TYPE_NOMAX)
			break;

		/* Issue a read for this serial port */
		FUNC9(
		    sc->sc_tty[mux].ht_xfer[UHSO_CTRL_READ],
		    &sc->sc_tty[mux]);
		FUNC4(sc->sc_tty[mux].ht_xfer[UHSO_CTRL_READ]);

		break;
	case USB_ST_SETUP:
tr_setup:
		FUNC8(xfer, 0, FUNC7(xfer));
		FUNC5(xfer);
		break;
	default:
		FUNC0(0, "error: %s\n", FUNC2(error));
		if (error == USB_ERR_CANCELLED)
			break;

		FUNC10(xfer);
		goto tr_setup;
	}
}