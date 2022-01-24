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
struct TYPE_2__ {int (* done ) (struct ida_softc*) ;} ;
struct ida_softc {int flags; TYPE_1__ cmd; int /*<<< orphan*/  lock; } ;
struct ida_qcb {void* state; } ;
typedef  int bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int IDA_INTERRUPTS ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  PRIBIO ; 
 void* QCB_TIMEDOUT ; 
 int /*<<< orphan*/  dumping ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (struct ida_softc*,struct ida_qcb*) ; 
 struct ida_qcb* FUNC2 (struct ida_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ida_qcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (struct ida_softc*) ; 

__attribute__((used)) static int
FUNC6(struct ida_softc *ida, struct ida_qcb *qcb)
{
	struct ida_qcb *qcb_done = NULL;
	bus_addr_t completed;
	int delay;

	if (!dumping)
		FUNC3(&ida->lock, MA_OWNED);
	if (ida->flags & IDA_INTERRUPTS) {
		if (FUNC4(qcb, &ida->lock, PRIBIO, "idacmd", 5 * hz)) {
			qcb->state = QCB_TIMEDOUT;
			return (ETIMEDOUT);
		}
		return (0);
	}

again:
	delay = 5 * 1000 * 100;			/* 5 sec delay */
	while ((completed = ida->cmd.done(ida)) == 0) {
		if (delay-- == 0) {
			qcb->state = QCB_TIMEDOUT;
			return (ETIMEDOUT);
		}
		FUNC0(10);
	}

	qcb_done = FUNC2(ida, completed & ~3);
	if (qcb_done != qcb)
		goto again;
	FUNC1(ida, qcb);
	return (0);
}