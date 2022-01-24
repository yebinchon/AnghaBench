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
struct TYPE_5__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct iwi_softc {int sc_tx_timer; int /*<<< orphan*/  sc_snd; TYPE_1__* txq; } ;
struct ieee80211_node {TYPE_3__* ni_vap; } ;
struct TYPE_6__ {int /*<<< orphan*/  iv_ifp; } ;
struct TYPE_4__ {int queued; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  FUNC0 (struct iwi_softc*) ; 
 int IWI_TX_RING_COUNT ; 
 int FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct iwi_softc*,struct mbuf*,struct ieee80211_node*,int) ; 
 struct mbuf* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct mbuf*) ; 

__attribute__((used)) static void
FUNC7(struct iwi_softc *sc)
{
	struct mbuf *m;
	struct ieee80211_node *ni;
	int ac;

	FUNC0(sc);

	while ((m =  FUNC5(&sc->sc_snd)) != NULL) {
		ac = FUNC1(m);
		if (sc->txq[ac].queued > IWI_TX_RING_COUNT - 8) {
			/* there is no place left in this ring; tail drop */
			/* XXX tail drop */
			FUNC6(&sc->sc_snd, m);
			break;
		}
		ni = (struct ieee80211_node *) m->m_pkthdr.rcvif;
		if (FUNC4(sc, m, ni, ac) != 0) {
			FUNC3(ni->ni_vap->iv_ifp,
			    IFCOUNTER_OERRORS, 1);
			FUNC2(ni);
			break;
		}
		sc->sc_tx_timer = 5;
	}
}