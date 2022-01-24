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
struct g_modem_softc {int sc_throughput; int sc_tx_interval; int sc_pattern_len; int* sc_data_buf; int* sc_pattern; int sc_data_len; int /*<<< orphan*/  sc_tx_busy; int /*<<< orphan*/  sc_mode; int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int G_MODEM_BUFSIZE ; 
 size_t G_MODEM_BULK_RD ; 
 int /*<<< orphan*/  G_MODEM_MODE_LOOP ; 
 int /*<<< orphan*/  G_MODEM_MODE_PATTERN ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*) ; 
 struct g_modem_softc* FUNC9 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct usb_xfer *xfer, usb_error_t error)
{
	struct g_modem_softc *sc = FUNC9(xfer);
	int actlen;
	int aframes;
	int mod;
	int x;
	int max;

	FUNC10(xfer, &actlen, NULL, &aframes, NULL);

	FUNC0("st=%d aframes=%d actlen=%d bytes\n",
	    FUNC1(xfer), aframes, actlen);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:

		sc->sc_tx_busy = 0;
		sc->sc_throughput += actlen;

		if (sc->sc_mode == G_MODEM_MODE_LOOP) {
			/* start loop */
			FUNC3(sc->sc_xfer[G_MODEM_BULK_RD]);
			break;
		} else if ((sc->sc_mode == G_MODEM_MODE_PATTERN) && (sc->sc_tx_interval != 0)) {
			/* wait for next timeout */
			break;
		}
	case USB_ST_SETUP:
tr_setup:
		if (sc->sc_mode == G_MODEM_MODE_PATTERN) {

			mod = sc->sc_pattern_len;
			max = sc->sc_tx_interval ? mod : G_MODEM_BUFSIZE;

			if (mod == 0) {
				for (x = 0; x != max; x++)
					sc->sc_data_buf[x] = x % 255;
			} else {
				for (x = 0; x != max; x++)
					sc->sc_data_buf[x] = sc->sc_pattern[x % mod];
			}

			FUNC5(xfer, 0, sc->sc_data_buf, max);
			FUNC7(xfer, 0);
			FUNC6(xfer, 1);
			FUNC4(xfer);

		} else if (sc->sc_mode == G_MODEM_MODE_LOOP) {

			if (sc->sc_tx_busy == 0)
				break;

			x = sc->sc_tx_interval;

			if (x < 0)
				x = 0;
			else if (x > 256)
				x = 256;

			FUNC5(xfer, 0, sc->sc_data_buf, sc->sc_data_len);
			FUNC7(xfer, x);
			FUNC6(xfer, 1);
			FUNC4(xfer);
		} else {
			sc->sc_tx_busy = 0;
		}
		break;

	default:			/* Error */
		FUNC0("error=%s\n", FUNC2(error));

		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC8(xfer);
			goto tr_setup;
		}
		break;
	}
}