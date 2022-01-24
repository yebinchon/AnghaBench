#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct rum_tx_radiotap_header {int /*<<< orphan*/  wt_antenna; int /*<<< orphan*/  wt_rate; int /*<<< orphan*/  wt_flags; } ;
struct rum_tx_data {int /*<<< orphan*/  rate; TYPE_1__* ni; int /*<<< orphan*/  desc; struct mbuf* m; } ;
struct TYPE_6__ {int /*<<< orphan*/  ic_oerrors; } ;
struct rum_softc {int /*<<< orphan*/  sc_dev; TYPE_3__ sc_ic; int /*<<< orphan*/  tx_ant; struct rum_tx_radiotap_header sc_txtap; int /*<<< orphan*/  tx_q; } ;
struct TYPE_5__ {int len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ieee80211vap {int dummy; } ;
struct TYPE_4__ {struct ieee80211vap* ni_vap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int MCLBYTES ; 
 int RT2573_TX_DESC_SIZE ; 
 struct rum_tx_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int /*<<< orphan*/  USB_ERR_TIMEOUT ; 
 int FUNC3 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211vap*,struct mbuf*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC8 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct rum_tx_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_page_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_page_cache*,int,struct mbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC14 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 struct rum_tx_data* FUNC15 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_xfer*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_xfer*,struct rum_tx_data*) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_xfer*) ; 
 struct rum_softc* FUNC19 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC20 (struct usb_xfer*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC21(struct usb_xfer *xfer, usb_error_t error)
{
	struct rum_softc *sc = FUNC19(xfer);
	struct ieee80211vap *vap;
	struct rum_tx_data *data;
	struct mbuf *m;
	struct usb_page_cache *pc;
	unsigned int len;
	int actlen, sumlen;

	FUNC20(xfer, &actlen, &sumlen, NULL, NULL);

	switch (FUNC3(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC0(11, "transfer complete, %d bytes\n", actlen);

		/* free resources */
		data = FUNC15(xfer);
		FUNC9(data, 0);
		FUNC17(xfer, NULL);

		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		data = FUNC1(&sc->tx_q);
		if (data) {
			FUNC2(&sc->tx_q, next);
			m = data->m;

			if (m->m_pkthdr.len > (int)(MCLBYTES + RT2573_TX_DESC_SIZE)) {
				FUNC0(0, "data overflow, %u bytes\n",
				    m->m_pkthdr.len);
				m->m_pkthdr.len = (MCLBYTES + RT2573_TX_DESC_SIZE);
			}
			pc = FUNC14(xfer, 0);
			FUNC10(pc, 0, &data->desc, RT2573_TX_DESC_SIZE);
			FUNC12(pc, RT2573_TX_DESC_SIZE, m, 0,
			    m->m_pkthdr.len);

			vap = data->ni->ni_vap;
			if (FUNC6(vap)) {
				struct rum_tx_radiotap_header *tap = &sc->sc_txtap;

				tap->wt_flags = 0;
				tap->wt_rate = data->rate;
				tap->wt_antenna = sc->tx_ant;

				FUNC7(vap, m);
			}

			/* align end on a 4-bytes boundary */
			len = (RT2573_TX_DESC_SIZE + m->m_pkthdr.len + 3) & ~3;
			if ((len % 64) == 0)
				len += 4;

			FUNC0(11, "sending frame len=%u xferlen=%u\n",
			    m->m_pkthdr.len, len);

			FUNC16(xfer, 0, len);
			FUNC17(xfer, data);

			FUNC13(xfer);
		}
		FUNC8(sc);
		break;

	default:			/* Error */
		FUNC0(11, "transfer error, %s\n",
		    FUNC11(error));

		FUNC4(sc->sc_ic.ic_oerrors, 1);
		data = FUNC15(xfer);
		if (data != NULL) {
			FUNC9(data, error);
			FUNC17(xfer, NULL);
		}

		if (error != USB_ERR_CANCELLED) {
			if (error == USB_ERR_TIMEOUT)
				FUNC5(sc->sc_dev, "device timeout\n");

			/*
			 * Try to clear stall first, also if other
			 * errors occur, hence clearing stall
			 * introduces a 50 ms delay:
			 */
			FUNC18(xfer);
			goto tr_setup;
		}
		break;
	}
}