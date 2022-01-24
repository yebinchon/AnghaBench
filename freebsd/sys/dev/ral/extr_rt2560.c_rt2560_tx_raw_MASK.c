#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct rt2560_tx_radiotap_header {int wt_rate; int /*<<< orphan*/  wt_antenna; scalar_t__ wt_flags; } ;
struct rt2560_tx_desc {int dummy; } ;
struct rt2560_tx_data {int /*<<< orphan*/  map; struct ieee80211_node* ni; struct mbuf* m; } ;
struct TYPE_6__ {size_t cur; int /*<<< orphan*/  queued; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_dmat; int /*<<< orphan*/  data_dmat; struct rt2560_tx_data* data; struct rt2560_tx_desc* desc; } ;
struct rt2560_softc {TYPE_2__ prioq; int /*<<< orphan*/  tx_ant; struct rt2560_tx_radiotap_header sc_txtap; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211com {int /*<<< orphan*/  ic_rt; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int ibp_rate0; int ibp_flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_3__ bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct rt2560_softc*,int,char*,int /*<<< orphan*/ ,size_t,int) ; 
 int EINVAL ; 
 int IEEE80211_BPF_CRYPTO ; 
 int IEEE80211_BPF_CTS ; 
 int IEEE80211_BPF_NOACK ; 
 int IEEE80211_BPF_RTS ; 
 int /*<<< orphan*/  IEEE80211_PROT_CTSONLY ; 
 int /*<<< orphan*/  IEEE80211_PROT_RTSCTS ; 
 int /*<<< orphan*/  FUNC1 (struct rt2560_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT2560_KICK_PRIO ; 
 int RT2560_MAX_SCATTER ; 
 int RT2560_PRIO_RING_COUNT ; 
 int /*<<< orphan*/  RT2560_TXCSR0 ; 
 int RT2560_TX_ACK ; 
 int RT2560_TX_IFS_SIFS ; 
 int RT2560_TX_LONG_RETRY ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*,TYPE_3__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211vap*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*) ; 
 int FUNC9 (struct rt2560_softc*,struct mbuf*,struct ieee80211_node*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rt2560_softc*,struct rt2560_tx_desc*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct rt2560_softc *sc, struct mbuf *m0,
    struct ieee80211_node *ni, const struct ieee80211_bpf_params *params)
{
	struct ieee80211vap *vap = ni->ni_vap;
	struct ieee80211com *ic = ni->ni_ic;
	struct rt2560_tx_desc *desc;
	struct rt2560_tx_data *data;
	bus_dma_segment_t segs[RT2560_MAX_SCATTER];
	uint32_t flags;
	int nsegs, rate, error;

	desc = &sc->prioq.desc[sc->prioq.cur];
	data = &sc->prioq.data[sc->prioq.cur];

	rate = params->ibp_rate0;
	if (!FUNC5(ic->ic_rt, rate)) {
		/* XXX fall back to mcast/mgmt rate? */
		FUNC8(m0);
		return EINVAL;
	}

	flags = 0;
	if ((params->ibp_flags & IEEE80211_BPF_NOACK) == 0)
		flags |= RT2560_TX_ACK;
	if (params->ibp_flags & (IEEE80211_BPF_RTS|IEEE80211_BPF_CTS)) {
		error = FUNC9(sc, m0, ni,
		    params->ibp_flags & IEEE80211_BPF_RTS ?
			 IEEE80211_PROT_RTSCTS : IEEE80211_PROT_CTSONLY,
		    rate);
		if (error) {
			FUNC8(m0);
			return error;
		}
		flags |= RT2560_TX_LONG_RETRY | RT2560_TX_IFS_SIFS;
	}

	error = FUNC2(sc->prioq.data_dmat, data->map, m0,
	    segs, &nsegs, 0);
	if (error != 0) {
		FUNC4(sc->sc_dev, "could not map mbuf (error %d)\n",
		    error);
		FUNC8(m0);
		return error;
	}

	if (FUNC6(vap)) {
		struct rt2560_tx_radiotap_header *tap = &sc->sc_txtap;

		tap->wt_flags = 0;
		tap->wt_rate = rate;
		tap->wt_antenna = sc->tx_ant;

		FUNC7(ni->ni_vap, m0);
	}

	data->m = m0;
	data->ni = ni;

	/* XXX need to setup descriptor ourself */
	FUNC10(sc, desc, flags, m0->m_pkthdr.len,
	    rate, (params->ibp_flags & IEEE80211_BPF_CRYPTO) != 0,
	    segs->ds_addr);

	FUNC3(sc->prioq.data_dmat, data->map, BUS_DMASYNC_PREWRITE);
	FUNC3(sc->prioq.desc_dmat, sc->prioq.desc_map,
	    BUS_DMASYNC_PREWRITE);

	FUNC0(sc, 10, "sending raw frame len=%u idx=%u rate=%u\n",
	    m0->m_pkthdr.len, sc->prioq.cur, rate);

	/* kick prio */
	sc->prioq.queued++;
	sc->prioq.cur = (sc->prioq.cur + 1) % RT2560_PRIO_RING_COUNT;
	FUNC1(sc, RT2560_TXCSR0, RT2560_KICK_PRIO);

	return 0;
}