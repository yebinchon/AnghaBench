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
struct sge_qset {TYPE_2__* txq; int /*<<< orphan*/  txq_stopped; TYPE_1__* port; } ;
struct adapter {int /*<<< orphan*/  tq; } ;
struct TYPE_4__ {int /*<<< orphan*/  qresume_task; int /*<<< orphan*/  restarts; } ;
struct TYPE_3__ {struct adapter* adapter; } ;

/* Variables and functions */
 size_t TXQ_CTRL ; 
 size_t TXQ_OFLD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct sge_qset *qs)
{
	struct adapter *sc = qs->port->adapter;

	if (FUNC0(&qs->txq_stopped, TXQ_OFLD) &&
	    FUNC1(&qs->txq[TXQ_OFLD]) &&
	    FUNC3(TXQ_OFLD, &qs->txq_stopped)) {
		qs->txq[TXQ_OFLD].restarts++;
		FUNC2(sc->tq, &qs->txq[TXQ_OFLD].qresume_task);
	}

	if (FUNC0(&qs->txq_stopped, TXQ_CTRL) &&
	    FUNC1(&qs->txq[TXQ_CTRL]) &&
	    FUNC3(TXQ_CTRL, &qs->txq_stopped)) {
		qs->txq[TXQ_CTRL].restarts++;
		FUNC2(sc->tq, &qs->txq[TXQ_CTRL].qresume_task);
	}
}