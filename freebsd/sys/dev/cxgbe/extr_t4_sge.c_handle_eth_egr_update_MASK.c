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
struct sge_txq {int /*<<< orphan*/  tx_reclaim_task; int /*<<< orphan*/  r; } ;
struct sge_eq {int flags; size_t tx_chan; int /*<<< orphan*/  equiq; } ;
struct adapter {int /*<<< orphan*/ * tq; } ;

/* Variables and functions */
 int EQ_ETH ; 
 int EQ_TYPEMASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct adapter *sc, struct sge_eq *eq)
{
	struct sge_txq *txq = (void *)eq;

	FUNC0((eq->flags & EQ_TYPEMASK) == EQ_ETH);

	FUNC1(&eq->equiq);
	FUNC2(txq->r, 0);
	FUNC3(sc->tq[eq->tx_chan], &txq->tx_reclaim_task);
}