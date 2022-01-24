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
struct TYPE_7__ {int /*<<< orphan*/  c_cpu; } ;
struct sge_txq {int size; int in_use; TYPE_3__ txq_timer; int /*<<< orphan*/  txq_direct_bytes; int /*<<< orphan*/  txq_direct_packets; scalar_t__ db_pending; struct buf_ring* txq_mr; } ;
struct sge_qset {struct sge_txq* txq; struct port_info* port; } ;
struct TYPE_6__ {scalar_t__ link_ok; } ;
struct port_info {TYPE_2__ link_config; int /*<<< orphan*/  adapter; } ;
struct TYPE_5__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int dummy; } ;
struct buf_ring {int dummy; } ;

/* Variables and functions */
 size_t TXQ_ETH ; 
 int /*<<< orphan*/  FUNC0 (struct sge_qset*) ; 
 int /*<<< orphan*/  FUNC1 (struct sge_qset*) ; 
 int /*<<< orphan*/  FUNC2 (struct sge_qset*) ; 
 int TX_MAX_DESC ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ,struct sge_qset*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sge_qset*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sge_txq*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sge_qset*) ; 
 int /*<<< orphan*/  cxgb_tx_reclaim_threshold ; 
 int /*<<< orphan*/  cxgb_tx_timeout ; 
 int FUNC8 (struct ifnet*,struct buf_ring*,struct mbuf*) ; 
 int FUNC9 (struct ifnet*,struct buf_ring*) ; 
 int /*<<< orphan*/  FUNC10 (struct sge_qset*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC11 (struct sge_qset*,struct mbuf**) ; 

__attribute__((used)) static int
FUNC12(struct ifnet *ifp, struct sge_qset *qs, struct mbuf *m)
{
	struct port_info *pi = qs->port;
	struct sge_txq *txq = &qs->txq[TXQ_ETH];
	struct buf_ring *br = txq->txq_mr;
	int error, avail;

	avail = txq->size - txq->in_use;
	FUNC0(qs);

	/*
	 * We can only do a direct transmit if the following are true:
	 * - we aren't coalescing (ring < 3/4 full)
	 * - the link is up -- checked in caller
	 * - there are no packets enqueued already
	 * - there is space in hardware transmit queue 
	 */
	if (FUNC5(qs) == 0 &&
	    !FUNC2(qs) && avail > TX_MAX_DESC) {
		if (FUNC11(qs, &m)) {
			if (m != NULL &&
			    (error = FUNC8(ifp, br, m)) != 0) 
				return (error);
		} else {
			if (txq->db_pending)
				FUNC6(pi->adapter, txq, 1);

			/*
			 * We've bypassed the buf ring so we need to update
			 * the stats directly
			 */
			txq->txq_direct_packets++;
			txq->txq_direct_bytes += m->m_pkthdr.len;
		}
	} else if ((error = FUNC8(ifp, br, m)) != 0)
		return (error);

	FUNC10(qs, cxgb_tx_reclaim_threshold, TXQ_ETH);
	if (!FUNC1(qs) && pi->link_config.link_ok &&
	    (!FUNC5(qs) || (FUNC9(ifp, br) >= 7)))
		FUNC7(qs);
	else if (!FUNC1(qs) && !FUNC3(&txq->txq_timer))
		FUNC4(&txq->txq_timer, 1, cxgb_tx_timeout,
		    qs, txq->txq_timer.c_cpu);
	return (0);
}