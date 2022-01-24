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
struct uhid_snes_softc {int sc_previous_status; int /*<<< orphan*/  sc_iface_num; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  UREQ_GET_PORT_STATUS ; 
 int FUNC0 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_READ_CLASS_INTERFACE ; 
 int /*<<< orphan*/  FUNC2 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_device_request*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_page_cache*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC5 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*,int) ; 
 struct uhid_snes_softc* FUNC8 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC9(struct usb_xfer *transfer, usb_error_t error)
{
	struct uhid_snes_softc *sc = FUNC8(transfer);
	struct usb_device_request req;
	struct usb_page_cache *pc;
	uint8_t current_status, new_status;

	switch (FUNC0(transfer)) {
	case USB_ST_SETUP:
		req.bmRequestType = UT_READ_CLASS_INTERFACE;
		req.bRequest = UREQ_GET_PORT_STATUS;
		FUNC1(req.wValue, 0);
		req.wIndex[0] = sc->sc_iface_num;
		req.wIndex[1] = 0;
		FUNC1(req.wLength, 1);

		pc = FUNC5(transfer, 0);
		FUNC2(pc, 0, &req, sizeof(req));
		FUNC6(transfer, 0, sizeof(req));
		FUNC6(transfer, 1, 1);
		FUNC7(transfer, 2);
		FUNC4(transfer);
		break;

	case USB_ST_TRANSFERRED:
		pc = FUNC5(transfer, 1);
		FUNC3(pc, 0, &current_status, 1);
		new_status = current_status & ~sc->sc_previous_status;
		sc->sc_previous_status = current_status;
		break;

	default:
		break;
	}

}