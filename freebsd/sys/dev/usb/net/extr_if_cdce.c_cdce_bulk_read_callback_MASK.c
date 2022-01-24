#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int uint8_t ;
struct usb_xfer {int dummy; } ;
struct mbuf {int /*<<< orphan*/  m_len; int /*<<< orphan*/  m_data; } ;
struct ether_header {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ue_udev; } ;
struct cdce_softc {int sc_flags; struct mbuf** sc_rx_buf; TYPE_1__ sc_ue; } ;

/* Variables and functions */
 int CDCE_FLAG_ZAURUS ; 
 int /*<<< orphan*/  CDCE_FRAMES_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
 int /*<<< orphan*/  USB_MODE_HOST ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (struct mbuf**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 struct mbuf* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*) ; 
 int FUNC10 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*) ; 
 struct cdce_softc* FUNC14 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16(struct usb_xfer *xfer, usb_error_t error)
{
	struct cdce_softc *sc = FUNC14(xfer);
	struct mbuf *m;
	uint8_t x;
	int actlen;
	int aframes;
	int len;

	FUNC15(xfer, &actlen, NULL, &aframes, NULL);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:

		FUNC0("received %u bytes in %u frames\n", actlen, aframes);

		for (x = 0; x != aframes; x++) {

			m = sc->sc_rx_buf[x];
			sc->sc_rx_buf[x] = NULL;
			len = FUNC10(xfer, x);

			/* Strip off CRC added by Zaurus, if any */
			if ((sc->sc_flags & CDCE_FLAG_ZAURUS) && len >= 14)
				len -= 4;

			if (len < (int)sizeof(struct ether_header)) {
				FUNC3(m);
				continue;
			}
			/* queue up mbuf */
			FUNC6(&sc->sc_ue, m, len);
		}

		/* FALLTHROUGH */
	case USB_ST_SETUP:
		/* 
		 * TODO: Implement support for multi frame transfers,
		 * when the USB hardware supports it.
		 */
		for (x = 0; x != 1; x++) {
			if (sc->sc_rx_buf[x] == NULL) {
				m = FUNC4();
				if (m == NULL)
					goto tr_stall;
				sc->sc_rx_buf[x] = m;
			} else {
				m = sc->sc_rx_buf[x];
			}

			FUNC11(xfer, x, m->m_data, m->m_len);
		}
		/* set number of frames and start hardware */
		FUNC12(xfer, x);
		FUNC9(xfer);
		/* flush any received frames */
		FUNC5(&sc->sc_ue);
		break;

	default:			/* Error */
		FUNC0("error = %s\n",
		    FUNC7(error));

		if (error != USB_ERR_CANCELLED) {
tr_stall:
			if (FUNC8(sc->sc_ue.ue_udev) == USB_MODE_HOST) {
				/* try to clear stall first */
				FUNC13(xfer);
				FUNC12(xfer, 0);
				FUNC9(xfer);
			}
			break;
		}

		/* need to free the RX-mbufs when we are cancelled */
		FUNC2(sc->sc_rx_buf, CDCE_FRAMES_MAX);
		break;
	}
}