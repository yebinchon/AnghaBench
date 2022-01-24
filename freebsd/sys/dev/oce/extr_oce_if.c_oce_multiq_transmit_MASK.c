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
struct TYPE_3__ {int /*<<< orphan*/  tx_stops; } ;
struct oce_wq {int queue_index; TYPE_1__ tx_stats; struct buf_ring* br; } ;
struct TYPE_4__ {int len; } ;
struct mbuf {int m_flags; TYPE_2__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_softc; } ;
struct buf_ring {int dummy; } ;
typedef  int /*<<< orphan*/  POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  IFCOUNTER_OBYTES ; 
 int /*<<< orphan*/  IFCOUNTER_OMCASTS ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int M_MCAST ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,struct buf_ring*) ; 
 int FUNC2 (struct ifnet*,struct buf_ring*,struct mbuf*) ; 
 struct mbuf* FUNC3 (struct ifnet*,struct buf_ring*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,struct buf_ring*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct mbuf**,int) ; 

__attribute__((used)) static int 
FUNC7(struct ifnet *ifp, struct mbuf *m, struct oce_wq *wq)
{
	POCE_SOFTC sc = ifp->if_softc;
	int status = 0, queue_index = 0;
	struct mbuf *next = NULL;
	struct buf_ring *br = NULL;

	br  = wq->br;
	queue_index = wq->queue_index;

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
		IFF_DRV_RUNNING) {
		if (m != NULL)
			status = FUNC2(ifp, br, m);
		return status;
	}

	if (m != NULL) {
		if ((status = FUNC2(ifp, br, m)) != 0)
			return status;
	} 
	while ((next = FUNC3(ifp, br)) != NULL) {
		if (FUNC6(sc, &next, queue_index)) {
			if (next == NULL) {
				FUNC1(ifp, br);
			} else {
				FUNC4(ifp, br, next);
				wq->tx_stats.tx_stops ++;
				ifp->if_drv_flags |= IFF_DRV_OACTIVE;
			}  
			break;
		}
		FUNC1(ifp, br);
		FUNC5(ifp, IFCOUNTER_OBYTES, next->m_pkthdr.len);
		if (next->m_flags & M_MCAST)
			FUNC5(ifp, IFCOUNTER_OMCASTS, 1);
		FUNC0(ifp, next);
	}

	return 0;
}