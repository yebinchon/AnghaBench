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
struct usb_device_request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * fp; } ;
struct uhid_softc {int sc_isize; TYPE_1__ sc_fifo; int /*<<< orphan*/  sc_iid; int /*<<< orphan*/  sc_iface_no; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  UHID_INPUT_REPORT ; 
 size_t USB_FIFO_RX ; 
 int FUNC0 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC1 (struct usb_device_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct usb_page_cache*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_device_request*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC7 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,int) ; 
 struct uhid_softc* FUNC10 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC11(struct usb_xfer *xfer, usb_error_t error)
{
	struct uhid_softc *sc = FUNC10(xfer);
	struct usb_device_request req;
	struct usb_page_cache *pc;

	pc = FUNC7(xfer, 0);

	switch (FUNC0(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC3(sc->sc_fifo.fp[USB_FIFO_RX], pc, sizeof(req),
		    sc->sc_isize, 1);
		return;

	case USB_ST_SETUP:

		if (FUNC2(sc->sc_fifo.fp[USB_FIFO_RX]) > 0) {

			FUNC1
			    (&req, sc->sc_iface_no, UHID_INPUT_REPORT,
			    sc->sc_iid, sc->sc_isize);

			FUNC5(pc, 0, &req, sizeof(req));

			FUNC8(xfer, 0, sizeof(req));
			FUNC8(xfer, 1, sc->sc_isize);
			FUNC9(xfer, sc->sc_isize ? 2 : 1);
			FUNC6(xfer);
		}
		return;

	default:			/* Error */
		/* bomb out */
		FUNC4(sc->sc_fifo.fp[USB_FIFO_RX]);
		return;
	}
}