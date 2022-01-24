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
typedef  int uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ucycom_softc {int sc_ist; int /*<<< orphan*/  sc_ilen; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_model; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
#define  MODEL_CY7C63743 131 
#define  MODEL_CY7C64013 130 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct usb_page_cache*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_page_cache*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 struct ucycom_softc* FUNC8 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct usb_xfer *xfer, usb_error_t error)
{
	struct ucycom_softc *sc = FUNC8(xfer);
	struct usb_page_cache *pc;
	uint8_t buf[2];
	uint32_t offset;
	int len;
	int actlen;

	FUNC9(xfer, &actlen, NULL, NULL, NULL);
	pc = FUNC5(xfer, 0);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		switch (sc->sc_model) {
		case MODEL_CY7C63743:
			if (actlen < 1) {
				goto tr_setup;
			}
			FUNC3(pc, 0, buf, 1);

			sc->sc_ist = buf[0] & ~0x07;
			len = buf[0] & 0x07;

			actlen--;
			offset = 1;

			break;

		case MODEL_CY7C64013:
			if (actlen < 2) {
				goto tr_setup;
			}
			FUNC3(pc, 0, buf, 2);

			sc->sc_ist = buf[0] & ~0x07;
			len = buf[1];

			actlen -= 2;
			offset = 2;

			break;

		default:
			FUNC0(0, "unsupported model number\n");
			goto tr_setup;
		}

		if (len > actlen)
			len = actlen;
		if (len)
			FUNC2(&sc->sc_ucom, pc, offset, len);
		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		FUNC6(xfer, 0, sc->sc_ilen);
		FUNC4(xfer);
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