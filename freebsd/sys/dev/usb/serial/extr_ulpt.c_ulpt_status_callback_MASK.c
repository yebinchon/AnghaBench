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
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/ * wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct ulpt_softc {int sc_last_status; int /*<<< orphan*/  sc_iface_no; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int LPS_INVERT ; 
 int LPS_MASK ; 
 int LPS_NERR ; 
 int LPS_NOPAPER ; 
 int LPS_SELECT ; 
 int /*<<< orphan*/  UR_GET_PORT_STATUS ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_CLASS_INTERFACE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_device_request*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_page_cache*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC9 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*,int) ; 
 struct ulpt_softc* FUNC12 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC13(struct usb_xfer *xfer, usb_error_t error)
{
	struct ulpt_softc *sc = FUNC12(xfer);
	struct usb_device_request req;
	struct usb_page_cache *pc;
	uint8_t cur_status;
	uint8_t new_status;

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:

		pc = FUNC9(xfer, 1);
		FUNC6(pc, 0, &cur_status, 1);

		cur_status = (cur_status ^ LPS_INVERT) & LPS_MASK;
		new_status = cur_status & ~sc->sc_last_status;
		sc->sc_last_status = cur_status;

		if (new_status & LPS_SELECT)
			FUNC4(LOG_NOTICE, "%s: offline\n",
			    FUNC3(sc->sc_dev));
		else if (new_status & LPS_NOPAPER)
			FUNC4(LOG_NOTICE, "%s: out of paper\n",
			    FUNC3(sc->sc_dev));
		else if (new_status & LPS_NERR)
			FUNC4(LOG_NOTICE, "%s: output error\n",
			    FUNC3(sc->sc_dev));
		break;

	case USB_ST_SETUP:
		req.bmRequestType = UT_READ_CLASS_INTERFACE;
		req.bRequest = UR_GET_PORT_STATUS;
		FUNC2(req.wValue, 0);
		req.wIndex[0] = sc->sc_iface_no;
		req.wIndex[1] = 0;
		FUNC2(req.wLength, 1);

		pc = FUNC9(xfer, 0);
		FUNC5(pc, 0, &req, sizeof(req));

		FUNC10(xfer, 0, sizeof(req));
		FUNC10(xfer, 1, 1);
		FUNC11(xfer, 2);
		FUNC8(xfer);
		break;

	default:			/* Error */
		FUNC0("error=%s\n", FUNC7(error));
		if (error != USB_ERR_CANCELLED) {
			/* wait for next watchdog timeout */
		}
		break;
	}
}