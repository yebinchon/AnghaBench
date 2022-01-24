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
struct usb_cdc_notification {int* data; int /*<<< orphan*/  bNotification; int /*<<< orphan*/  bmRequestType; int /*<<< orphan*/  wIndex; } ;
struct uhso_softc {int /*<<< orphan*/ * sc_ucom; int /*<<< orphan*/  sc_msr; int /*<<< orphan*/  sc_lsr; int /*<<< orphan*/  sc_iface_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  SER_DCD ; 
 int /*<<< orphan*/  SER_DSR ; 
 int /*<<< orphan*/  SER_RI ; 
 int /*<<< orphan*/  UCDC_NOTIFICATION ; 
 int UCDC_NOTIFICATION_LENGTH ; 
 int UCDC_N_SERIAL_DCD ; 
 int UCDC_N_SERIAL_DSR ; 
 int UCDC_N_SERIAL_RI ; 
 int /*<<< orphan*/  UCDC_N_SERIAL_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,...) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC2 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_cdc_notification*,int) ; 
 struct usb_page_cache* FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 struct uhso_softc* FUNC7 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct usb_xfer *xfer, usb_error_t error)
{
	struct uhso_softc *sc = FUNC7(xfer);
	struct usb_page_cache *pc;
	int actlen;
	struct usb_cdc_notification cdc;

	FUNC8(xfer, &actlen, NULL, NULL, NULL);
	FUNC1(3, "status %d, actlen=%d\n", FUNC2(xfer), actlen);

	switch (FUNC2(xfer)) {
	case USB_ST_TRANSFERRED:
		if (actlen < UCDC_NOTIFICATION_LENGTH) {
			FUNC1(0, "UCDC notification too short: %d\n", actlen);
			goto tr_setup;
		}
		else if (actlen > (int)sizeof(struct usb_cdc_notification)) {
			FUNC1(0, "UCDC notification too large: %d\n", actlen);
			actlen = sizeof(struct usb_cdc_notification);
		}

		pc = FUNC5(xfer, 0);
		FUNC4(pc, 0, &cdc, actlen);

		if (FUNC0(cdc.wIndex) != sc->sc_iface_no) {
			FUNC1(0, "Interface mismatch, got %d expected %d\n",
			    FUNC0(cdc.wIndex), sc->sc_iface_no);
			goto tr_setup;
		}

		if (cdc.bmRequestType == UCDC_NOTIFICATION &&
		    cdc.bNotification == UCDC_N_SERIAL_STATE) {
			FUNC1(2, "notify = 0x%02x\n", cdc.data[0]);

			sc->sc_msr = 0;
			sc->sc_lsr = 0;
			if (cdc.data[0] & UCDC_N_SERIAL_RI)
				sc->sc_msr |= SER_RI;
			if (cdc.data[0] & UCDC_N_SERIAL_DSR)
				sc->sc_msr |= SER_DSR;	
			if (cdc.data[0] & UCDC_N_SERIAL_DCD)
				sc->sc_msr |= SER_DCD;

			FUNC3(&sc->sc_ucom[0]);
		}
	case USB_ST_SETUP:
tr_setup:
	default:
		if (error == USB_ERR_CANCELLED)
			break;
		FUNC6(xfer);
		goto tr_setup;
	}
}