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
typedef  size_t uint8_t ;
typedef  int uint32_t ;
struct ieee80211_ratectl_tx_status {int long_retries; int /*<<< orphan*/  status; int /*<<< orphan*/  flags; } ;
struct rt2860_softc {struct ieee80211_node** wcid2ni; struct ieee80211_ratectl_tx_status sc_txs; } ;
struct ieee80211_node {TYPE_1__* ni_vap; } ;
struct TYPE_2__ {int /*<<< orphan*/  iv_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  IEEE80211_RATECTL_STATUS_LONG_RETRY ; 
 int /*<<< orphan*/  IEEE80211_RATECTL_TX_FAIL_UNSPECIFIED ; 
 int /*<<< orphan*/  IEEE80211_RATECTL_TX_SUCCESS ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int FUNC1 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int RT2860_TXQ_ACKREQ ; 
 int RT2860_TXQ_MCS_SHIFT ; 
 int RT2860_TXQ_OK ; 
 int RT2860_TXQ_PID_SHIFT ; 
 int RT2860_TXQ_VLD ; 
 int RT2860_TXQ_WCID_SHIFT ; 
 int /*<<< orphan*/  RT2860_TX_STAT_FIFO ; 
 size_t RT2860_WCID_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_node*,struct ieee80211_ratectl_tx_status*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct rt2860_softc *sc)
{
	struct ieee80211_ratectl_tx_status *txs = &sc->sc_txs;
	struct ieee80211_node *ni;
	uint32_t stat;
	uint8_t wcid, mcs, pid;

	/* drain Tx status FIFO (maxsize = 16) */
	txs->flags = IEEE80211_RATECTL_STATUS_LONG_RETRY;
	while ((stat = FUNC1(sc, RT2860_TX_STAT_FIFO)) & RT2860_TXQ_VLD) {
		FUNC0(4, ("tx stat 0x%08x\n", stat));

		wcid = (stat >> RT2860_TXQ_WCID_SHIFT) & 0xff;
		if (wcid > RT2860_WCID_MAX)
			continue;
		ni = sc->wcid2ni[wcid];

		/* if no ACK was requested, no feedback is available */
		if (!(stat & RT2860_TXQ_ACKREQ) || ni == NULL)
			continue;

		/* update per-STA AMRR stats */
		if (stat & RT2860_TXQ_OK) {
			/*
			 * Check if there were retries, ie if the Tx success
			 * rate is different from the requested rate.  Note
			 * that it works only because we do not allow rate
			 * fallback from OFDM to CCK.
			 */
			mcs = (stat >> RT2860_TXQ_MCS_SHIFT) & 0x7f;
			pid = (stat >> RT2860_TXQ_PID_SHIFT) & 0xf;
			if (mcs + 1 != pid)
				txs->long_retries = 1;
			else
				txs->long_retries = 0;
			txs->status = IEEE80211_RATECTL_TX_SUCCESS;
			FUNC2(ni, txs);
		} else {
			txs->status = IEEE80211_RATECTL_TX_FAIL_UNSPECIFIED;
			txs->long_retries = 1;	/* XXX */
			FUNC2(ni, txs);
			FUNC3(ni->ni_vap->iv_ifp,
			    IFCOUNTER_OERRORS, 1);
		}
	}
}