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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct run_vap {int rvp_id; int (* newstate ) (struct ieee80211vap*,int,int) ;int /*<<< orphan*/ * beacon_mbuf; } ;
struct run_softc {int ratectl_run; int runbmap; int ap_running; int adhoc_running; int sta_running; int /*<<< orphan*/  ratectl_ch; int /*<<< orphan*/  sc_bssid; int /*<<< orphan*/  running; } ;
struct ieee80211vap {int iv_state; struct ieee80211_txparam* iv_txparms; int /*<<< orphan*/  iv_bss; int /*<<< orphan*/  iv_opmode; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int /*<<< orphan*/  ic_curchan; int /*<<< orphan*/  ic_bsschan; int /*<<< orphan*/  ic_opmode; struct run_softc* ic_softc; } ;
struct ieee80211_txparam {int /*<<< orphan*/  ucastrate; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_bssid; } ;
typedef  enum ieee80211_state { ____Placeholder_ieee80211_state } ieee80211_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_CHAN_ANYC ; 
 int /*<<< orphan*/  IEEE80211_FIXED_RATE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
#define  IEEE80211_M_HOSTAP 133 
#define  IEEE80211_M_IBSS 132 
#define  IEEE80211_M_MBSS 131 
 int /*<<< orphan*/  IEEE80211_M_MONITOR ; 
#define  IEEE80211_M_STA 130 
#define  IEEE80211_S_INIT 129 
#define  IEEE80211_S_RUN 128 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*) ; 
 int RT2860_LED_LINK_2GHZ ; 
 int RT2860_LED_LINK_5GHZ ; 
 int RT2860_LED_RADIO ; 
 int /*<<< orphan*/  RT2860_TX_STA_CNT0 ; 
 int /*<<< orphan*/  RUN_DEBUG_STATE ; 
 int /*<<< orphan*/  FUNC4 (struct run_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct run_softc*) ; 
 int RUN_RATECTL_OFF ; 
 int /*<<< orphan*/  FUNC6 (struct run_softc*) ; 
 struct run_vap* FUNC7 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  hz ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_node*) ; 
 struct ieee80211_node* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ieee80211_state_name ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct run_softc*) ; 
 int /*<<< orphan*/  run_ratectl_to ; 
 int /*<<< orphan*/  FUNC16 (struct run_softc*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct run_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct run_softc*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC21 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC22 (struct ieee80211com*) ; 
 int FUNC23 (struct ieee80211vap*,int,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct run_softc*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC26(struct ieee80211vap *vap, enum ieee80211_state nstate, int arg)
{
	const struct ieee80211_txparam *tp;
	struct ieee80211com *ic = vap->iv_ic;
	struct run_softc *sc = ic->ic_softc;
	struct run_vap *rvp = FUNC7(vap);
	enum ieee80211_state ostate;
	uint32_t sta[3];
	uint8_t ratectl;
	uint8_t restart_ratectl = 0;
	uint8_t bid = 1 << rvp->rvp_id;

	ostate = vap->iv_state;
	FUNC4(sc, RUN_DEBUG_STATE, "%s -> %s\n",
		ieee80211_state_name[ostate],
		ieee80211_state_name[nstate]);

	FUNC3(ic);
	FUNC5(sc);

	ratectl = sc->ratectl_run; /* remember current state */
	sc->ratectl_run = RUN_RATECTL_OFF;
	FUNC25(&sc->ratectl_ch);

	if (ostate == IEEE80211_S_RUN) {
		/* turn link LED off */
		FUNC19(sc, RT2860_LED_RADIO);
	}

	switch (nstate) {
	case IEEE80211_S_INIT:
		restart_ratectl = 1;

		if (ostate != IEEE80211_S_RUN)
			break;

		ratectl &= ~bid;
		sc->runbmap &= ~bid;

		/* abort TSF synchronization if there is no vap running */
		if (--sc->running == 0)
			FUNC12(sc);
		break;

	case IEEE80211_S_RUN:
		if (!(sc->runbmap & bid)) {
			if(sc->running++)
				restart_ratectl = 1;
			sc->runbmap |= bid;
		}

		FUNC11(rvp->beacon_mbuf);
		rvp->beacon_mbuf = NULL;

		switch (vap->iv_opmode) {
		case IEEE80211_M_HOSTAP:
		case IEEE80211_M_MBSS:
			sc->ap_running |= bid;
			ic->ic_opmode = vap->iv_opmode;
			FUNC21(vap);
			break;
		case IEEE80211_M_IBSS:
			sc->adhoc_running |= bid;
			if (!sc->ap_running)
				ic->ic_opmode = vap->iv_opmode;
			FUNC21(vap);
			break;
		case IEEE80211_M_STA:
			sc->sta_running |= bid;
			if (!sc->ap_running && !sc->adhoc_running)
				ic->ic_opmode = vap->iv_opmode;

			/* read statistic counters (clear on read) */
			FUNC16(sc, RT2860_TX_STA_CNT0,
			    (uint8_t *)sta, sizeof sta);

			break;
		default:
			ic->ic_opmode = vap->iv_opmode;
			break;
		}

		if (vap->iv_opmode != IEEE80211_M_MONITOR) {
			struct ieee80211_node *ni;

			if (ic->ic_bsschan == IEEE80211_CHAN_ANYC) {
				FUNC6(sc);
				FUNC2(ic);
				return (-1);
			}
			FUNC22(ic);
			FUNC13(sc);
			FUNC20(sc);
			FUNC17(sc);
			ni = FUNC10(vap->iv_bss);
			FUNC0(sc->sc_bssid, ni->ni_bssid);
			FUNC18(sc, sc->sc_bssid);
			FUNC9(ni);
			FUNC15(sc);

			/* enable automatic rate adaptation */
			tp = &vap->iv_txparms[FUNC8(ic->ic_curchan)];
			if (tp->ucastrate == IEEE80211_FIXED_RATE_NONE)
				ratectl |= bid;
		} else
			FUNC14(sc);

		/* turn link LED on */
		FUNC19(sc, RT2860_LED_RADIO |
		    (FUNC1(ic->ic_curchan) ?
		     RT2860_LED_LINK_2GHZ : RT2860_LED_LINK_5GHZ));

		break;
	default:
		FUNC4(sc, RUN_DEBUG_STATE, "undefined state\n");
		break;
	}

	/* restart amrr for running VAPs */
	if ((sc->ratectl_run = ratectl) && restart_ratectl)
		FUNC24(&sc->ratectl_ch, hz, run_ratectl_to, sc);

	FUNC6(sc);
	FUNC2(ic);

	return(rvp->newstate(vap, nstate, arg));
}