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
struct ieee80211vap {int /*<<< orphan*/  iv_ifp; TYPE_1__* iv_ic; } ;
struct rum_vap {int maxretry; int /*<<< orphan*/  ratectl_ch; struct ieee80211vap vap; } ;
struct ieee80211_ratectl_tx_stats {int nframes; int nsuccess; int nretries; int /*<<< orphan*/  flags; } ;
struct rum_softc {int /*<<< orphan*/ * sta; struct ieee80211_ratectl_tx_stats sc_txs; } ;
struct TYPE_2__ {struct rum_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_RATECTL_TX_STATS_RETRIES ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  RT2573_STA_CSR0 ; 
 int /*<<< orphan*/  FUNC0 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rum_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211vap*,struct ieee80211_ratectl_tx_stats*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rum_ratectl_timeout ; 
 int /*<<< orphan*/  FUNC5 (struct rum_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rum_vap*) ; 

__attribute__((used)) static void
FUNC7(void *arg, int pending)
{
	struct rum_vap *rvp = arg;
	struct ieee80211vap *vap = &rvp->vap;
	struct rum_softc *sc = vap->iv_ic->ic_softc;
	struct ieee80211_ratectl_tx_stats *txs = &sc->sc_txs;
	int ok[3], fail;

	FUNC0(sc);
	/* read and clear statistic registers (STA_CSR0 to STA_CSR5) */
	FUNC5(sc, RT2573_STA_CSR0, sc->sta, sizeof(sc->sta));

	ok[0] = (FUNC4(sc->sta[4]) & 0xffff);	/* TX ok w/o retry */
	ok[1] = (FUNC4(sc->sta[4]) >> 16);	/* TX ok w/ one retry */
	ok[2] = (FUNC4(sc->sta[5]) & 0xffff);	/* TX ok w/ multiple retries */
	fail =  (FUNC4(sc->sta[5]) >> 16);	/* TX retry-fail count */

	txs->flags = IEEE80211_RATECTL_TX_STATS_RETRIES;
	txs->nframes = ok[0] + ok[1] + ok[2] + fail;
	txs->nsuccess = txs->nframes - fail;
	/* XXX at least */
	txs->nretries = ok[1] + ok[2] * 2 + fail * (rvp->maxretry + 1);

	if (txs->nframes != 0)
		FUNC2(vap, txs);

	/* count TX retry-fail as Tx errors */
	FUNC3(vap->iv_ifp, IFCOUNTER_OERRORS, fail);

	FUNC6(&rvp->ratectl_ch, hz, rum_ratectl_timeout, rvp);
	FUNC1(sc);
}