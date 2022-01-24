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
typedef  int uint8_t ;
struct uslcom_softc {int sc_msr; int sc_iface_no; int /*<<< orphan*/  sc_ucom; } ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int SER_CTS ; 
 int SER_DCD ; 
 int SER_DSR ; 
 int SER_RI ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  USLCOM_GET_MDMSTS ; 
 int USLCOM_MHS_CTS ; 
 int USLCOM_MHS_DCD ; 
 int USLCOM_MHS_DSR ; 
 int USLCOM_MHS_RI ; 
 int /*<<< orphan*/  USLCOM_READ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_device_request*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_page_cache*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC8 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*,int) ; 
 struct uslcom_softc* FUNC11 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC12(struct usb_xfer *xfer, usb_error_t error)
{
	struct uslcom_softc *sc = FUNC11(xfer);
	struct usb_page_cache *pc;
	struct usb_device_request req;
	uint8_t msr = 0;
	uint8_t buf;

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		pc = FUNC8(xfer, 1);
		FUNC5(pc, 0, &buf, sizeof(buf));
		if (buf & USLCOM_MHS_CTS)
			msr |= SER_CTS;
		if (buf & USLCOM_MHS_DSR)
			msr |= SER_DSR;
		if (buf & USLCOM_MHS_RI)
			msr |= SER_RI;
		if (buf & USLCOM_MHS_DCD)
			msr |= SER_DCD;

		if (msr != sc->sc_msr) {
			FUNC0("status change msr=0x%02x "
			    "(was 0x%02x)\n", msr, sc->sc_msr);
			sc->sc_msr = msr;
			FUNC3(&sc->sc_ucom);
		}
		break;

	case USB_ST_SETUP:
		req.bmRequestType = USLCOM_READ;
		req.bRequest = USLCOM_GET_MDMSTS;
		FUNC2(req.wValue, 0);
		FUNC2(req.wIndex, sc->sc_iface_no);
		FUNC2(req.wLength, sizeof(buf));

		FUNC10(xfer, 2);
		FUNC9(xfer, 0, sizeof(req));
		FUNC9(xfer, 1, sizeof(buf));

		pc = FUNC8(xfer, 0);
		FUNC4(pc, 0, &req, sizeof(req));
		FUNC7(xfer);
		break;

	default:		/* error */
		if (error != USB_ERR_CANCELLED)
			FUNC0("error=%s\n", FUNC6(error));
		break;
	}
}