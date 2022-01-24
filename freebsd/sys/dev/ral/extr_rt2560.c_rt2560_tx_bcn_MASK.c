#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rt2560_tx_radiotap_header {int wt_rate; int /*<<< orphan*/  wt_antenna; scalar_t__ wt_flags; } ;
struct rt2560_tx_desc {int dummy; } ;
struct rt2560_tx_data {int /*<<< orphan*/  map; struct ieee80211_node* ni; struct mbuf* m; } ;
struct TYPE_8__ {size_t cur; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_dmat; int /*<<< orphan*/  data_dmat; struct rt2560_tx_data* data; struct rt2560_tx_desc* desc; } ;
struct rt2560_softc {TYPE_3__ bcnq; int /*<<< orphan*/  tx_ant; struct rt2560_tx_radiotap_header sc_txtap; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ieee80211vap {TYPE_1__* iv_txparms; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_chan; struct ieee80211vap* ni_vap; } ;
struct TYPE_9__ {int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_4__ bus_dma_segment_t ;
struct TYPE_6__ {int mgmtrate; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct rt2560_softc*,int,char*,int /*<<< orphan*/ ,size_t,int) ; 
 int RT2560_BEACON_RING_COUNT ; 
 int RT2560_MAX_SCATTER ; 
 int RT2560_TX_IFS_NEWBACKOFF ; 
 int RT2560_TX_TIMESTAMP ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*,TYPE_4__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211vap*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2560_softc*,struct rt2560_tx_desc*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct rt2560_softc *sc, struct mbuf *m0,
    struct ieee80211_node *ni)
{
	struct ieee80211vap *vap = ni->ni_vap;
	struct rt2560_tx_desc *desc;
	struct rt2560_tx_data *data;
	bus_dma_segment_t segs[RT2560_MAX_SCATTER];
	int nsegs, rate, error;

	desc = &sc->bcnq.desc[sc->bcnq.cur];
	data = &sc->bcnq.data[sc->bcnq.cur];

	/* XXX maybe a separate beacon rate? */
	rate = vap->iv_txparms[FUNC4(ni->ni_chan)].mgmtrate;

	error = FUNC1(sc->bcnq.data_dmat, data->map, m0,
	    segs, &nsegs, BUS_DMA_NOWAIT);
	if (error != 0) {
		FUNC3(sc->sc_dev, "could not map mbuf (error %d)\n",
		    error);
		FUNC7(m0);
		return error;
	}

	if (FUNC5(vap)) {
		struct rt2560_tx_radiotap_header *tap = &sc->sc_txtap;

		tap->wt_flags = 0;
		tap->wt_rate = rate;
		tap->wt_antenna = sc->tx_ant;

		FUNC6(vap, m0);
	}

	data->m = m0;
	data->ni = ni;

	FUNC8(sc, desc, RT2560_TX_IFS_NEWBACKOFF |
	    RT2560_TX_TIMESTAMP, m0->m_pkthdr.len, rate, 0, segs->ds_addr);

	FUNC0(sc, 10, "sending beacon frame len=%u idx=%u rate=%u\n",
	    m0->m_pkthdr.len, sc->bcnq.cur, rate);

	FUNC2(sc->bcnq.data_dmat, data->map, BUS_DMASYNC_PREWRITE);
	FUNC2(sc->bcnq.desc_dmat, sc->bcnq.desc_map,
	    BUS_DMASYNC_PREWRITE);

	sc->bcnq.cur = (sc->bcnq.cur + 1) % RT2560_BEACON_RING_COUNT;

	return 0;
}