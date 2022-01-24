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
struct mwl_txq {int dummy; } ;
struct mwl_txbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mst_tx_qstop; } ;
struct mwl_softc {int /*<<< orphan*/  sc_mh; TYPE_1__ sc_stats; struct mwl_txq** sc_ac2q; scalar_t__ sc_invalid; int /*<<< orphan*/  sc_running; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct mwl_softc* ic_softc; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENETDOWN ; 
 int ENOBUFS ; 
 size_t FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 struct mwl_txbuf* FUNC2 (struct mwl_softc*,struct mwl_txq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mwl_txq*,struct mwl_txbuf*) ; 
 scalar_t__ FUNC5 (struct mwl_softc*,struct ieee80211_node*,struct mwl_txbuf*,struct mbuf*) ; 

__attribute__((used)) static int
FUNC6(struct ieee80211_node *ni, struct mbuf *m,
	const struct ieee80211_bpf_params *params)
{
	struct ieee80211com *ic = ni->ni_ic;
	struct mwl_softc *sc = ic->ic_softc;
	struct mwl_txbuf *bf;
	struct mwl_txq *txq;

	if (!sc->sc_running || sc->sc_invalid) {
		FUNC1(m);
		return ENETDOWN;
	}
	/*
	 * Grab a TX buffer and associated resources.
	 * Note that we depend on the classification
	 * by the 802.11 layer to get to the right h/w
	 * queue.  Management frames must ALWAYS go on
	 * queue 1 but we cannot just force that here
	 * because we may receive non-mgt frames.
	 */
	txq = sc->sc_ac2q[FUNC0(m)];
	bf = FUNC2(sc, txq);
	if (bf == NULL) {
		sc->sc_stats.mst_tx_qstop++;
		FUNC1(m);
		return ENOBUFS;
	}
	/*
	 * Pass the frame to the h/w for transmission.
	 */
	if (FUNC5(sc, ni, bf, m)) {
		FUNC4(txq, bf);

		return EIO;		/* XXX */
	}
	/*
	 * NB: We don't need to lock against tx done because
	 * this just prods the firmware to check the transmit
	 * descriptors.  The firmware will also start fetching
	 * descriptors by itself if it notices new ones are
	 * present when it goes to deliver a tx done interrupt
	 * to the host. So if we race with tx done processing
	 * it's ok.  Delivering the kick here rather than in
	 * mwl_tx_start is an optimization to avoid poking the
	 * firmware for each packet.
	 *
	 * NB: the queue id isn't used so 0 is ok.
	 */
	FUNC3(sc->sc_mh, 0/*XXX*/);
	return 0;
}