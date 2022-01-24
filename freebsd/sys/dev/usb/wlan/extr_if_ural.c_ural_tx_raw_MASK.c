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
typedef  int /*<<< orphan*/  uint32_t ;
struct ural_tx_data {int rate; int /*<<< orphan*/  desc; struct ieee80211_node* ni; struct mbuf* m; } ;
struct ural_softc {scalar_t__ tx_nfree; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  tx_q; int /*<<< orphan*/  tx_free; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211com {int /*<<< orphan*/  ic_rt; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int ibp_rate0; int ibp_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int IEEE80211_BPF_CTS ; 
 int IEEE80211_BPF_NOACK ; 
 int IEEE80211_BPF_RTS ; 
 int /*<<< orphan*/  IEEE80211_PROT_CTSONLY ; 
 int /*<<< orphan*/  IEEE80211_PROT_RTSCTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (struct ural_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RAL_TX_ACK ; 
 int /*<<< orphan*/  RAL_TX_IFS_SIFS ; 
 struct ural_tx_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ural_tx_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t URAL_BULK_WR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/  next ; 
 int FUNC8 (struct ural_softc*,struct mbuf*,struct ieee80211_node*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ural_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct ural_softc *sc, struct mbuf *m0, struct ieee80211_node *ni,
    const struct ieee80211_bpf_params *params)
{
	struct ieee80211com *ic = ni->ni_ic;
	struct ural_tx_data *data;
	uint32_t flags;
	int error;
	int rate;

	FUNC2(sc, MA_OWNED);
	FUNC1(params != NULL, ("no raw xmit params"));

	rate = params->ibp_rate0;
	if (!FUNC6(ic->ic_rt, rate)) {
		FUNC7(m0);
		return EINVAL;
	}
	flags = 0;
	if ((params->ibp_flags & IEEE80211_BPF_NOACK) == 0)
		flags |= RAL_TX_ACK;
	if (params->ibp_flags & (IEEE80211_BPF_RTS|IEEE80211_BPF_CTS)) {
		error = FUNC8(sc, m0, ni,
		    params->ibp_flags & IEEE80211_BPF_RTS ?
			 IEEE80211_PROT_RTSCTS : IEEE80211_PROT_CTSONLY,
		    rate);
		if (error || sc->tx_nfree == 0) {
			FUNC7(m0);
			return ENOBUFS;
		}
		flags |= RAL_TX_IFS_SIFS;
	}

	data = FUNC3(&sc->tx_free);
	FUNC5(&sc->tx_free, next);
	sc->tx_nfree--;

	data->m = m0;
	data->ni = ni;
	data->rate = rate;

	/* XXX need to setup descriptor ourself */
	FUNC9(sc, &data->desc, flags, m0->m_pkthdr.len, rate);

	FUNC0(10, "sending raw frame len=%u rate=%u\n",
	    m0->m_pkthdr.len, rate);

	FUNC4(&sc->tx_q, data, next);
	FUNC10(sc->sc_xfer[URAL_BULK_WR]);

	return 0;
}