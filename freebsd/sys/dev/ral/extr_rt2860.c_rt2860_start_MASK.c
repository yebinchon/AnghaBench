#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rt2860_softc {int sc_flags; scalar_t__ qfullmsk; int sc_tx_timer; int /*<<< orphan*/  sc_snd; int /*<<< orphan*/  data_pool; } ;
struct TYPE_3__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211_node {TYPE_2__* ni_vap; } ;
struct TYPE_4__ {int /*<<< orphan*/  iv_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  FUNC0 (struct rt2860_softc*) ; 
 int RT2860_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mbuf* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct rt2860_softc*,struct mbuf*,struct ieee80211_node*) ; 

__attribute__((used)) static void
FUNC6(struct rt2860_softc *sc)
{
	struct ieee80211_node *ni;
	struct mbuf *m;

	FUNC0(sc);

	if ((sc->sc_flags & RT2860_RUNNING) == 0)
		return;

	while (!FUNC1(&sc->data_pool) && sc->qfullmsk == 0 &&
	    (m = FUNC4(&sc->sc_snd)) != NULL) {
		ni = (struct ieee80211_node *)m->m_pkthdr.rcvif;
		if (FUNC5(sc, m, ni) != 0) {
			FUNC3(ni->ni_vap->iv_ifp,
			    IFCOUNTER_OERRORS, 1);
			FUNC2(ni);
			continue;
		}
		sc->sc_tx_timer = 5;
	}
}