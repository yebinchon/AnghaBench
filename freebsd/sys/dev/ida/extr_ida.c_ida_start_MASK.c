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
struct TYPE_3__ {int /*<<< orphan*/  (* submit ) (struct ida_softc*,struct ida_qcb*) ;scalar_t__ (* fifo_full ) (struct ida_softc*) ;} ;
struct ida_softc {TYPE_1__ cmd; int /*<<< orphan*/  qactive; int /*<<< orphan*/  ch; int /*<<< orphan*/  qcb_queue; int /*<<< orphan*/  lock; } ;
struct ida_qcb {int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  stqe; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  QCB_ACTIVE ; 
 struct ida_qcb* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct ida_softc*) ; 
 int /*<<< orphan*/  dumping ; 
 int hz ; 
 int /*<<< orphan*/  ida_timeout ; 
 TYPE_2__ link ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ida_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ida_softc*,struct ida_qcb*) ; 

__attribute__((used)) static void
FUNC6(struct ida_softc *ida)
{
	struct ida_qcb *qcb;

	if (!dumping)
		FUNC3(&ida->lock, MA_OWNED);
	while ((qcb = FUNC0(&ida->qcb_queue)) != NULL) {
		if (ida->cmd.fifo_full(ida))
			break;
		FUNC1(&ida->qcb_queue, link.stqe);
		/*
		 * XXX
		 * place the qcb on an active list?
		 */

		/* Set a timeout. */
		if (!ida->qactive && !dumping)
			FUNC2(&ida->ch, hz * 5, ida_timeout, ida);
		ida->qactive++;

		qcb->state = QCB_ACTIVE;
		ida->cmd.submit(ida, qcb);
	}
}