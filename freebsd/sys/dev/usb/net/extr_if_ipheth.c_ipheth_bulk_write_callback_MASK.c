#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  size_t uint8_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_2__ {size_t len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ipheth_softc {struct mbuf** sc_tx_buf; int /*<<< orphan*/  sc_ue; } ;
struct ifnet {int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 size_t IPHETH_BUF_SIZE ; 
 size_t IPHETH_TX_FRAMES_MAX ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC3 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf**,size_t) ; 
 struct ifnet* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_page_cache*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_page_cache*,int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC11 (struct usb_xfer*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_xfer*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_xfer*) ; 
 struct ipheth_softc* FUNC16 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC18(struct usb_xfer *xfer, usb_error_t error)
{
	struct ipheth_softc *sc = FUNC16(xfer);
	struct ifnet *ifp = FUNC6(&sc->sc_ue);
	struct usb_page_cache *pc;
	struct mbuf *m;
	uint8_t x;
	int actlen;
	int aframes;

	FUNC17(xfer, &actlen, NULL, &aframes, NULL);

	FUNC1(1, "\n");

	switch (FUNC3(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC1(11, "transfer complete: %u bytes in %u frames\n",
		    actlen, aframes);

		FUNC4(ifp, IFCOUNTER_OPACKETS, 1);

		/* free all previous TX buffers */
		FUNC5(sc->sc_tx_buf, IPHETH_TX_FRAMES_MAX);

		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		for (x = 0; x != IPHETH_TX_FRAMES_MAX; x++) {

			FUNC2(&ifp->if_snd, m);

			if (m == NULL)
				break;

			FUNC13(xfer,
			    x * IPHETH_BUF_SIZE, x);

			pc = FUNC11(xfer, x);

			sc->sc_tx_buf[x] = m;

			if (m->m_pkthdr.len > IPHETH_BUF_SIZE)
				m->m_pkthdr.len = IPHETH_BUF_SIZE;

			FUNC9(pc, 0, m, 0, m->m_pkthdr.len);

			FUNC12(xfer, x, IPHETH_BUF_SIZE);

			if (IPHETH_BUF_SIZE != m->m_pkthdr.len) {
				FUNC8(pc, m->m_pkthdr.len,
					IPHETH_BUF_SIZE - m->m_pkthdr.len);
			}

			/*
			 * If there's a BPF listener, bounce a copy of
			 * this frame to him:
			 */
			FUNC0(ifp, m);
		}
		if (x != 0) {
			FUNC14(xfer, x);

			FUNC10(xfer);
		}
		break;

	default:			/* Error */
		FUNC1(11, "transfer error, %s\n",
		    FUNC7(error));

		/* free all previous TX buffers */
		FUNC5(sc->sc_tx_buf, IPHETH_TX_FRAMES_MAX);

		/* count output errors */
		FUNC4(ifp, IFCOUNTER_OERRORS, 1);

		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC15(xfer);
			goto tr_setup;
		}
		break;
	}
}