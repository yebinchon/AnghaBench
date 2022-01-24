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
struct TYPE_2__ {scalar_t__ queued; } ;
struct rt2560_softc {int sc_flags; int sc_tx_timer; TYPE_1__ prioq; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct rt2560_softc* ic_softc; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENETDOWN ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (struct rt2560_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2560_softc*) ; 
 int RT2560_F_RUNNING ; 
 scalar_t__ RT2560_PRIO_RING_COUNT ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 scalar_t__ FUNC3 (struct rt2560_softc*,struct mbuf*,struct ieee80211_node*) ; 
 scalar_t__ FUNC4 (struct rt2560_softc*,struct mbuf*,struct ieee80211_node*,struct ieee80211_bpf_params const*) ; 

__attribute__((used)) static int
FUNC5(struct ieee80211_node *ni, struct mbuf *m,
	const struct ieee80211_bpf_params *params)
{
	struct ieee80211com *ic = ni->ni_ic;
	struct rt2560_softc *sc = ic->ic_softc;

	FUNC0(sc);

	/* prevent management frames from being sent if we're not ready */
	if (!(sc->sc_flags & RT2560_F_RUNNING)) {
		FUNC1(sc);
		FUNC2(m);
		return ENETDOWN;
	}
	if (sc->prioq.queued >= RT2560_PRIO_RING_COUNT) {
		FUNC1(sc);
		FUNC2(m);
		return ENOBUFS;		/* XXX */
	}

	if (params == NULL) {
		/*
		 * Legacy path; interpret frame contents to decide
		 * precisely how to send the frame.
		 */
		if (FUNC3(sc, m, ni) != 0)
			goto bad;
	} else {
		/*
		 * Caller supplied explicit parameters to use in
		 * sending the frame.
		 */
		if (FUNC4(sc, m, ni, params))
			goto bad;
	}
	sc->sc_tx_timer = 5;

	FUNC1(sc);

	return 0;
bad:
	FUNC1(sc);
	return EIO;		/* XXX */
}