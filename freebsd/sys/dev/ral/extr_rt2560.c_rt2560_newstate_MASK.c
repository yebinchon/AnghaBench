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
struct rt2560_vap {int (* ral_newstate ) (struct ieee80211vap*,int,int) ;} ;
struct rt2560_softc {int /*<<< orphan*/  sc_dev; } ;
struct mbuf {int dummy; } ;
struct ieee80211vap {scalar_t__ iv_state; scalar_t__ iv_opmode; struct ieee80211_node* iv_bss; TYPE_1__* iv_ic; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_bssid; int /*<<< orphan*/  ni_rates; } ;
typedef  enum ieee80211_state { ____Placeholder_ieee80211_state } ieee80211_state ;
struct TYPE_2__ {struct rt2560_softc* ic_softc; } ;

/* Variables and functions */
 int ENOBUFS ; 
 scalar_t__ IEEE80211_M_HOSTAP ; 
 scalar_t__ IEEE80211_M_IBSS ; 
 scalar_t__ IEEE80211_M_MBSS ; 
 scalar_t__ IEEE80211_M_MONITOR ; 
 int IEEE80211_S_INIT ; 
 scalar_t__ IEEE80211_S_RUN ; 
 int /*<<< orphan*/  FUNC0 (struct rt2560_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT2560_CSR14 ; 
 struct rt2560_vap* FUNC1 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct mbuf* FUNC3 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2560_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2560_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2560_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2560_softc*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct rt2560_softc*,struct mbuf*,struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct rt2560_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rt2560_softc*) ; 
 int FUNC12 (struct ieee80211vap*,int,int) ; 

__attribute__((used)) static int
FUNC13(struct ieee80211vap *vap, enum ieee80211_state nstate, int arg)
{
	struct rt2560_vap *rvp = FUNC1(vap);
	struct rt2560_softc *sc = vap->iv_ic->ic_softc;
	int error;

	if (nstate == IEEE80211_S_INIT && vap->iv_state == IEEE80211_S_RUN) {
		/* abort TSF synchronization */
		FUNC0(sc, RT2560_CSR14, 0);

		/* turn association led off */
		FUNC10(sc, 0, 0);
	}

	error = rvp->ral_newstate(vap, nstate, arg);

	if (error == 0 && nstate == IEEE80211_S_RUN) {
		struct ieee80211_node *ni = vap->iv_bss;
		struct mbuf *m;

		if (vap->iv_opmode != IEEE80211_M_MONITOR) {
			FUNC11(sc);
			FUNC7(sc, &ni->ni_rates);
			FUNC8(sc, ni->ni_bssid);
		}

		if (vap->iv_opmode == IEEE80211_M_HOSTAP ||
		    vap->iv_opmode == IEEE80211_M_IBSS ||
		    vap->iv_opmode == IEEE80211_M_MBSS) {
			m = FUNC3(ni);
			if (m == NULL) {
				FUNC2(sc->sc_dev,
				    "could not allocate beacon\n");
				return ENOBUFS;
			}
			FUNC4(ni);
			error = FUNC9(sc, m, ni);
			if (error != 0)
				return error;
		}

		/* turn association led on */
		FUNC10(sc, 1, 0);

		if (vap->iv_opmode != IEEE80211_M_MONITOR)
			FUNC6(sc);
		else
			FUNC5(sc);
	}
	return error;
}