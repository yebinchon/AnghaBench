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
struct zyd_tx_radiotap_header {int /*<<< orphan*/  wt_rate; int /*<<< orphan*/  wt_flags; } ;
struct zyd_tx_data {int /*<<< orphan*/  rate; TYPE_1__* ni; int /*<<< orphan*/  desc; struct mbuf* m; } ;
struct TYPE_6__ {int /*<<< orphan*/  ic_oerrors; } ;
struct zyd_softc {int /*<<< orphan*/  sc_dev; TYPE_3__ sc_ic; struct zyd_tx_radiotap_header sc_txtap; int /*<<< orphan*/  tx_q; } ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_5__ {int len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ieee80211vap {int dummy; } ;
struct TYPE_4__ {struct ieee80211vap* ni_vap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zyd_softc*,int /*<<< orphan*/ ,char*,int) ; 
 struct zyd_tx_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int /*<<< orphan*/  USB_ERR_TIMEOUT ; 
 int FUNC3 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  ZYD_DEBUG_ANY ; 
 int ZYD_MAX_TXBUFSZ ; 
 int ZYD_TX_DESC_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211vap*,struct mbuf*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC8 (struct usb_page_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_page_cache*,int,struct mbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC12 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 struct zyd_tx_data* FUNC13 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_xfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_xfer*,struct zyd_tx_data*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_xfer*) ; 
 struct zyd_softc* FUNC17 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct zyd_softc*) ; 
 int /*<<< orphan*/  FUNC20 (struct zyd_tx_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC21(struct usb_xfer *xfer, usb_error_t error)
{
	struct zyd_softc *sc = FUNC17(xfer);
	struct ieee80211vap *vap;
	struct zyd_tx_data *data;
	struct mbuf *m;
	struct usb_page_cache *pc;
	int actlen;

	FUNC18(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC3(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC0(sc, ZYD_DEBUG_ANY, "transfer complete, %u bytes\n",
		    actlen);

		/* free resources */
		data = FUNC13(xfer);
		FUNC20(data, 0);
		FUNC15(xfer, NULL);

		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		data = FUNC1(&sc->tx_q);
		if (data) {
			FUNC2(&sc->tx_q, next);
			m = data->m;

			if (m->m_pkthdr.len > (int)ZYD_MAX_TXBUFSZ) {
				FUNC0(sc, ZYD_DEBUG_ANY, "data overflow, %u bytes\n",
				    m->m_pkthdr.len);
				m->m_pkthdr.len = ZYD_MAX_TXBUFSZ;
			}
			pc = FUNC12(xfer, 0);
			FUNC8(pc, 0, &data->desc, ZYD_TX_DESC_SIZE);
			FUNC10(pc, ZYD_TX_DESC_SIZE, m, 0,
			    m->m_pkthdr.len);

			vap = data->ni->ni_vap;
			if (FUNC6(vap)) {
				struct zyd_tx_radiotap_header *tap = &sc->sc_txtap;

				tap->wt_flags = 0;
				tap->wt_rate = data->rate;

				FUNC7(vap, m);
			}

			FUNC14(xfer, 0, ZYD_TX_DESC_SIZE + m->m_pkthdr.len);
			FUNC15(xfer, data);
			FUNC11(xfer);
		}
		FUNC19(sc);
		break;

	default:			/* Error */
		FUNC0(sc, ZYD_DEBUG_ANY, "transfer error, %s\n",
		    FUNC9(error));

		FUNC4(sc->sc_ic.ic_oerrors, 1);
		data = FUNC13(xfer);
		FUNC15(xfer, NULL);
		if (data != NULL)
			FUNC20(data, error);

		if (error != USB_ERR_CANCELLED) {
			if (error == USB_ERR_TIMEOUT)
				FUNC5(sc->sc_dev, "device timeout\n");

			/*
			 * Try to clear stall first, also if other
			 * errors occur, hence clearing stall
			 * introduces a 50 ms delay:
			 */
			FUNC16(xfer);
			goto tr_setup;
		}
		break;
	}
}