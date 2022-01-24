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
struct mbuf {int /*<<< orphan*/  m_len; int /*<<< orphan*/  m_data; } ;
struct ipheth_softc {struct mbuf** sc_rx_buf; int /*<<< orphan*/  sc_ue; } ;
struct ether_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  ETHER_ALIGN ; 
 int /*<<< orphan*/  IPHETH_RX_ADJ ; 
 int IPHETH_RX_FRAMES_MAX ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (struct mbuf**,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 struct mbuf* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*) ; 
 int FUNC10 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*) ; 
 struct ipheth_softc* FUNC14 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16(struct usb_xfer *xfer, usb_error_t error)
{
	struct ipheth_softc *sc = FUNC14(xfer);
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

			if (len < (int)(sizeof(struct ether_header) +
			    IPHETH_RX_ADJ)) {
				FUNC4(m);
				continue;
			}

			FUNC3(m, IPHETH_RX_ADJ);

			/* queue up mbuf */
			FUNC7(&sc->sc_ue, m, len - IPHETH_RX_ADJ);
		}

		/* FALLTHROUGH */
	case USB_ST_SETUP:

		for (x = 0; x != IPHETH_RX_FRAMES_MAX; x++) {
			if (sc->sc_rx_buf[x] == NULL) {
				m = FUNC5();
				if (m == NULL)
					goto tr_stall;

				/* cancel alignment for ethernet */
				FUNC3(m, ETHER_ALIGN);

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
		FUNC6(&sc->sc_ue);
		break;

	default:			/* Error */
		FUNC0("error = %s\n", FUNC8(error));

		if (error != USB_ERR_CANCELLED) {
	tr_stall:
			/* try to clear stall first */
			FUNC13(xfer);
			FUNC12(xfer, 0);
			FUNC9(xfer);
			break;
		}
		/* need to free the RX-mbufs when we are cancelled */
		FUNC2(sc->sc_rx_buf, IPHETH_RX_FRAMES_MAX);
		break;
	}
}