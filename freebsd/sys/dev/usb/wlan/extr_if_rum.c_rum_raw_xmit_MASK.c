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
struct rum_softc {scalar_t__ tx_nfree; int /*<<< orphan*/  sc_running; } ;
struct mbuf {int dummy; } ;
struct ieee80211_node {TYPE_1__* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;
struct TYPE_2__ {struct rum_softc* ic_softc; } ;

/* Variables and functions */
 int EIO ; 
 int ENETDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct rum_softc*) ; 
 scalar_t__ RUM_TX_MINFREE ; 
 int /*<<< orphan*/  FUNC1 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int FUNC3 (struct rum_softc*,struct mbuf*,struct ieee80211_node*) ; 
 int FUNC4 (struct rum_softc*,struct mbuf*,struct ieee80211_node*,struct ieee80211_bpf_params const*) ; 

__attribute__((used)) static int
FUNC5(struct ieee80211_node *ni, struct mbuf *m,
    const struct ieee80211_bpf_params *params)
{
	struct rum_softc *sc = ni->ni_ic->ic_softc;
	int ret;

	FUNC0(sc);
	/* prevent management frames from being sent if we're not ready */
	if (!sc->sc_running) {
		ret = ENETDOWN;
		goto bad;
	}
	if (sc->tx_nfree < RUM_TX_MINFREE) {
		ret = EIO;
		goto bad;
	}

	if (params == NULL) {
		/*
		 * Legacy path; interpret frame contents to decide
		 * precisely how to send the frame.
		 */
		if ((ret = FUNC3(sc, m, ni)) != 0)
			goto bad;
	} else {
		/*
		 * Caller supplied explicit parameters to use in
		 * sending the frame.
		 */
		if ((ret = FUNC4(sc, m, ni, params)) != 0)
			goto bad;
	}
	FUNC1(sc);

	return 0;
bad:
	FUNC1(sc);
	FUNC2(m);
	return ret;
}