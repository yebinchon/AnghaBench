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
typedef  int u_long ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int /*<<< orphan*/  ic_txpowlimit; struct ath_softc* ic_softc; } ;
struct ath_softc {struct ath_hal* sc_ah; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_RESET_FULL ; 
#define  IEEE80211_IOC_TXPOWER 128 
 int /*<<< orphan*/  FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ath_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct ieee80211vap *vap, u_long cmd)
{
	struct ieee80211com *ic = vap->iv_ic;
	struct ath_softc *sc = ic->ic_softc;
	struct ath_hal *ah = sc->sc_ah;

	switch (cmd) {
	case IEEE80211_IOC_TXPOWER:
		/*
		 * If per-packet TPC is enabled, then we have nothing
		 * to do; otherwise we need to force the global limit.
		 * All this can happen directly; no need to reset.
		 */
		if (!FUNC0(ah))
			FUNC1(ah, ic->ic_txpowlimit);
		return 0;
	}
	/* XXX? Full or NOLOSS? */
	return FUNC2(sc, ATH_RESET_FULL);
}