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
struct ubsa_softc {int sc_lsr; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_msr; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  SER_CTS ; 
 int /*<<< orphan*/  SER_DCD ; 
 int /*<<< orphan*/  SER_DSR ; 
 int /*<<< orphan*/  SER_RI ; 
 int UBSA_MSR_CTS ; 
 int UBSA_MSR_DCD ; 
 int UBSA_MSR_DSR ; 
 int UBSA_MSR_RI ; 
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
 struct ubsa_softc* FUNC9 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct usb_xfer *xfer, usb_error_t error)
{
	struct ubsa_softc *sc = FUNC9(xfer);
	struct usb_page_cache *pc;
	uint8_t buf[4];
	int actlen;

	FUNC10(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:

		if (actlen >= (int)sizeof(buf)) {
			pc = FUNC5(xfer, 0);
			FUNC3(pc, 0, buf, sizeof(buf));

			/*
			 * MSR bits need translation from ns16550 to SER_* values.
			 * LSR bits are ns16550 in hardware and ucom.
			 */
			sc->sc_msr = 0;
			if (buf[3] & UBSA_MSR_CTS)
				sc->sc_msr |= SER_CTS;
			if (buf[3] & UBSA_MSR_DCD)
				sc->sc_msr |= SER_DCD;
			if (buf[3] & UBSA_MSR_RI)
				sc->sc_msr |= SER_RI;
			if (buf[3] & UBSA_MSR_DSR)
				sc->sc_msr |= SER_DSR;
			sc->sc_lsr = buf[2];

			FUNC0("lsr = 0x%02x, msr = 0x%02x\n",
			    sc->sc_lsr, sc->sc_msr);

			FUNC2(&sc->sc_ucom);
		} else {
			FUNC0("ignoring short packet, %d bytes\n", actlen);
		}
		/* FALLTHROUGH */
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