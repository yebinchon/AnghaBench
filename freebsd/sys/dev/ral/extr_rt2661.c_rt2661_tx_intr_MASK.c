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
typedef  int uint32_t ;
struct rt2661_tx_ring {size_t stat; size_t count; int /*<<< orphan*/  queued; struct rt2661_tx_data* data; } ;
struct rt2661_tx_data {int /*<<< orphan*/  rix; struct ieee80211_node* ni; struct mbuf* m; } ;
struct ieee80211_ratectl_tx_status {void* long_retries; void* status; void* flags; } ;
struct rt2661_softc {scalar_t__ sc_tx_timer; int /*<<< orphan*/  sc_dev; struct rt2661_tx_ring mgtq; struct rt2661_tx_ring* txq; struct ieee80211_ratectl_tx_status sc_txs; } ;
struct mbuf {int dummy; } ;
struct ieee80211_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2661_softc*,int,char*,...) ; 
 int /*<<< orphan*/  IEEE80211_FIXED_RATE_NONE ; 
 void* IEEE80211_RATECTL_TX_FAIL_LONG ; 
 void* IEEE80211_RATECTL_TX_SUCCESS ; 
 int FUNC1 (struct rt2661_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT2661_STA_CSR4 ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 void* FUNC4 (int) ; 
#define  RT2661_TX_RETRY_FAIL 129 
 int RT2661_TX_STAT_VALID ; 
#define  RT2661_TX_SUCCESS 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_node*,struct ieee80211_ratectl_tx_status*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_node*,struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2661_softc*) ; 

__attribute__((used)) static void
FUNC9(struct rt2661_softc *sc)
{
	struct ieee80211_ratectl_tx_status *txs = &sc->sc_txs;
	struct rt2661_tx_ring *txq;
	struct rt2661_tx_data *data;
	uint32_t val;
	int error, qid;

	txs->flags = IEEE80211_RATECTL_TX_FAIL_LONG;
	for (;;) {
		struct ieee80211_node *ni;
		struct mbuf *m;

		val = FUNC1(sc, RT2661_STA_CSR4);
		if (!(val & RT2661_TX_STAT_VALID))
			break;

		/* retrieve the queue in which this frame was sent */
		qid = FUNC2(val);
		txq = (qid <= 3) ? &sc->txq[qid] : &sc->mgtq;

		/* retrieve rate control algorithm context */
		data = &txq->data[txq->stat];
		m = data->m;
		data->m = NULL;
		ni = data->ni;
		data->ni = NULL;

		/* if no frame has been sent, ignore */
		if (ni == NULL)
			continue;

		switch (FUNC3(val)) {
		case RT2661_TX_SUCCESS:
			txs->status = IEEE80211_RATECTL_TX_SUCCESS;
			txs->long_retries = FUNC4(val);

			FUNC0(sc, 10, "data frame sent successfully after "
			    "%d retries\n", txs->long_retries);
			if (data->rix != IEEE80211_FIXED_RATE_NONE)
				FUNC6(ni, txs);
			error = 0;
			break;

		case RT2661_TX_RETRY_FAIL:
			txs->status = IEEE80211_RATECTL_TX_FAIL_LONG;
			txs->long_retries = FUNC4(val);

			FUNC0(sc, 9, "%s\n",
			    "sending data frame failed (too much retries)");
			if (data->rix != IEEE80211_FIXED_RATE_NONE)
				FUNC6(ni, txs);
			error = 1;
			break;

		default:
			/* other failure */
			FUNC5(sc->sc_dev,
			    "sending data frame failed 0x%08x\n", val);
			error = 1;
		}

		FUNC0(sc, 15, "tx done q=%d idx=%u\n", qid, txq->stat);

		txq->queued--;
		if (++txq->stat >= txq->count)	/* faster than % count */
			txq->stat = 0;

		FUNC7(ni, m, error);
	}

	sc->sc_tx_timer = 0;

	FUNC8(sc);
}