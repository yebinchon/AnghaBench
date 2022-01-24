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
struct TYPE_2__ {int /*<<< orphan*/  vtxs_rescheduled; } ;
struct vtnet_txq {int /*<<< orphan*/  vtntx_intrtask; int /*<<< orphan*/  vtntx_tq; TYPE_1__ vtntx_stats; struct buf_ring* vtntx_br; struct virtqueue* vtntx_vq; struct vtnet_softc* vtntx_sc; } ;
struct vtnet_softc {scalar_t__ vtnet_link_active; struct ifnet* vtnet_ifp; } ;
struct virtqueue {int dummy; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct buf_ring {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  VTNET_NOTIFY_RETRIES ; 
 int /*<<< orphan*/  FUNC1 (struct vtnet_txq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,struct buf_ring*) ; 
 int FUNC3 (struct ifnet*,struct buf_ring*,struct mbuf*) ; 
 struct mbuf* FUNC4 (struct ifnet*,struct buf_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,struct buf_ring*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct virtqueue*) ; 
 scalar_t__ FUNC8 (struct vtnet_txq*,struct mbuf**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vtnet_txq*) ; 
 scalar_t__ FUNC10 (struct vtnet_txq*) ; 

__attribute__((used)) static int
FUNC11(struct vtnet_txq *txq, struct mbuf *m)
{
	struct vtnet_softc *sc;
	struct virtqueue *vq;
	struct buf_ring *br;
	struct ifnet *ifp;
	int enq, tries, error;

	sc = txq->vtntx_sc;
	vq = txq->vtntx_vq;
	br = txq->vtntx_br;
	ifp = sc->vtnet_ifp;
	tries = 0;
	error = 0;

	FUNC1(txq);

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0 ||
	    sc->vtnet_link_active == 0) {
		if (m != NULL)
			error = FUNC3(ifp, br, m);
		return (error);
	}

	if (m != NULL) {
		error = FUNC3(ifp, br, m);
		if (error)
			return (error);
	}

	FUNC9(txq);

again:
	enq = 0;

	while ((m = FUNC4(ifp, br)) != NULL) {
		if (FUNC7(vq)) {
			FUNC5(ifp, br, m);
			break;
		}

		if (FUNC8(txq, &m, M_NOWAIT) != 0) {
			if (m != NULL)
				FUNC5(ifp, br, m);
			else
				FUNC2(ifp, br);
			break;
		}
		FUNC2(ifp, br);

		enq++;
		FUNC0(ifp, m);
	}

	if (enq > 0 && FUNC10(txq) != 0) {
		if (tries++ < VTNET_NOTIFY_RETRIES)
			goto again;

		txq->vtntx_stats.vtxs_rescheduled++;
		FUNC6(txq->vtntx_tq, &txq->vtntx_intrtask);
	}

	return (0);
}