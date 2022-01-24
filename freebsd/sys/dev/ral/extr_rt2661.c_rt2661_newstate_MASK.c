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
struct rt2661_vap {int (* ral_newstate ) (struct ieee80211vap*,int,int) ;} ;
struct rt2661_softc {int dummy; } ;
struct ieee80211vap {scalar_t__ iv_state; scalar_t__ iv_opmode; struct ieee80211_node* iv_bss; struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct rt2661_softc* ic_softc; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_bssid; int /*<<< orphan*/  ni_rates; } ;
typedef  enum ieee80211_state { ____Placeholder_ieee80211_state } ieee80211_state ;

/* Variables and functions */
 scalar_t__ IEEE80211_M_HOSTAP ; 
 scalar_t__ IEEE80211_M_IBSS ; 
 scalar_t__ IEEE80211_M_MBSS ; 
 scalar_t__ IEEE80211_M_MONITOR ; 
 int IEEE80211_S_INIT ; 
 scalar_t__ IEEE80211_S_RUN ; 
 int FUNC0 (struct rt2661_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2661_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT2661_TXRX_CSR9 ; 
 struct rt2661_vap* FUNC2 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2661_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2661_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2661_softc*) ; 
 int FUNC6 (struct rt2661_softc*,struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2661_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2661_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rt2661_softc*) ; 
 int FUNC10 (struct ieee80211vap*,int,int) ; 

__attribute__((used)) static int
FUNC11(struct ieee80211vap *vap, enum ieee80211_state nstate, int arg)
{
	struct rt2661_vap *rvp = FUNC2(vap);
	struct ieee80211com *ic = vap->iv_ic;
	struct rt2661_softc *sc = ic->ic_softc;
	int error;

	if (nstate == IEEE80211_S_INIT && vap->iv_state == IEEE80211_S_RUN) {
		uint32_t tmp;

		/* abort TSF synchronization */
		tmp = FUNC0(sc, RT2661_TXRX_CSR9);
		FUNC1(sc, RT2661_TXRX_CSR9, tmp & ~0x00ffffff);
	}

	error = rvp->ral_newstate(vap, nstate, arg);

	if (error == 0 && nstate == IEEE80211_S_RUN) {
		struct ieee80211_node *ni = vap->iv_bss;

		if (vap->iv_opmode != IEEE80211_M_MONITOR) {
			FUNC3(sc);
			FUNC9(sc);
			FUNC7(sc, &ni->ni_rates);
			FUNC8(sc, ni->ni_bssid);
		}

		if (vap->iv_opmode == IEEE80211_M_HOSTAP ||
		    vap->iv_opmode == IEEE80211_M_IBSS ||
		    vap->iv_opmode == IEEE80211_M_MBSS) {
			error = FUNC6(sc, vap);
			if (error != 0)
				return error;
		}
		if (vap->iv_opmode != IEEE80211_M_MONITOR)
			FUNC5(sc);
		else
			FUNC4(sc);
	}
	return error;
}