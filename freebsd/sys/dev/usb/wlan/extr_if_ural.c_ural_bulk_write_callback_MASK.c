#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ural_tx_radiotap_header {int /*<<< orphan*/  wt_antenna; int /*<<< orphan*/  wt_rate; int /*<<< orphan*/  wt_flags; } ;
struct ural_tx_data {int /*<<< orphan*/  rate; TYPE_1__* ni; int /*<<< orphan*/  desc; struct mbuf* m; } ;
struct ural_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  tx_ant; struct ural_tx_radiotap_header sc_txtap; int /*<<< orphan*/  tx_q; } ;
struct TYPE_4__ {int len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ieee80211vap {int dummy; } ;
struct TYPE_3__ {struct ieee80211vap* ni_vap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int RAL_FRAME_SIZE ; 
 int RAL_TX_DESC_SIZE ; 
 struct ural_tx_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_ERR_STALLED ; 
 int /*<<< orphan*/  USB_ERR_TIMEOUT ; 
 int FUNC3 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211vap*,struct mbuf*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC7 (struct ural_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ural_tx_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_page_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_page_cache*,int,struct mbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC13 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 struct ural_tx_data* FUNC14 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_xfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_xfer*,struct ural_tx_data*) ; 
 int /*<<< orphan*/  FUNC17 (struct usb_xfer*) ; 
 struct ural_softc* FUNC18 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC20(struct usb_xfer *xfer, usb_error_t error)
{
	struct ural_softc *sc = FUNC18(xfer);
	struct ieee80211vap *vap;
	struct ural_tx_data *data;
	struct mbuf *m;
	struct usb_page_cache *pc;
	int len;

	FUNC19(xfer, &len, NULL, NULL, NULL);

	switch (FUNC3(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC0(11, "transfer complete, %d bytes\n", len);

		/* free resources */
		data = FUNC14(xfer);
		FUNC8(data, 0);
		FUNC16(xfer, NULL);

		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		data = FUNC1(&sc->tx_q);
		if (data) {
			FUNC2(&sc->tx_q, next);
			m = data->m;

			if (m->m_pkthdr.len > (int)(RAL_FRAME_SIZE + RAL_TX_DESC_SIZE)) {
				FUNC0(0, "data overflow, %u bytes\n",
				    m->m_pkthdr.len);
				m->m_pkthdr.len = (RAL_FRAME_SIZE + RAL_TX_DESC_SIZE);
			}
			pc = FUNC13(xfer, 0);
			FUNC9(pc, 0, &data->desc, RAL_TX_DESC_SIZE);
			FUNC11(pc, RAL_TX_DESC_SIZE, m, 0,
			    m->m_pkthdr.len);

			vap = data->ni->ni_vap;
			if (FUNC5(vap)) {
				struct ural_tx_radiotap_header *tap = &sc->sc_txtap;

				tap->wt_flags = 0;
				tap->wt_rate = data->rate;
				tap->wt_antenna = sc->tx_ant;

				FUNC6(vap, m);
			}

			/* xfer length needs to be a multiple of two! */
			len = (RAL_TX_DESC_SIZE + m->m_pkthdr.len + 1) & ~1;
			if ((len % 64) == 0)
				len += 2;

			FUNC0(11, "sending frame len=%u xferlen=%u\n",
			    m->m_pkthdr.len, len);

			FUNC15(xfer, 0, len);
			FUNC16(xfer, data);

			FUNC12(xfer);
		}
		FUNC7(sc);
		break;

	default:			/* Error */
		FUNC0(11, "transfer error, %s\n",
		    FUNC10(error));

		data = FUNC14(xfer);
		if (data != NULL) {
			FUNC8(data, error);
			FUNC16(xfer, NULL);
		}

		if (error == USB_ERR_STALLED) {
			/* try to clear stall first */
			FUNC17(xfer);
			goto tr_setup;
		}
		if (error == USB_ERR_TIMEOUT)
			FUNC4(sc->sc_dev, "device timeout\n");
		break;
	}
}