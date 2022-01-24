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
struct rt2661_tx_ring {size_t cur; int /*<<< orphan*/  queued; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_dmat; int /*<<< orphan*/  data_dmat; struct rt2661_tx_desc* desc; struct rt2661_tx_data* data; } ;
struct rt2661_tx_desc {int dummy; } ;
struct rt2661_tx_data {int /*<<< orphan*/  map; int /*<<< orphan*/  rix; int /*<<< orphan*/  ni; struct mbuf* m; } ;
struct rt2661_softc {int /*<<< orphan*/  sc_dev; struct rt2661_tx_ring* txq; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ieee80211com {int /*<<< orphan*/  ic_rt; } ;
struct ieee80211_node {TYPE_1__* ni_vap; struct ieee80211com* ni_ic; } ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;
struct TYPE_3__ {int /*<<< orphan*/  iv_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  IEEE80211_FIXED_RATE_NONE ; 
 int IEEE80211_PROT_RTSCTS ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int RT2661_MAX_SCATTER ; 
 int RT2661_TX_MORE_FRAG ; 
 int RT2661_TX_NEED_ACK ; 
 int RT2661_TX_RING_COUNT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct mbuf* FUNC3 (struct ieee80211_node*,struct mbuf const*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2661_softc*,struct rt2661_tx_desc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int
FUNC9(struct rt2661_softc *sc, int ac,
    const struct mbuf *m, struct ieee80211_node *ni, int prot, int rate)
{
	struct ieee80211com *ic = ni->ni_ic;
	struct rt2661_tx_ring *txq = &sc->txq[ac];
	struct rt2661_tx_desc *desc;
	struct rt2661_tx_data *data;
	struct mbuf *mprot;
	int protrate, flags, error;
	bus_dma_segment_t segs[RT2661_MAX_SCATTER];
	int nsegs;

	mprot = FUNC3(ni, m, rate, prot);
	if (mprot == NULL) {
		FUNC6(ni->ni_vap->iv_ifp, IFCOUNTER_OERRORS, 1);
		FUNC2(sc->sc_dev,
		    "could not allocate mbuf for protection mode %d\n", prot);
		return ENOBUFS;
	}

	data = &txq->data[txq->cur];
	desc = &txq->desc[txq->cur];

	error = FUNC0(txq->data_dmat, data->map, mprot, segs,
	    &nsegs, 0);
	if (error != 0) {
		FUNC2(sc->sc_dev,
		    "could not map mbuf (error %d)\n", error);
		FUNC7(mprot);
		return error;
	}

	data->m = mprot;
	data->ni = FUNC5(ni);
	/* ctl frames are not taken into account for amrr */
	data->rix = IEEE80211_FIXED_RATE_NONE;

	protrate = FUNC4(ic->ic_rt, rate);
	flags = RT2661_TX_MORE_FRAG;
	if (prot == IEEE80211_PROT_RTSCTS)
		flags |= RT2661_TX_NEED_ACK;

	FUNC8(sc, desc, flags, 0, mprot->m_pkthdr.len,
	    protrate, segs, 1, ac);

	FUNC1(txq->data_dmat, data->map, BUS_DMASYNC_PREWRITE);
	FUNC1(txq->desc_dmat, txq->desc_map, BUS_DMASYNC_PREWRITE);

	txq->queued++;
	txq->cur = (txq->cur + 1) % RT2661_TX_RING_COUNT;

	return 0;
}