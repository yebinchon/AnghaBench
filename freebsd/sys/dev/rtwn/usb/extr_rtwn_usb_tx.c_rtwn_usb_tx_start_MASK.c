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
typedef  int uint8_t ;
typedef  size_t uint16_t ;
struct usb_xfer {int dummy; } ;
struct rtwn_usb_softc {int /*<<< orphan*/  uc_tx_inactive; int /*<<< orphan*/  uc_tx_pending; struct usb_xfer** uc_xfer; } ;
struct rtwn_tx_desc_common {scalar_t__ offset; int /*<<< orphan*/  flags0; int /*<<< orphan*/  pktlen; } ;
struct rtwn_softc {scalar_t__ txdesc_len; int sc_tx_timer; int qfullmsk; } ;
struct rtwn_data {scalar_t__ buf; scalar_t__ buflen; int id; struct mbuf* m; struct ieee80211_node* ni; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211_node {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
#define  IEEE80211_FC0_TYPE_CTL 129 
#define  IEEE80211_FC0_TYPE_MGT 128 
 size_t FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 size_t RTWN_BULK_TX_VO ; 
 int /*<<< orphan*/  RTWN_FLAGS0_OWN ; 
 struct rtwn_usb_softc* FUNC2 (struct rtwn_softc*) ; 
 scalar_t__ RTWN_USB_TXBUFSZ ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct rtwn_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int*,scalar_t__) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC8 (struct rtwn_softc*,int*) ; 
 struct rtwn_data* FUNC9 (struct rtwn_usb_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtwn_tx_desc_common*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*) ; 
 size_t* wme2qid ; 

int
FUNC12(struct rtwn_softc *sc, struct ieee80211_node *ni,
    struct mbuf *m, uint8_t *tx_desc, uint8_t type, int id)
{
	struct rtwn_usb_softc *uc = FUNC2(sc);
	struct rtwn_tx_desc_common *txd;
	struct rtwn_data *data;
	struct usb_xfer *xfer;
	uint16_t ac;

	FUNC1(sc);

	if (m->m_pkthdr.len + sc->txdesc_len > RTWN_USB_TXBUFSZ)
		return (EINVAL);

	data = FUNC9(uc);
	if (data == NULL)
		return (ENOBUFS);

	ac = FUNC0(m);

	switch (type) {
	case IEEE80211_FC0_TYPE_CTL:
	case IEEE80211_FC0_TYPE_MGT:
		xfer = uc->uc_xfer[RTWN_BULK_TX_VO];
		break;
	default:
		xfer = uc->uc_xfer[wme2qid[ac]];
		break;
	}

	txd = (struct rtwn_tx_desc_common *)tx_desc;
	txd->pktlen = FUNC5(m->m_pkthdr.len);
	txd->offset = sc->txdesc_len;
	txd->flags0 |= RTWN_FLAGS0_OWN;
	FUNC10(txd);

	/* Dump Tx descriptor. */
	FUNC8(sc, tx_desc);

	FUNC7(data->buf, tx_desc, sc->txdesc_len);
	FUNC6(m, 0, m->m_pkthdr.len,
	    (caddr_t)(data->buf + sc->txdesc_len));

	data->buflen = m->m_pkthdr.len + sc->txdesc_len;
	data->id = id;
	data->ni = ni;
	if (data->ni != NULL) {
		data->m = m;
#ifndef D4054
		sc->sc_tx_timer = 5;
#endif
	}

	FUNC4(&uc->uc_tx_pending, data, next);
	if (FUNC3(&uc->uc_tx_inactive))
		sc->qfullmsk = 1;

	FUNC11(xfer);

	return (0);
}