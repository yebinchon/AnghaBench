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
struct sge_txq {int cleaned; int in_use; } ;
struct sge_qset {int /*<<< orphan*/  txq_stopped; int /*<<< orphan*/  lock; struct sge_txq* txq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  TXQ_ETH ; 
 scalar_t__ TX_RECLAIM_DEFAULT ; 
 scalar_t__ TX_RECLAIM_MAX ; 
 scalar_t__ TX_RECLAIM_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ cxgb_tx_reclaim_threshold ; 
 int FUNC1 (struct sge_txq*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sge_qset*,int,int) ; 

__attribute__((used)) static __inline int
FUNC5(struct sge_qset *qs, int reclaim_min, int queue)
{
	struct sge_txq *q = &qs->txq[queue];
	int reclaim = FUNC1(q);

	if ((cxgb_tx_reclaim_threshold > TX_RECLAIM_MAX) ||
	    (cxgb_tx_reclaim_threshold < TX_RECLAIM_MIN))
		cxgb_tx_reclaim_threshold = TX_RECLAIM_DEFAULT;

	if (reclaim < reclaim_min)
		return (0);

	FUNC3(&qs->lock, MA_OWNED);
	if (reclaim > 0) {
		FUNC4(qs, reclaim, queue);
		q->cleaned += reclaim;
		q->in_use -= reclaim;
	}
	if (FUNC2(&qs->txq_stopped, TXQ_ETH))
                FUNC0(&qs->txq_stopped, TXQ_ETH);

	return (reclaim);
}