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
struct TYPE_4__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ipw_softc {scalar_t__ txfree; int sc_tx_timer; int /*<<< orphan*/  sc_snd; } ;
struct ieee80211_node {TYPE_1__* ni_vap; } ;
struct TYPE_3__ {int /*<<< orphan*/  iv_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  FUNC0 (struct ipw_softc*) ; 
 scalar_t__ IPW_MAX_NSEG ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct ipw_softc*,struct mbuf*,struct ieee80211_node*) ; 
 struct mbuf* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct ipw_softc *sc)
{
	struct ieee80211_node *ni;
	struct mbuf *m;

	FUNC0(sc);

	while (sc->txfree >= 1 + IPW_MAX_NSEG &&
	    (m = FUNC4(&sc->sc_snd)) != NULL) {
		ni = (struct ieee80211_node *) m->m_pkthdr.rcvif;
		if (FUNC3(sc, m, ni) != 0) {
			FUNC2(ni->ni_vap->iv_ifp,
			    IFCOUNTER_OERRORS, 1);
			FUNC1(ni);
			break;
		}
		/* start watchdog timer */
		sc->sc_tx_timer = 5;
	}
}