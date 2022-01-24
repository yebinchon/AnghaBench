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
typedef  int uint32_t ;
struct usie_softc {int /*<<< orphan*/ * sc_resp_temp; struct ucom_softc* sc_ucom; } ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ucom_softc {struct usie_softc* sc_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int USIE_BUFSIZE ; 
 int USIE_HIPCNS_MIN ; 
 int /*<<< orphan*/  USIE_HIP_FRM_CHR ; 
 int /*<<< orphan*/  FUNC2 (struct ucom_softc*,struct usb_page_cache*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_page_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*) ; 
 struct ucom_softc* FUNC9 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct usie_softc*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC12(struct usb_xfer *xfer, usb_error_t error)
{
	struct ucom_softc *ucom = FUNC9(xfer);
	struct usie_softc *sc = ucom->sc_parent;
	struct usb_page_cache *pc;
	uint32_t actlen;

	FUNC10(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		pc = FUNC5(xfer, 0);

		/* handle CnS response */
		if (ucom == sc->sc_ucom && actlen >= USIE_HIPCNS_MIN) {

			FUNC0("transferred=%u\n", actlen);

			/* check if it is really CnS reply */
			FUNC3(pc, 0, sc->sc_resp_temp, 1);

			if (sc->sc_resp_temp[0] == USIE_HIP_FRM_CHR) {

				/* verify actlen */
				if (actlen > USIE_BUFSIZE)
					actlen = USIE_BUFSIZE;

				/* get complete message */
				FUNC3(pc, 0, sc->sc_resp_temp, actlen);
				FUNC11(sc, sc->sc_resp_temp, actlen);

				/* need to fall though */
				goto tr_setup;
			}
			/* else call ucom_put_data() */
		}
		/* standard ucom transfer */
		FUNC2(ucom, pc, 0, actlen);

		/* fall though */
	case USB_ST_SETUP:
tr_setup:
		FUNC7(xfer, 0, FUNC6(xfer));
		FUNC4(xfer);
		break;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			FUNC8(xfer);
			goto tr_setup;
		}
		break;
	}
}