#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mbuf {int dummy; } ;
struct malo_txq {int /*<<< orphan*/  nfree; int /*<<< orphan*/  free; } ;
struct malo_txbuf {int /*<<< orphan*/ * bf_node; int /*<<< orphan*/ * bf_m; } ;
struct malo_softc {int /*<<< orphan*/  malo_mh; struct malo_txq* malo_txq; scalar_t__ malo_invalid; int /*<<< orphan*/  malo_running; } ;
struct ieee80211com {struct malo_softc* ic_softc; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENETDOWN ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (struct malo_txq*) ; 
 int /*<<< orphan*/  FUNC1 (struct malo_txq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct malo_txbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bf_list ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 struct malo_txbuf* FUNC4 (struct malo_softc*,struct malo_txq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct malo_softc*,struct ieee80211_node*,struct malo_txbuf*,struct mbuf*) ; 

__attribute__((used)) static int
FUNC7(struct ieee80211_node *ni, struct mbuf *m,
	const struct ieee80211_bpf_params *params)
{
	struct ieee80211com *ic = ni->ni_ic;
	struct malo_softc *sc = ic->ic_softc;
	struct malo_txbuf *bf;
	struct malo_txq *txq;

	if (!sc->malo_running || sc->malo_invalid) {
		FUNC3(m);
		return ENETDOWN;
	}

	/*
	 * Grab a TX buffer and associated resources.  Note that we depend
	 * on the classification by the 802.11 layer to get to the right h/w
	 * queue.  Management frames must ALWAYS go on queue 1 but we
	 * cannot just force that here because we may receive non-mgt frames.
	 */
	txq = &sc->malo_txq[0];
	bf = FUNC4(sc, txq);
	if (bf == NULL) {
		FUNC3(m);
		return ENOBUFS;
	}

	/*
	 * Pass the frame to the h/w for transmission.
	 */
	if (FUNC6(sc, ni, bf, m) != 0) {
		bf->bf_m = NULL;
		bf->bf_node = NULL;
		FUNC0(txq);
		FUNC2(&txq->free, bf, bf_list);
		txq->nfree++;
		FUNC1(txq);

		return EIO;		/* XXX */
	}

	/*
	 * NB: We don't need to lock against tx done because this just
	 * prods the firmware to check the transmit descriptors.  The firmware
	 * will also start fetching descriptors by itself if it notices
	 * new ones are present when it goes to deliver a tx done interrupt
	 * to the host. So if we race with tx done processing it's ok.
	 * Delivering the kick here rather than in malo_tx_start is
	 * an optimization to avoid poking the firmware for each packet.
	 *
	 * NB: the queue id isn't used so 0 is ok.
	 */
	FUNC5(sc->malo_mh, 0/*XXX*/);

	return 0;
}