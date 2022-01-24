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
struct usb_page_search {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct uhso_tty {size_t ht_muxport; } ;
struct uhso_softc {int /*<<< orphan*/ * sc_ucom; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  UCDC_SEND_ENCAPSULATED_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_WRITE_CLASS_INTERFACE ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct usb_page_cache*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_device_request*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_page_search*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC9 (struct usb_xfer*,int) ; 
 struct uhso_tty* FUNC10 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*) ; 
 struct uhso_softc* FUNC14 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16(struct usb_xfer *xfer, usb_error_t error)
{
	struct uhso_softc *sc = FUNC14(xfer);
	struct uhso_tty *ht;
	struct usb_page_cache *pc;
	struct usb_device_request req;
	int actlen;
	struct usb_page_search res;

	FUNC15(xfer, &actlen, NULL, NULL, NULL);

	ht = FUNC10(xfer);
	FUNC0(3, "status=%d, using mux port %d\n",
	    FUNC1(xfer), ht->ht_muxport);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC0(3, "wrote %zd data bytes to muxport %d\n",
		    actlen - sizeof(struct usb_device_request) ,
		    ht->ht_muxport);
		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		pc = FUNC9(xfer, 1);
		if (FUNC4(&sc->sc_ucom[ht->ht_muxport], pc,
		    0, 32, &actlen)) {

			FUNC7(pc, 0, &res);

			FUNC3(&req, 0, sizeof(struct usb_device_request));
			req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
			req.bRequest = UCDC_SEND_ENCAPSULATED_COMMAND;
			FUNC2(req.wValue, 0);
			FUNC2(req.wIndex, ht->ht_muxport);
			FUNC2(req.wLength, actlen);

			pc = FUNC9(xfer, 0);
			FUNC5(pc, 0, &req, sizeof(req));

			FUNC11(xfer, 0, sizeof(req));
			FUNC11(xfer, 1, actlen);
			FUNC12(xfer, 2);

			FUNC0(3, "Prepared %d bytes for transmit "
			    "on muxport %d\n", actlen, ht->ht_muxport);

			FUNC8(xfer);
		}
		break;
	default:
		FUNC0(0, "error: %s\n", FUNC6(error));
		if (error == USB_ERR_CANCELLED)
			break;
		FUNC13(xfer);
		goto tr_setup;
	}
}