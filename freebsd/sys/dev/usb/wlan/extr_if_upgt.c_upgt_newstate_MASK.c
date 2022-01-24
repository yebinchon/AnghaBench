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
struct upgt_vap {int (* newstate ) (struct ieee80211vap*,int,int) ;} ;
struct upgt_softc {int sc_state; int /*<<< orphan*/  sc_watchdog_ch; int /*<<< orphan*/  sc_led_ch; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int /*<<< orphan*/  ic_curchan; struct upgt_softc* ic_softc; } ;
typedef  enum ieee80211_state { ____Placeholder_ieee80211_state } ieee80211_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
#define  IEEE80211_S_ASSOC 132 
#define  IEEE80211_S_AUTH 131 
#define  IEEE80211_S_INIT 130 
#define  IEEE80211_S_RUN 129 
#define  IEEE80211_S_SCAN 128 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 
 int /*<<< orphan*/  UPGT_LED_OFF ; 
 int /*<<< orphan*/  UPGT_LED_ON ; 
 int /*<<< orphan*/  FUNC2 (struct upgt_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct upgt_softc*) ; 
 struct upgt_vap* FUNC4 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ieee80211vap*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct upgt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct upgt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct upgt_softc*,int) ; 

__attribute__((used)) static int
FUNC10(struct ieee80211vap *vap, enum ieee80211_state nstate, int arg)
{
	struct upgt_vap *uvp = FUNC4(vap);
	struct ieee80211com *ic = vap->iv_ic;
	struct upgt_softc *sc = ic->ic_softc;

	/* do it in a process context */
	sc->sc_state = nstate;

	FUNC1(ic);
	FUNC2(sc);
	FUNC5(&sc->sc_led_ch);
	FUNC5(&sc->sc_watchdog_ch);

	switch (nstate) {
	case IEEE80211_S_INIT:
		/* do not accept any frames if the device is down */
		(void)FUNC9(sc, sc->sc_state);
		FUNC8(sc, UPGT_LED_OFF);
		break;
	case IEEE80211_S_SCAN:
		FUNC7(sc, ic->ic_curchan);
		break;
	case IEEE80211_S_AUTH:
		FUNC7(sc, ic->ic_curchan);
		break;
	case IEEE80211_S_ASSOC:
		break;
	case IEEE80211_S_RUN:
		FUNC9(sc, sc->sc_state);
		FUNC8(sc, UPGT_LED_ON);
		break;
	default:
		break;
	}
	FUNC3(sc);
	FUNC0(ic);
	return (uvp->newstate(vap, nstate, arg));
}