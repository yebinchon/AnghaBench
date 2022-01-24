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
typedef  size_t uint8_t ;
typedef  int uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct umcs7840_softc {struct ucom_softc* sc_ucom; } ;
struct ucom_softc {int /*<<< orphan*/  sc_portno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (struct ucom_softc*,struct usb_page_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC4 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 struct umcs7840_softc* FUNC8 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC9(struct usb_xfer *xfer, usb_error_t error, uint8_t subunit)
{
	struct umcs7840_softc *sc = FUNC8(xfer);
	struct ucom_softc *ucom = &sc->sc_ucom[subunit];
	struct usb_page_cache *pc;
	uint32_t actlen;

	FUNC0("Port %d write, state = %d\n", ucom->sc_portno, FUNC1(xfer));

	switch (FUNC1(xfer)) {
	case USB_ST_SETUP:
	case USB_ST_TRANSFERRED:
tr_setup:
		pc = FUNC4(xfer, 0);
		if (FUNC2(ucom, pc, 0, FUNC5(xfer), &actlen)) {
			FUNC0("Port %d write, has %d bytes\n", ucom->sc_portno, actlen);
			FUNC6(xfer, 0, actlen);
			FUNC3(xfer);
		}
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