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
struct mbuf {struct mbuf* m_next; } ;
struct llan_softc {int /*<<< orphan*/  tx_dma_map; int /*<<< orphan*/  tx_dma_tag; int /*<<< orphan*/  io_lock; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; struct llan_softc* if_softc; } ;
typedef  scalar_t__ bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ ,struct llan_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  llan_send_packet ; 
 struct mbuf* FUNC5 (struct mbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct ifnet *ifp)
{
	struct llan_softc *sc = ifp->if_softc;
	bus_addr_t first;
	int nsegs;
	struct mbuf *mb_head, *m;

	FUNC7(&sc->io_lock, MA_OWNED);
	first = 0;

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING)
		return;

	while (!FUNC2(&ifp->if_snd)) {
		FUNC1(&ifp->if_snd, mb_head);

		if (mb_head == NULL)
			break;

		FUNC0(ifp, mb_head);

		for (m = mb_head, nsegs = 0; m != NULL; m = m->m_next)
			nsegs++;
		if (nsegs > 6) {
			m = FUNC5(mb_head, M_NOWAIT, 6);
			if (m == NULL) {
				FUNC6(mb_head);
				continue;
			}
		}

		FUNC3(sc->tx_dma_tag, sc->tx_dma_map,
			mb_head, llan_send_packet, sc, 0);
		FUNC4(sc->tx_dma_tag, sc->tx_dma_map);
		FUNC6(mb_head);
	}
}