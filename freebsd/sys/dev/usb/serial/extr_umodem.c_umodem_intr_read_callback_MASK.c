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
typedef  int uint16_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_cdc_notification {int bmRequestType; int bNotification; int* data; int /*<<< orphan*/  wLength; } ;
struct umodem_softc {int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_msr; int /*<<< orphan*/  sc_lsr; } ;
typedef  int /*<<< orphan*/  pkt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  SER_DCD ; 
 int /*<<< orphan*/  SER_DSR ; 
 int /*<<< orphan*/  SER_RI ; 
 int UCDC_NOTIFICATION ; 
 int UCDC_N_SERIAL_DCD ; 
 int UCDC_N_SERIAL_DSR ; 
 int UCDC_N_SERIAL_RI ; 
#define  UCDC_N_SERIAL_STATE 130 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC2 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_cdc_notification*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*) ; 
 struct umodem_softc* FUNC10 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct usb_xfer *xfer, usb_error_t error)
{
	struct usb_cdc_notification pkt;
	struct umodem_softc *sc = FUNC10(xfer);
	struct usb_page_cache *pc;
	uint16_t wLen;
	int actlen;

	FUNC11(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC2(xfer)) {
	case USB_ST_TRANSFERRED:

		if (actlen < 8) {
			FUNC0("received short packet, "
			    "%d bytes\n", actlen);
			goto tr_setup;
		}
		if (actlen > (int)sizeof(pkt)) {
			FUNC0("truncating message\n");
			actlen = sizeof(pkt);
		}
		pc = FUNC6(xfer, 0);
		FUNC4(pc, 0, &pkt, actlen);

		actlen -= 8;

		wLen = FUNC1(pkt.wLength);
		if (actlen > wLen) {
			actlen = wLen;
		}
		if (pkt.bmRequestType != UCDC_NOTIFICATION) {
			FUNC0("unknown message type, "
			    "0x%02x, on notify pipe!\n",
			    pkt.bmRequestType);
			goto tr_setup;
		}
		switch (pkt.bNotification) {
		case UCDC_N_SERIAL_STATE:
			/*
			 * Set the serial state in ucom driver based on
			 * the bits from the notify message
			 */
			if (actlen < 2) {
				FUNC0("invalid notification "
				    "length, %d bytes!\n", actlen);
				break;
			}
			FUNC0("notify bytes = %02x%02x\n",
			    pkt.data[0],
			    pkt.data[1]);

			/* Currently, lsr is always zero. */
			sc->sc_lsr = 0;
			sc->sc_msr = 0;

			if (pkt.data[0] & UCDC_N_SERIAL_RI) {
				sc->sc_msr |= SER_RI;
			}
			if (pkt.data[0] & UCDC_N_SERIAL_DSR) {
				sc->sc_msr |= SER_DSR;
			}
			if (pkt.data[0] & UCDC_N_SERIAL_DCD) {
				sc->sc_msr |= SER_DCD;
			}
			FUNC3(&sc->sc_ucom);
			break;

		default:
			FUNC0("unknown notify message: 0x%02x\n",
			    pkt.bNotification);
			break;
		}

	case USB_ST_SETUP:
tr_setup:
		FUNC8(xfer, 0, FUNC7(xfer));
		FUNC5(xfer);
		return;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC9(xfer);
			goto tr_setup;
		}
		return;

	}
}