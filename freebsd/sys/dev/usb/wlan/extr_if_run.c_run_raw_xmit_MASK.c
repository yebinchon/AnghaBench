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
struct run_softc {int sc_flags; } ;
struct mbuf {int dummy; } ;
struct ieee80211_node {TYPE_1__* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;
struct TYPE_2__ {struct run_softc* ic_softc; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int /*<<< orphan*/  RUN_DEBUG_XMIT ; 
 int /*<<< orphan*/  FUNC0 (struct run_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*) ; 
 int RUN_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int FUNC4 (struct run_softc*,struct mbuf*,struct ieee80211_node*) ; 
 int FUNC5 (struct run_softc*,struct mbuf*,struct ieee80211_node*,struct ieee80211_bpf_params const*) ; 

__attribute__((used)) static int
FUNC6(struct ieee80211_node *ni, struct mbuf *m,
    const struct ieee80211_bpf_params *params)
{
	struct run_softc *sc = ni->ni_ic->ic_softc;
	int error = 0;
 
	FUNC1(sc);

	/* prevent management frames from being sent if we're not ready */
	if (!(sc->sc_flags & RUN_RUNNING)) {
		error = ENETDOWN;
		goto done;
	}

	if (params == NULL) {
		/* tx mgt packet */
		if ((error = FUNC4(sc, m, ni)) != 0) {
			FUNC0(sc, RUN_DEBUG_XMIT, "mgt tx failed\n");
			goto done;
		}
	} else {
		/* tx raw packet with param */
		if ((error = FUNC5(sc, m, ni, params)) != 0) {
			FUNC0(sc, RUN_DEBUG_XMIT, "tx with param failed\n");
			goto done;
		}
	}

done:
	FUNC2(sc);

	if (error != 0) {
		if(m != NULL)
			FUNC3(m);
	}

	return (error);
}