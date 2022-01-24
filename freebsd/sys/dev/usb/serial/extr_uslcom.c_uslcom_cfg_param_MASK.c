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
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
struct uslcom_softc {int sc_iface_no; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_udev; } ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; void* bmRequestType; } ;
struct ucom_softc {struct uslcom_softc* sc_parent; } ;
struct termios {int c_cflag; scalar_t__ c_ospeed; } ;
typedef  int /*<<< orphan*/  flowctrl ;
typedef  int /*<<< orphan*/  baudrate ;

/* Variables and functions */
 int CRTSCTS ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int CSIZE ; 
 int CSTOPB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PARENB ; 
 int PARODD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int USLCOM_FLOW_CTS_HS ; 
 int USLCOM_FLOW_DTR_ON ; 
 int USLCOM_FLOW_RTS_HS ; 
 int USLCOM_FLOW_RTS_ON ; 
 int USLCOM_PARITY_EVEN ; 
 int USLCOM_PARITY_NONE ; 
 int USLCOM_PARITY_ODD ; 
 int /*<<< orphan*/  USLCOM_SET_BAUDRATE ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  USLCOM_SET_FLOW ; 
 int /*<<< orphan*/  USLCOM_SET_LINE_CTL ; 
 int USLCOM_STOP_BITS_1 ; 
 int USLCOM_STOP_BITS_2 ; 
 void* USLCOM_WRITE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct ucom_softc *ucom, struct termios *t)
{
	struct uslcom_softc *sc = ucom->sc_parent;
	struct usb_device_request req;
	uint32_t baudrate, flowctrl[4];
	uint16_t data;

	FUNC0("\n");

	baudrate = t->c_ospeed;
	req.bmRequestType = USLCOM_WRITE;
	req.bRequest = USLCOM_SET_BAUDRATE;
	FUNC1(req.wValue, 0);
	FUNC1(req.wIndex, sc->sc_iface_no);
	FUNC1(req.wLength, sizeof(baudrate));

	if (FUNC5(sc->sc_udev, &sc->sc_ucom,
	    &req, &baudrate, 0, 1000)) {
		FUNC4("Set baudrate failed (ignored)\n");
	}

	if (t->c_cflag & CSTOPB)
		data = USLCOM_STOP_BITS_2;
	else
		data = USLCOM_STOP_BITS_1;
	if (t->c_cflag & PARENB) {
		if (t->c_cflag & PARODD)
			data |= USLCOM_PARITY_ODD;
		else
			data |= USLCOM_PARITY_EVEN;
	} else
		data |= USLCOM_PARITY_NONE;
	switch (t->c_cflag & CSIZE) {
	case CS5:
		data |= FUNC2(5);
		break;
	case CS6:
		data |= FUNC2(6);
		break;
	case CS7:
		data |= FUNC2(7);
		break;
	case CS8:
		data |= FUNC2(8);
		break;
	}

	req.bmRequestType = USLCOM_WRITE;
	req.bRequest = USLCOM_SET_LINE_CTL;
	FUNC1(req.wValue, data);
	FUNC1(req.wIndex, sc->sc_iface_no);
	FUNC1(req.wLength, 0);

	if (FUNC5(sc->sc_udev, &sc->sc_ucom,
	    &req, NULL, 0, 1000)) {
		FUNC0("Set format failed (ignored)\n");
	}

	if (t->c_cflag & CRTSCTS) {
		flowctrl[0] = FUNC3(USLCOM_FLOW_DTR_ON | USLCOM_FLOW_CTS_HS);
		flowctrl[1] = FUNC3(USLCOM_FLOW_RTS_HS);
	} else {
		flowctrl[0] = FUNC3(USLCOM_FLOW_DTR_ON);
		flowctrl[1] = FUNC3(USLCOM_FLOW_RTS_ON);
	}
	flowctrl[2] = 0;
	flowctrl[3] = 0;
	req.bmRequestType = USLCOM_WRITE;
	req.bRequest = USLCOM_SET_FLOW;
	FUNC1(req.wValue, 0);
	FUNC1(req.wIndex, sc->sc_iface_no);
	FUNC1(req.wLength, sizeof(flowctrl));

	if (FUNC5(sc->sc_udev, &sc->sc_ucom,
	    &req, flowctrl, 0, 1000)) {
		FUNC0("Set flowcontrol failed (ignored)\n");
	}
}