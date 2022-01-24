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
struct rt2860_softc {int sc_flags; int sc_tx_timer; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct rt2860_softc* ic_softc; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct rt2860_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2860_softc*) ; 
 int RT2860_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int FUNC3 (struct rt2860_softc*,struct mbuf*,struct ieee80211_node*) ; 
 int FUNC4 (struct rt2860_softc*,struct mbuf*,struct ieee80211_node*,struct ieee80211_bpf_params const*) ; 

__attribute__((used)) static int
FUNC5(struct ieee80211_node *ni, struct mbuf *m,
    const struct ieee80211_bpf_params *params)
{
	struct ieee80211com *ic = ni->ni_ic;
	struct rt2860_softc *sc = ic->ic_softc;
	int error;

	FUNC0(sc);

	/* prevent management frames from being sent if we're not ready */
	if (!(sc->sc_flags & RT2860_RUNNING)) {
		FUNC1(sc);
		FUNC2(m);
		return ENETDOWN;
	}
	if (params == NULL) {
		/*
		 * Legacy path; interpret frame contents to decide
		 * precisely how to send the frame.
		 */
		error = FUNC3(sc, m, ni);
	} else {
		/*
		 * Caller supplied explicit parameters to use in
		 * sending the frame.
		 */
		error = FUNC4(sc, m, ni, params);
	}
	sc->sc_tx_timer = 5;
	FUNC1(sc);
	return error;
}