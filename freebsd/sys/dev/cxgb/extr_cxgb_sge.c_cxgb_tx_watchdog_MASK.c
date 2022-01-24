#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  c_cpu; } ;
struct sge_txq {scalar_t__ in_use; TYPE_3__ txq_watchdog; } ;
struct sge_qset {int coalescing; TYPE_2__* port; int /*<<< orphan*/  qs_flags; struct sge_txq* txq; } ;
struct TYPE_5__ {TYPE_1__* ifp; } ;
struct TYPE_4__ {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  QS_FLUSHING ; 
 size_t TXQ_ETH ; 
 scalar_t__ FUNC0 (struct sge_qset*) ; 
 scalar_t__ FUNC1 (struct sge_qset*) ; 
 int /*<<< orphan*/  FUNC2 (struct sge_qset*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,void (*) (void*),struct sge_qset*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sge_qset*) ; 
 scalar_t__ cxgb_tx_coalesce_enable_start ; 
 scalar_t__ cxgb_tx_coalesce_enable_stop ; 
 int hz ; 

void
FUNC5(void *arg)
{
	struct sge_qset *qs = arg;
	struct sge_txq *txq = &qs->txq[TXQ_ETH];

        if (qs->coalescing != 0 &&
	    (txq->in_use <= cxgb_tx_coalesce_enable_stop) &&
	    FUNC0(qs))
                qs->coalescing = 0; 
        else if (qs->coalescing == 0 &&
	    (txq->in_use >= cxgb_tx_coalesce_enable_start))
                qs->coalescing = 1;
	if (FUNC1(qs)) {
		qs->qs_flags |= QS_FLUSHING;
		FUNC4(qs);
		qs->qs_flags &= ~QS_FLUSHING;
		FUNC2(qs);
	}
	if (qs->port->ifp->if_drv_flags & IFF_DRV_RUNNING)
		FUNC3(&txq->txq_watchdog, hz/4, cxgb_tx_watchdog,
		    qs, txq->txq_watchdog.c_cpu);
}