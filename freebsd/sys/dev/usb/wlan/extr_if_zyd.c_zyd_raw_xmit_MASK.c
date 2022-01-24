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
struct zyd_softc {int sc_flags; scalar_t__ tx_nfree; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct zyd_softc* ic_softc; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENETDOWN ; 
 int ENOBUFS ; 
 int ZYD_FLAG_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct zyd_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct zyd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 scalar_t__ FUNC3 (struct zyd_softc*,struct mbuf*,struct ieee80211_node*) ; 

__attribute__((used)) static int
FUNC4(struct ieee80211_node *ni, struct mbuf *m,
	const struct ieee80211_bpf_params *params)
{
	struct ieee80211com *ic = ni->ni_ic;
	struct zyd_softc *sc = ic->ic_softc;

	FUNC0(sc);
	/* prevent management frames from being sent if we're not ready */
	if (!(sc->sc_flags & ZYD_FLAG_RUNNING)) {
		FUNC1(sc);
		FUNC2(m);
		return (ENETDOWN);
	}
	if (sc->tx_nfree == 0) {
		FUNC1(sc);
		FUNC2(m);
		return (ENOBUFS);		/* XXX */
	}

	/*
	 * Legacy path; interpret frame contents to decide
	 * precisely how to send the frame.
	 * XXX raw path
	 */
	if (FUNC3(sc, m, ni) != 0) {
		FUNC1(sc);
		FUNC2(m);
		return (EIO);
	}
	FUNC1(sc);
	return (0);
}