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
struct rt2860_vap {int (* ral_newstate ) (struct ieee80211vap*,int,int) ;} ;
struct rt2860_softc {int dummy; } ;
struct ieee80211vap {scalar_t__ iv_state; scalar_t__ iv_opmode; struct ieee80211_node* iv_bss; struct ieee80211com* iv_ic; } ;
struct ieee80211com {scalar_t__ ic_opmode; struct rt2860_softc* ic_softc; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_chan; int /*<<< orphan*/  ni_bssid; int /*<<< orphan*/  ni_rates; } ;
typedef  enum ieee80211_state { ____Placeholder_ieee80211_state } ieee80211_state ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IEEE80211_M_HOSTAP ; 
 scalar_t__ IEEE80211_M_IBSS ; 
 scalar_t__ IEEE80211_M_MBSS ; 
 scalar_t__ IEEE80211_M_MONITOR ; 
 int IEEE80211_S_INIT ; 
 scalar_t__ IEEE80211_S_RUN ; 
 int FUNC1 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2860_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT2860_BCN_TIME_CFG ; 
 int RT2860_BCN_TX_EN ; 
 int RT2860_LED_LINK_2GHZ ; 
 int RT2860_LED_LINK_5GHZ ; 
 int RT2860_LED_RADIO ; 
 int RT2860_TBTT_TIMER_EN ; 
 int RT2860_TSF_TIMER_EN ; 
 struct rt2860_vap* FUNC3 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2860_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2860_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rt2860_softc*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rt2860_softc*) ; 
 int FUNC11 (struct rt2860_softc*,struct ieee80211vap*) ; 
 int FUNC12 (struct ieee80211vap*,int,int) ; 

__attribute__((used)) static int
FUNC13(struct ieee80211vap *vap, enum ieee80211_state nstate, int arg)
{
	struct rt2860_vap *rvp = FUNC3(vap);
	struct ieee80211com *ic = vap->iv_ic;
	struct rt2860_softc *sc = ic->ic_softc;
	uint32_t tmp;
	int error;

	if (vap->iv_state == IEEE80211_S_RUN) {
		/* turn link LED off */
		FUNC9(sc, RT2860_LED_RADIO);
	}

	if (nstate == IEEE80211_S_INIT && vap->iv_state == IEEE80211_S_RUN) {
		/* abort TSF synchronization */
		tmp = FUNC1(sc, RT2860_BCN_TIME_CFG);
		FUNC2(sc, RT2860_BCN_TIME_CFG,
		    tmp & ~(RT2860_BCN_TX_EN | RT2860_TSF_TIMER_EN |
		    RT2860_TBTT_TIMER_EN));
	}

	FUNC8(sc, 0);

	error = rvp->ral_newstate(vap, nstate, arg);
	if (error != 0)
		return (error);

	if (nstate == IEEE80211_S_RUN) {
		struct ieee80211_node *ni = vap->iv_bss;

		if (ic->ic_opmode != IEEE80211_M_MONITOR) {
			FUNC4(sc);
			FUNC10(sc);
			FUNC6(sc, &ni->ni_rates);
			FUNC7(sc, ni->ni_bssid);
		}

		if (vap->iv_opmode == IEEE80211_M_HOSTAP ||
		    vap->iv_opmode == IEEE80211_M_IBSS ||
		    vap->iv_opmode == IEEE80211_M_MBSS) {
			error = FUNC11(sc, vap);
			if (error != 0)
				return error;
		}

		if (ic->ic_opmode != IEEE80211_M_MONITOR) {
			FUNC5(sc);
			FUNC8(sc, 500);
		}

		/* turn link LED on */
		FUNC9(sc, RT2860_LED_RADIO |
		    (FUNC0(ni->ni_chan) ?
		     RT2860_LED_LINK_2GHZ : RT2860_LED_LINK_5GHZ));
	}
	return error;
}