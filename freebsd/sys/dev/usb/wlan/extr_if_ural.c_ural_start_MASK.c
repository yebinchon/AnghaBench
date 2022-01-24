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
struct ural_softc {scalar_t__ sc_running; scalar_t__ tx_nfree; int /*<<< orphan*/  sc_snd; } ;
struct TYPE_4__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ieee80211_node {TYPE_1__* ni_vap; } ;
struct TYPE_3__ {int /*<<< orphan*/  iv_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct ural_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ RAL_TX_MINFREE ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mbuf* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct ural_softc*,struct mbuf*,struct ieee80211_node*) ; 

__attribute__((used)) static void
FUNC5(struct ural_softc *sc)
{
	struct ieee80211_node *ni;
	struct mbuf *m;

	FUNC0(sc, MA_OWNED);

	if (sc->sc_running == 0)
		return;

	while (sc->tx_nfree >= RAL_TX_MINFREE &&
	    (m = FUNC3(&sc->sc_snd)) != NULL) {
		ni = (struct ieee80211_node *) m->m_pkthdr.rcvif;
		if (FUNC4(sc, m, ni) != 0) {
			FUNC2(ni->ni_vap->iv_ifp,
			     IFCOUNTER_OERRORS, 1);
			FUNC1(ni);
			break;
		}
	}
}