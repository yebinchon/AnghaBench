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
struct TYPE_4__ {scalar_t__ rsp_cons; TYPE_1__* sring; } ;
struct netfront_rxq {TYPE_2__ ring; } ;
struct netfront_info {int num_queues; struct netfront_rxq* rxq; struct ifnet* xn_ifp; } ;
struct ifnet {int if_drv_flags; } ;
struct TYPE_3__ {scalar_t__ rsp_event; } ;

/* Variables and functions */
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct netfront_rxq*) ; 
 int /*<<< orphan*/  FUNC3 (struct netfront_rxq*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct netfront_rxq*) ; 
 int /*<<< orphan*/  FUNC7 (struct netfront_rxq*) ; 
 int /*<<< orphan*/  FUNC8 (struct netfront_info*) ; 

__attribute__((used)) static void
FUNC9(struct netfront_info *np)
{
	struct ifnet *ifp;
	int i;
	struct netfront_rxq *rxq;

	FUNC1(np);

	ifp = np->xn_ifp;

	if (ifp->if_drv_flags & IFF_DRV_RUNNING || !FUNC5(np))
		return;

	FUNC8(np);

	for (i = 0; i < np->num_queues; i++) {
		rxq = &np->rxq[i];
		FUNC2(rxq);
		FUNC6(rxq);
		rxq->ring.sring->rsp_event = rxq->ring.rsp_cons + 1;
		if (FUNC0(&rxq->ring))
			FUNC7(rxq);
		FUNC3(rxq);
	}

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
	FUNC4(ifp, LINK_STATE_UP);
}