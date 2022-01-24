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
struct g_modem_softc {int sc_throughput; int sc_tx_busy; int sc_data_len; int /*<<< orphan*/  sc_data_buf; int /*<<< orphan*/  sc_mode; int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  G_MODEM_BUFSIZE ; 
 size_t G_MODEM_BULK_WR ; 
 int /*<<< orphan*/  G_MODEM_MODE_LOOP ; 
 int /*<<< orphan*/  G_MODEM_MODE_SILENT ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 struct g_modem_softc* FUNC8 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct usb_xfer *xfer, usb_error_t error)
{
	struct g_modem_softc *sc = FUNC8(xfer);
	int actlen;
	int aframes;

	FUNC9(xfer, &actlen, NULL, &aframes, NULL);

	FUNC0("st=%d aframes=%d actlen=%d bytes\n",
	    FUNC1(xfer), aframes, actlen);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:

		sc->sc_throughput += actlen;

		if (sc->sc_mode == G_MODEM_MODE_LOOP) {
			sc->sc_tx_busy = 1;
			sc->sc_data_len = actlen;
			FUNC3(sc->sc_xfer[G_MODEM_BULK_WR]);
			break;
		}

	case USB_ST_SETUP:
tr_setup:
		if ((sc->sc_mode == G_MODEM_MODE_SILENT) ||
		    (sc->sc_tx_busy != 0))
			break;

		FUNC5(xfer, 0, sc->sc_data_buf, G_MODEM_BUFSIZE);
		FUNC6(xfer, 1);
		FUNC4(xfer);
		break;

	default:			/* Error */
		FUNC0("error=%s\n", FUNC2(error));

		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC7(xfer);
			goto tr_setup;
		}
		break;
	}
}