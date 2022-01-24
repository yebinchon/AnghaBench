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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct uchcom_softc {int /*<<< orphan*/  sc_ucom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,...) ; 
 int UCHCOM_INTR_LEAST ; 
 size_t UCHCOM_INTR_STAT1 ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (struct uchcom_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_page_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*) ; 
 struct uchcom_softc* FUNC10 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct usb_xfer *xfer, usb_error_t error)
{
	struct uchcom_softc *sc = FUNC10(xfer);
	struct usb_page_cache *pc;
	uint8_t buf[UCHCOM_INTR_LEAST];
	int actlen;

	FUNC11(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:

		FUNC0("actlen = %u\n", actlen);

		if (actlen >= UCHCOM_INTR_LEAST) {
			pc = FUNC6(xfer, 0);
			FUNC4(pc, 0, buf, UCHCOM_INTR_LEAST);

			FUNC0("data = 0x%02X 0x%02X 0x%02X 0x%02X\n",
			    (unsigned)buf[0], (unsigned)buf[1],
			    (unsigned)buf[2], (unsigned)buf[3]);

			FUNC2(sc, buf[UCHCOM_INTR_STAT1]);
			FUNC3(&sc->sc_ucom);
		}
	case USB_ST_SETUP:
tr_setup:
		FUNC8(xfer, 0, FUNC7(xfer));
		FUNC5(xfer);
		break;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC9(xfer);
			goto tr_setup;
		}
		break;
	}
}