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
struct ural_vap {int /*<<< orphan*/  ratectl_ch; struct ieee80211vap vap; } ;
struct ieee80211_ratectl_tx_stats {int nsuccess; int nframes; int nretries; int /*<<< orphan*/  flags; } ;
struct ural_softc {int* sta; struct ieee80211_ratectl_tx_stats sc_txs; } ;
struct TYPE_2__ {struct ural_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_RATECTL_TX_STATS_RETRIES ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  FUNC0 (struct ural_softc*) ; 
 int /*<<< orphan*/  RAL_STA_CSR0 ; 
 int /*<<< orphan*/  FUNC1 (struct ural_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211vap*,struct ieee80211_ratectl_tx_stats*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ural_ratectl_timeout ; 
 int /*<<< orphan*/  FUNC4 (struct ural_softc*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ural_vap*) ; 

__attribute__((used)) static void
FUNC6(void *arg, int pending)
{
	struct ural_vap *uvp = arg;
	struct ieee80211vap *vap = &uvp->vap;
	struct ural_softc *sc = vap->iv_ic->ic_softc;
	struct ieee80211_ratectl_tx_stats *txs = &sc->sc_txs;
	int fail;

	FUNC0(sc);
	/* read and clear statistic registers (STA_CSR0 to STA_CSR10) */
	FUNC4(sc, RAL_STA_CSR0, sc->sta, sizeof(sc->sta));

	txs->flags = IEEE80211_RATECTL_TX_STATS_RETRIES;
	txs->nsuccess = sc->sta[7] +	/* TX ok w/o retry */
			sc->sta[8];	/* TX ok w/ retry */
	fail = sc->sta[9];		/* TX retry-fail count */
	txs->nframes = txs->nsuccess + fail;
	/* XXX fail * maxretry */
	txs->nretries = sc->sta[8] + fail;

	FUNC2(vap, txs);

	/* count TX retry-fail as Tx errors */
	FUNC3(vap->iv_ifp, IFCOUNTER_OERRORS, fail);

	FUNC5(&uvp->ratectl_ch, hz, ural_ratectl_timeout, uvp);
	FUNC1(sc);
}