#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rt_softc {int /*<<< orphan*/  tx_watchdog_ch; int /*<<< orphan*/  tx_timer; TYPE_2__* tx_ring; int /*<<< orphan*/ * tx_data_queue_full; } ;
struct TYPE_4__ {int /*<<< orphan*/ * rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; struct rt_softc* if_softc; } ;
struct TYPE_5__ {scalar_t__ data_queued; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  RT_DEBUG_TX ; 
 int /*<<< orphan*/  FUNC1 (struct rt_softc*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ RT_SOFTC_TX_RING_DATA_COUNT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  RT_TX_WATCHDOG_TIMEOUT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rt_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 scalar_t__ FUNC7 (struct rt_softc*,struct mbuf*,int) ; 
 int /*<<< orphan*/  rt_tx_watchdog ; 

__attribute__((used)) static void
FUNC8(struct ifnet *ifp)
{
	struct rt_softc *sc;
	struct mbuf *m;
	int qid = 0 /* XXX must check QoS priority */;

	sc = ifp->if_softc;

	if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
		return;

	for (;;) {
		FUNC0(&ifp->if_snd, m);
		if (m == NULL)
			break;

		m->m_pkthdr.rcvif = NULL;

		FUNC2(&sc->tx_ring[qid]);

		if (sc->tx_ring[qid].data_queued >=
		    RT_SOFTC_TX_RING_DATA_COUNT) {
			FUNC3(&sc->tx_ring[qid]);

			FUNC1(sc, RT_DEBUG_TX,
			    "if_start: Tx ring with qid=%d is full\n", qid);

			FUNC6(m);

			ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			FUNC5(ifp, IFCOUNTER_OERRORS, 1);

			sc->tx_data_queue_full[qid]++;

			break;
		}

		if (FUNC7(sc, m, qid) != 0) {
			FUNC3(&sc->tx_ring[qid]);

			FUNC5(ifp, IFCOUNTER_OERRORS, 1);

			break;
		}

		FUNC3(&sc->tx_ring[qid]);
		sc->tx_timer = RT_TX_WATCHDOG_TIMEOUT;
		FUNC4(&sc->tx_watchdog_ch, hz, rt_tx_watchdog, sc);
	}
}