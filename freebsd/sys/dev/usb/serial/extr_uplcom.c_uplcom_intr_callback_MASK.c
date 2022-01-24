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
struct uplcom_softc {int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_msr; int /*<<< orphan*/  sc_lsr; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int RSAQ_STATUS_BREAK_ERROR ; 
 int RSAQ_STATUS_CTS ; 
 int RSAQ_STATUS_DCD ; 
 int RSAQ_STATUS_DSR ; 
 int RSAQ_STATUS_FRAME_ERROR ; 
 int RSAQ_STATUS_OVERRUN_ERROR ; 
 int RSAQ_STATUS_PARITY_ERROR ; 
 int RSAQ_STATUS_RING ; 
 int /*<<< orphan*/  SER_CTS ; 
 int /*<<< orphan*/  SER_DCD ; 
 int /*<<< orphan*/  SER_DSR ; 
 int /*<<< orphan*/  SER_RI ; 
 int /*<<< orphan*/  ULSR_BI ; 
 int /*<<< orphan*/  ULSR_FE ; 
 int /*<<< orphan*/  ULSR_OE ; 
 int /*<<< orphan*/  ULSR_PE ; 
 size_t UPLCOM_STATE_INDEX ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_page_cache*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*) ; 
 struct uplcom_softc* FUNC9 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct usb_xfer *xfer, usb_error_t error)
{
	struct uplcom_softc *sc = FUNC9(xfer);
	struct usb_page_cache *pc;
	uint8_t buf[9];
	int actlen;

	FUNC10(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:

		FUNC0("actlen = %u\n", actlen);

		if (actlen >= 9) {

			pc = FUNC5(xfer, 0);
			FUNC3(pc, 0, buf, sizeof(buf));

			FUNC0("status = 0x%02x\n", buf[UPLCOM_STATE_INDEX]);

			sc->sc_lsr = 0;
			sc->sc_msr = 0;

			if (buf[UPLCOM_STATE_INDEX] & RSAQ_STATUS_CTS) {
				sc->sc_msr |= SER_CTS;
			}
			if (buf[UPLCOM_STATE_INDEX] & RSAQ_STATUS_OVERRUN_ERROR) {
				sc->sc_lsr |= ULSR_OE;
			}
			if (buf[UPLCOM_STATE_INDEX] & RSAQ_STATUS_PARITY_ERROR) {
				sc->sc_lsr |= ULSR_PE;
			}
			if (buf[UPLCOM_STATE_INDEX] & RSAQ_STATUS_FRAME_ERROR) {
				sc->sc_lsr |= ULSR_FE;
			}
			if (buf[UPLCOM_STATE_INDEX] & RSAQ_STATUS_RING) {
				sc->sc_msr |= SER_RI;
			}
			if (buf[UPLCOM_STATE_INDEX] & RSAQ_STATUS_BREAK_ERROR) {
				sc->sc_lsr |= ULSR_BI;
			}
			if (buf[UPLCOM_STATE_INDEX] & RSAQ_STATUS_DSR) {
				sc->sc_msr |= SER_DSR;
			}
			if (buf[UPLCOM_STATE_INDEX] & RSAQ_STATUS_DCD) {
				sc->sc_msr |= SER_DCD;
			}
			FUNC2(&sc->sc_ucom);
		}
	case USB_ST_SETUP:
tr_setup:
		FUNC7(xfer, 0, FUNC6(xfer));
		FUNC4(xfer);
		return;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC8(xfer);
			goto tr_setup;
		}
		return;
	}
}