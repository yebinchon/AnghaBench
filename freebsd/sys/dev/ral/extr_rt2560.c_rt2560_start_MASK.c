#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int queued; } ;
struct rt2560_softc {int sc_tx_timer; int /*<<< orphan*/  sc_snd; TYPE_2__ txq; } ;
struct TYPE_6__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_3__ m_pkthdr; } ;
struct ieee80211_node {TYPE_1__* ni_vap; } ;
struct TYPE_4__ {int /*<<< orphan*/  iv_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  FUNC0 (struct rt2560_softc*) ; 
 int RT2560_TX_RING_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mbuf* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct rt2560_softc*,struct mbuf*,struct ieee80211_node*) ; 

__attribute__((used)) static void
FUNC5(struct rt2560_softc *sc)
{
	struct ieee80211_node *ni;
	struct mbuf *m;

	FUNC0(sc);

	while (sc->txq.queued < RT2560_TX_RING_COUNT - 1 &&
	    (m = FUNC3(&sc->sc_snd)) != NULL) {
		ni = (struct ieee80211_node *) m->m_pkthdr.rcvif;
		if (FUNC4(sc, m, ni) != 0) {
			FUNC2(ni->ni_vap->iv_ifp,
			    IFCOUNTER_OERRORS, 1);
			FUNC1(ni);
			break;
		}
		sc->sc_tx_timer = 5;
	}
}