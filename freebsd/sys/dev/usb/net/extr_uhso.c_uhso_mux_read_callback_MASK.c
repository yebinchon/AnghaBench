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
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct uhso_tty {size_t ht_muxport; int /*<<< orphan*/  ht_open; } ;
struct uhso_softc {int /*<<< orphan*/ * sc_ucom; int /*<<< orphan*/ * sc_xfer; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  UCDC_GET_ENCAPSULATED_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 size_t UHSO_MUX_ENDPT_INTR ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_CLASS_INTERFACE ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct usb_page_cache*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_device_request*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*) ; 
 int FUNC9 (struct usb_xfer*,int) ; 
 struct usb_page_cache* FUNC10 (struct usb_xfer*,int) ; 
 struct uhso_tty* FUNC11 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_xfer*) ; 
 struct uhso_softc* FUNC15 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(struct usb_xfer *xfer, usb_error_t error)
{
	struct uhso_softc *sc = FUNC15(xfer);
	struct usb_page_cache *pc;
	struct usb_device_request req;
	struct uhso_tty *ht;
	int actlen, len;

	FUNC16(xfer, &actlen, NULL, NULL, NULL);

	FUNC0(3, "status %d\n", FUNC1(xfer));

	ht = FUNC11(xfer);
	FUNC0(3, "ht=%p open=%d\n", ht, ht->ht_open);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		/* Got data, send to ucom */
		pc = FUNC10(xfer, 1);
		len = FUNC9(xfer, 1);

		FUNC0(3, "got %d bytes on mux port %d\n", len,
		    ht->ht_muxport);
		if (len <= 0) {
			FUNC7(sc->sc_xfer[UHSO_MUX_ENDPT_INTR]);
			break;
		}

		/* Deliver data if the TTY is open, discard otherwise */
		if (ht->ht_open)
			FUNC4(&sc->sc_ucom[ht->ht_muxport], pc, 0, len);
		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		FUNC3(&req, 0, sizeof(struct usb_device_request));
		req.bmRequestType = UT_READ_CLASS_INTERFACE;
		req.bRequest = UCDC_GET_ENCAPSULATED_RESPONSE;
		FUNC2(req.wValue, 0);
		FUNC2(req.wIndex, ht->ht_muxport);
		FUNC2(req.wLength, 1024);

		pc = FUNC10(xfer, 0);
		FUNC5(pc, 0, &req, sizeof(req));

		FUNC12(xfer, 0, sizeof(req));
		FUNC12(xfer, 1, 1024);
		FUNC13(xfer, 2);
		FUNC8(xfer);
		break;
	default:
		FUNC0(0, "error: %s\n", FUNC6(error));
		if (error == USB_ERR_CANCELLED)
			break;
		FUNC14(xfer);
		goto tr_setup;
	}
}