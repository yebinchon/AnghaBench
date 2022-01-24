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
struct netfront_txq {int full; int /*<<< orphan*/  ring; int /*<<< orphan*/  xen_intr_handle; struct buf_ring* br; struct netfront_info* info; } ;
struct netfront_info {struct ifnet* xn_ifp; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct buf_ring {int dummy; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct netfront_txq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,struct buf_ring*) ; 
 int FUNC4 (struct ifnet*,struct buf_ring*,struct mbuf*) ; 
 struct mbuf* FUNC5 (struct ifnet*,struct buf_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,struct buf_ring*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct netfront_txq*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct netfront_txq*) ; 

__attribute__((used)) static int
FUNC11(struct netfront_txq *txq, struct mbuf *m)
{
	struct netfront_info *np;
	struct ifnet *ifp;
	struct buf_ring *br;
	int error, notify;

	np = txq->info;
	br = txq->br;
	ifp = np->xn_ifp;
	error = 0;

	FUNC2(txq);

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0 ||
	    !FUNC7(np)) {
		if (m != NULL)
			error = FUNC4(ifp, br, m);
		return (error);
	}

	if (m != NULL) {
		error = FUNC4(ifp, br, m);
		if (error != 0)
			return (error);
	}

	while ((m = FUNC5(ifp, br)) != NULL) {
		if (!FUNC10(txq)) {
			FUNC6(ifp, br, m);
			break;
		}

		error = FUNC9(txq, m);
		/* xn_assemble_tx_request always consumes the mbuf*/
		if (error != 0) {
			FUNC3(ifp, br);
			break;
		}

		FUNC1(&txq->ring, notify);
		if (notify)
			FUNC8(txq->xen_intr_handle);

		FUNC3(ifp, br);
	}

	if (FUNC0(&txq->ring))
		txq->full = true;

	return (0);
}