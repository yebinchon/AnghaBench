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
typedef  int uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_cdc_notification {int /*<<< orphan*/  data; int /*<<< orphan*/  wLength; int /*<<< orphan*/  wValue; int /*<<< orphan*/ * wIndex; int /*<<< orphan*/  bNotification; void* bmRequestType; } ;
struct TYPE_2__ {int /*<<< orphan*/  ue_udev; } ;
struct cdce_softc {int sc_notify_state; TYPE_1__ sc_ue; int /*<<< orphan*/ * sc_ifaces_index; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int CDCE_NOTIFY_DONE ; 
#define  CDCE_NOTIFY_NETWORK_CONNECTION 131 
#define  CDCE_NOTIFY_SPEED_CHANGE 130 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 void* UCDC_NOTIFICATION ; 
 int /*<<< orphan*/  UCDC_N_CONNECTION_SPEED_CHANGE ; 
 int /*<<< orphan*/  UCDC_N_NETWORK_CONNECTION ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
 int /*<<< orphan*/  USB_MODE_HOST ; 
 int /*<<< orphan*/  USB_SPEED_FULL ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_cdc_notification*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC8 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*) ; 
 struct cdce_softc* FUNC12 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14(struct usb_xfer *xfer, usb_error_t error)
{
	struct cdce_softc *sc = FUNC12(xfer);
	struct usb_cdc_notification req;
	struct usb_page_cache *pc;
	uint32_t speed;
	int actlen;

	FUNC13(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:

		FUNC0("Transferred %d bytes\n", actlen);

		switch (sc->sc_notify_state) {
		case CDCE_NOTIFY_NETWORK_CONNECTION:
			sc->sc_notify_state = CDCE_NOTIFY_SPEED_CHANGE;
			break;
		case CDCE_NOTIFY_SPEED_CHANGE:
			sc->sc_notify_state = CDCE_NOTIFY_DONE;
			break;
		default:
			break;
		}

		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		/*
		 * Inform host about connection. Required according to USB CDC
		 * specification and communicating to Mac OS X USB host stack.
		 * Some of the values seems ignored by Mac OS X though.
		 */
		if (sc->sc_notify_state == CDCE_NOTIFY_NETWORK_CONNECTION) {
			req.bmRequestType = UCDC_NOTIFICATION;
			req.bNotification = UCDC_N_NETWORK_CONNECTION;
			req.wIndex[0] = sc->sc_ifaces_index[1];
			req.wIndex[1] = 0;
			FUNC3(req.wValue, 1); /* Connected */
			FUNC3(req.wLength, 0);

			pc = FUNC8(xfer, 0);
			FUNC4(pc, 0, &req, sizeof(req));
			FUNC9(xfer, 0, sizeof(req));
			FUNC10(xfer, 1);
			FUNC7(xfer); 

		} else if (sc->sc_notify_state == CDCE_NOTIFY_SPEED_CHANGE) {
			req.bmRequestType = UCDC_NOTIFICATION;
			req.bNotification = UCDC_N_CONNECTION_SPEED_CHANGE;
			req.wIndex[0] = sc->sc_ifaces_index[1];
			req.wIndex[1] = 0;
			FUNC3(req.wValue, 0);
			FUNC3(req.wLength, 8);

			/* Peak theoretical bulk trasfer rate in bits/s */
			if (FUNC6(sc->sc_ue.ue_udev) != USB_SPEED_FULL)
				speed = (13 * 512 * 8 * 1000 * 8);
			else
				speed = (19 * 64 * 1 * 1000 * 8);

			FUNC2(req.data + 0, speed); /* Upstream bit rate */
			FUNC2(req.data + 4, speed); /* Downstream bit rate */
 
			pc = FUNC8(xfer, 0);
			FUNC4(pc, 0, &req, sizeof(req));
			FUNC9(xfer, 0, sizeof(req));
			FUNC10(xfer, 1);
			FUNC7(xfer); 
		}
		break;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			if (FUNC5(sc->sc_ue.ue_udev) == USB_MODE_HOST) {
				/* start clear stall */
				FUNC11(xfer);
			}
			goto tr_setup;
		}
		break;
	}
}