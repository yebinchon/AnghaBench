#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct oce_wq {size_t pkt_desc_tail; TYPE_1__* ring; int /*<<< orphan*/  tag; struct oce_packet_desc* pckts; int /*<<< orphan*/  parent; } ;
struct oce_packet_desc {struct mbuf* mbuf; int /*<<< orphan*/  map; scalar_t__ nsegs; } ;
struct mbuf {int dummy; } ;
struct TYPE_7__ {TYPE_2__* ifp; } ;
struct TYPE_6__ {int if_drv_flags; } ;
struct TYPE_5__ {int num_used; int num_items; } ;
typedef  TYPE_3__* POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int IFF_DRV_OACTIVE ; 
 int OCE_WQ_PACKET_ARRAY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (size_t*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct oce_wq*) ; 

__attribute__((used)) static void
FUNC6(struct oce_wq *wq)
{
	struct oce_packet_desc *pd;
	POCE_SOFTC sc = (POCE_SOFTC) wq->parent;
	struct mbuf *m;

	pd = &wq->pckts[wq->pkt_desc_tail];
	FUNC0(&wq->pkt_desc_tail,
			     (wq->pkt_desc_tail + 1) % OCE_WQ_PACKET_ARRAY_SIZE); 
	FUNC1(&wq->ring->num_used, pd->nsegs + 1);
	FUNC2(wq->tag, pd->map, BUS_DMASYNC_POSTWRITE);
	FUNC3(wq->tag, pd->map);

	m = pd->mbuf;
	FUNC4(m);
	pd->mbuf = NULL;


	if (sc->ifp->if_drv_flags & IFF_DRV_OACTIVE) {
		if (wq->ring->num_used < (wq->ring->num_items / 2)) {
			sc->ifp->if_drv_flags &= ~(IFF_DRV_OACTIVE);
			FUNC5(sc, wq);	
		}
	}
}