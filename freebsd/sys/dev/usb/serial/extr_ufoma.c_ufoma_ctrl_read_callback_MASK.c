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
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wValue; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct ufoma_softc {int sc_ctrl_iface_no; int /*<<< orphan*/  sc_num_msg; int /*<<< orphan*/  sc_ucom; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UCDC_GET_ENCAPSULATED_RESPONSE ; 
 int UFOMA_CMD_BUF_SIZE ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_CLASS_INTERFACE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct usb_page_cache*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_device_request*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 int FUNC7 (struct usb_xfer*,int) ; 
 struct usb_page_cache* FUNC8 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*,int) ; 
 struct ufoma_softc* FUNC11 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 

__attribute__((used)) static void
FUNC13(struct usb_xfer *xfer, usb_error_t error)
{
	struct ufoma_softc *sc = FUNC11(xfer);
	struct usb_device_request req;
	struct usb_page_cache *pc0, *pc1;
	int len, aframes, nframes;

	FUNC12(xfer, NULL, NULL, &aframes, &nframes);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
tr_transferred:
		if (aframes != nframes)
			goto tr_setup;
		pc1 = FUNC8(xfer, 1);
		len = FUNC7(xfer, 1);
		if (len > 0)
			FUNC3(&sc->sc_ucom, pc1, 0, len);
		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		if (sc->sc_num_msg) {
			sc->sc_num_msg--;

			req.bmRequestType = UT_READ_CLASS_INTERFACE;
			req.bRequest = UCDC_GET_ENCAPSULATED_RESPONSE;
			FUNC2(req.wIndex, sc->sc_ctrl_iface_no);
			FUNC2(req.wValue, 0);
			FUNC2(req.wLength, UFOMA_CMD_BUF_SIZE);

			pc0 = FUNC8(xfer, 0);
			FUNC4(pc0, 0, &req, sizeof(req));

			FUNC9(xfer, 0, sizeof(req));
			FUNC9(xfer, 1, UFOMA_CMD_BUF_SIZE);
			FUNC10(xfer, 2);
			FUNC6(xfer);
		}
		return;

	default:			/* Error */
		FUNC0("error = %s\n",
		    FUNC5(error));

		if (error == USB_ERR_CANCELLED) {
			return;
		}
		goto tr_transferred;
	}
}