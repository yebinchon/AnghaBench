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
typedef  int uint16_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_cdc_notification {int* data; int /*<<< orphan*/  bNotification; int /*<<< orphan*/  bmRequestType; int /*<<< orphan*/  wValue; int /*<<< orphan*/  wLength; } ;
struct ufoma_softc {int sc_currentmode; int sc_num_msg; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_msr; int /*<<< orphan*/  sc_lsr; int /*<<< orphan*/  sc_nobulk; int /*<<< orphan*/ * sc_ctrl_xfer; int /*<<< orphan*/  sc_cv; } ;
typedef  int /*<<< orphan*/  pkt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  SER_DCD ; 
 int /*<<< orphan*/  SER_DSR ; 
 int /*<<< orphan*/  SER_RI ; 
 int /*<<< orphan*/  UCDC_NOTIFICATION ; 
#define  UCDC_N_RESPONSE_AVAILABLE 131 
 int UCDC_N_SERIAL_DCD ; 
 int UCDC_N_SERIAL_DSR ; 
 int UCDC_N_SERIAL_RI ; 
#define  UCDC_N_SERIAL_STATE 130 
 size_t UFOMA_CTRL_ENDPT_READ ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UMCPC_REQUEST_ACKNOWLEDGE ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC2 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  UT_READ_VENDOR_INTERFACE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_cdc_notification*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC8 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*) ; 
 struct ufoma_softc* FUNC12 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14(struct usb_xfer *xfer, usb_error_t error)
{
	struct ufoma_softc *sc = FUNC12(xfer);
	struct usb_cdc_notification pkt;
	struct usb_page_cache *pc;
	uint16_t wLen;
	uint16_t temp;
	uint8_t mstatus;
	int actlen;

	FUNC13(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC2(xfer)) {
	case USB_ST_TRANSFERRED:
		if (actlen < 8) {
			FUNC0("too short message\n");
			goto tr_setup;
		}
		if (actlen > (int)sizeof(pkt)) {
			FUNC0("truncating message\n");
			actlen = sizeof(pkt);
		}
		pc = FUNC8(xfer, 0);
		FUNC5(pc, 0, &pkt, actlen);

		actlen -= 8;

		wLen = FUNC1(pkt.wLength);
		if (actlen > wLen) {
			actlen = wLen;
		}
		if ((pkt.bmRequestType == UT_READ_VENDOR_INTERFACE) &&
		    (pkt.bNotification == UMCPC_REQUEST_ACKNOWLEDGE)) {
			temp = FUNC1(pkt.wValue);
			sc->sc_currentmode = (temp >> 8);
			if (!(temp & 0xff)) {
				FUNC0("Mode change failed!\n");
			}
			FUNC3(&sc->sc_cv);
		}
		if (pkt.bmRequestType != UCDC_NOTIFICATION) {
			goto tr_setup;
		}
		switch (pkt.bNotification) {
		case UCDC_N_RESPONSE_AVAILABLE:
			if (!(sc->sc_nobulk)) {
				FUNC0("Wrong serial state!\n");
				break;
			}
			if (sc->sc_num_msg != 0xFF) {
				sc->sc_num_msg++;
			}
			FUNC6(sc->sc_ctrl_xfer[UFOMA_CTRL_ENDPT_READ]);
			break;

		case UCDC_N_SERIAL_STATE:
			if (sc->sc_nobulk) {
				FUNC0("Wrong serial state!\n");
				break;
			}
			/*
		         * Set the serial state in ucom driver based on
		         * the bits from the notify message
		         */
			if (actlen < 2) {
				FUNC0("invalid notification "
				    "length, %d bytes!\n", actlen);
				break;
			}
			FUNC0("notify bytes = 0x%02x, 0x%02x\n",
			    pkt.data[0], pkt.data[1]);

			/* currently, lsr is always zero. */
			sc->sc_lsr = 0;
			sc->sc_msr = 0;

			mstatus = pkt.data[0];

			if (mstatus & UCDC_N_SERIAL_RI) {
				sc->sc_msr |= SER_RI;
			}
			if (mstatus & UCDC_N_SERIAL_DSR) {
				sc->sc_msr |= SER_DSR;
			}
			if (mstatus & UCDC_N_SERIAL_DCD) {
				sc->sc_msr |= SER_DCD;
			}
			FUNC4(&sc->sc_ucom);
			break;

		default:
			break;
		}

	case USB_ST_SETUP:
tr_setup:
		FUNC10(xfer, 0, FUNC9(xfer));
		FUNC7(xfer);
		return;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC11(xfer);
			goto tr_setup;
		}
		return;
	}
}