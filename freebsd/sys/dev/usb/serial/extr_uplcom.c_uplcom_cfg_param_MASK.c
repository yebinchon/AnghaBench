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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_device_request {scalar_t__* wLength; scalar_t__* wIndex; scalar_t__* wValue; void* bRequest; void* bmRequestType; } ;
struct usb_cdc_line_state {int bDataBits; int /*<<< orphan*/  bParityType; int /*<<< orphan*/  bCharFormat; int /*<<< orphan*/  dwDTERate; } ;
struct uplcom_softc {scalar_t__ sc_chiptype; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_udev; scalar_t__ sc_data_iface_no; } ;
struct ucom_softc {struct uplcom_softc* sc_parent; } ;
struct termios {int c_ospeed; int c_cflag; } ;
typedef  int /*<<< orphan*/  ls ;

/* Variables and functions */
 int CRTSCTS ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int CSIZE ; 
 int CSTOPB ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int PARENB ; 
 int PARODD ; 
 scalar_t__ TYPE_PL2303 ; 
 int /*<<< orphan*/  UCDC_LINE_STATE_LENGTH ; 
 int /*<<< orphan*/  UCDC_PARITY_EVEN ; 
 int /*<<< orphan*/  UCDC_PARITY_NONE ; 
 int /*<<< orphan*/  UCDC_PARITY_ODD ; 
 void* UCDC_SET_LINE_CODING ; 
 int /*<<< orphan*/  UCDC_STOP_BIT_1 ; 
 int /*<<< orphan*/  UCDC_STOP_BIT_1_5 ; 
 int /*<<< orphan*/  UCDC_STOP_BIT_2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UPLCOM_SET_CRTSCTS ; 
 int /*<<< orphan*/  UPLCOM_SET_CRTSCTS_PL2303X ; 
 void* UPLCOM_SET_REQUEST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 void* UT_WRITE_CLASS_INTERFACE ; 
 void* UT_WRITE_VENDOR_DEVICE ; 
 int /*<<< orphan*/  FUNC4 (struct usb_cdc_line_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,struct usb_cdc_line_state*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC8(struct ucom_softc *ucom, struct termios *t)
{
	struct uplcom_softc *sc = ucom->sc_parent;
	struct usb_cdc_line_state ls;
	struct usb_device_request req;

	FUNC0("sc = %p\n", sc);

	FUNC4(&ls, 0, sizeof(ls));

	/*
	 * NOTE: If unsupported baud rates are set directly, the PL2303* uses 9600 baud.
	 */
	if ((t->c_ospeed & 0x80000000) || FUNC6(t->c_ospeed))
		FUNC2(ls.dwDTERate, t->c_ospeed);
	else
		t->c_ospeed = FUNC7((uint8_t*)&ls.dwDTERate, t->c_ospeed);

	if (t->c_cflag & CSTOPB) {
		if ((t->c_cflag & CSIZE) == CS5) {
			/*
			 * NOTE: Comply with "real" UARTs / RS232:
			 *       use 1.5 instead of 2 stop bits with 5 data bits
			 */
			ls.bCharFormat = UCDC_STOP_BIT_1_5;
		} else {
			ls.bCharFormat = UCDC_STOP_BIT_2;
		}
	} else {
		ls.bCharFormat = UCDC_STOP_BIT_1;
	}

	if (t->c_cflag & PARENB) {
		if (t->c_cflag & PARODD) {
			ls.bParityType = UCDC_PARITY_ODD;
		} else {
			ls.bParityType = UCDC_PARITY_EVEN;
		}
	} else {
		ls.bParityType = UCDC_PARITY_NONE;
	}

	switch (t->c_cflag & CSIZE) {
	case CS5:
		ls.bDataBits = 5;
		break;
	case CS6:
		ls.bDataBits = 6;
		break;
	case CS7:
		ls.bDataBits = 7;
		break;
	case CS8:
		ls.bDataBits = 8;
		break;
	}

	FUNC0("rate=0x%08x fmt=%d parity=%d bits=%d\n",
	    FUNC1(ls.dwDTERate), ls.bCharFormat,
	    ls.bParityType, ls.bDataBits);

	req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
	req.bRequest = UCDC_SET_LINE_CODING;
	FUNC3(req.wValue, 0);
	req.wIndex[0] = sc->sc_data_iface_no;
	req.wIndex[1] = 0;
	FUNC3(req.wLength, UCDC_LINE_STATE_LENGTH);

	FUNC5(sc->sc_udev, &sc->sc_ucom, 
	    &req, &ls, 0, 1000);

	if (t->c_cflag & CRTSCTS) {

		FUNC0("crtscts = on\n");

		req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
		req.bRequest = UPLCOM_SET_REQUEST;
		FUNC3(req.wValue, 0);
		if (sc->sc_chiptype != TYPE_PL2303)
			FUNC3(req.wIndex, UPLCOM_SET_CRTSCTS_PL2303X);
		else
			FUNC3(req.wIndex, UPLCOM_SET_CRTSCTS);
		FUNC3(req.wLength, 0);

		FUNC5(sc->sc_udev, &sc->sc_ucom, 
		    &req, NULL, 0, 1000);
	} else {
		req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
		req.bRequest = UPLCOM_SET_REQUEST;
		FUNC3(req.wValue, 0);
		FUNC3(req.wIndex, 0);
		FUNC3(req.wLength, 0);
		FUNC5(sc->sc_udev, &sc->sc_ucom, 
		    &req, NULL, 0, 1000);
	}
}