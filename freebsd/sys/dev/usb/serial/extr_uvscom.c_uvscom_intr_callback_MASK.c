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
struct uvscom_softc {int sc_unit_status; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_msr; int /*<<< orphan*/  sc_lsr; } ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  SER_CTS ; 
 int /*<<< orphan*/  SER_DCD ; 
 int /*<<< orphan*/  SER_DSR ; 
 int /*<<< orphan*/  ULSR_RXRDY ; 
 int /*<<< orphan*/  ULSR_TXRDY ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC0 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int UVSCOM_CTS ; 
 int UVSCOM_DCD ; 
 int UVSCOM_DSR ; 
 int UVSCOM_RXRDY ; 
 int UVSCOM_TXRDY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_page_cache*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC4 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 struct uvscom_softc* FUNC8 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct usb_xfer *xfer, usb_error_t error)
{
	struct uvscom_softc *sc = FUNC8(xfer);
	struct usb_page_cache *pc;
	uint8_t buf[2];
	int actlen;

	FUNC9(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC0(xfer)) {
	case USB_ST_TRANSFERRED:
		if (actlen >= 2) {

			pc = FUNC4(xfer, 0);
			FUNC2(pc, 0, buf, sizeof(buf));

			sc->sc_lsr = 0;
			sc->sc_msr = 0;
			sc->sc_unit_status = buf[1];

			if (buf[0] & UVSCOM_TXRDY) {
				sc->sc_lsr |= ULSR_TXRDY;
			}
			if (buf[0] & UVSCOM_RXRDY) {
				sc->sc_lsr |= ULSR_RXRDY;
			}
			if (buf[1] & UVSCOM_CTS) {
				sc->sc_msr |= SER_CTS;
			}
			if (buf[1] & UVSCOM_DSR) {
				sc->sc_msr |= SER_DSR;
			}
			if (buf[1] & UVSCOM_DCD) {
				sc->sc_msr |= SER_DCD;
			}
			/*
			 * the UCOM layer will ignore this call if the TTY
			 * device is closed!
			 */
			FUNC1(&sc->sc_ucom);
		}
	case USB_ST_SETUP:
tr_setup:
		FUNC6(xfer, 0, FUNC5(xfer));
		FUNC3(xfer);
		return;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC7(xfer);
			goto tr_setup;
		}
		return;
	}
}