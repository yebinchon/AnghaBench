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
struct wmt_softc {int isize; int /*<<< orphan*/  report_id; int /*<<< orphan*/ * buf; } ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct wmt_softc*,int) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC2 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_page_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*) ; 
 struct wmt_softc* FUNC10 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct wmt_softc*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC13(struct usb_xfer *xfer, usb_error_t error)
{
	struct wmt_softc *sc = FUNC10(xfer);
	struct usb_page_cache *pc;
	uint8_t *buf = sc->buf;
	int len;

	FUNC11(xfer, &len, NULL, NULL, NULL);

	switch (FUNC2(xfer)) {
	case USB_ST_TRANSFERRED:
		pc = FUNC6(xfer, 0);

		FUNC1(6, "sc=%p actlen=%d\n", sc, len);

		if (len >= (int)sc->isize || (len > 0 && sc->report_id != 0)) {
			/* Limit report length to the maximum */
			if (len > (int)sc->isize)
				len = sc->isize;

			FUNC4(pc, 0, buf, len);

			/* Ignore irrelevant reports */
			if (sc->report_id && *buf != sc->report_id)
				goto tr_ignore;

			/* Make sure we don't process old data */
			if (len < sc->isize)
				FUNC3(buf + len, sc->isize - len);

			/* Strip leading "report ID" byte */
			if (sc->report_id) {
				len--;
				buf++;
			}

			FUNC12(sc, buf, len);
		} else {
tr_ignore:
			FUNC0("Ignored transfer, %d bytes\n", len);
		}

	case USB_ST_SETUP:
tr_setup:
		FUNC8(xfer, 0, FUNC7(xfer));
		FUNC5(xfer);
		break;
	default:
		if (error != USB_ERR_CANCELLED) {
			/* Try clear stall first */
			FUNC9(xfer);
			goto tr_setup;
		}
		break;
	}
}