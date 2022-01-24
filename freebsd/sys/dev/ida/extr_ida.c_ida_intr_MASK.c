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
struct TYPE_4__ {scalar_t__ (* int_pending ) (struct ida_softc*) ;int (* done ) (struct ida_softc*) ;} ;
struct ida_softc {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; TYPE_1__ cmd; } ;
struct ida_qcb {scalar_t__ state; TYPE_3__* hwqcb; } ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int bus_addr_t ;
struct TYPE_5__ {scalar_t__ error; } ;
struct TYPE_6__ {TYPE_2__ req; } ;

/* Variables and functions */
 scalar_t__ CMD_REJECTED ; 
 scalar_t__ QCB_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ida_softc*,struct ida_qcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct ida_softc*) ; 
 struct ida_qcb* FUNC3 (struct ida_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct ida_softc*) ; 
 int FUNC7 (struct ida_softc*) ; 

void
FUNC8(void *data)
{
	struct ida_softc *ida;
	struct ida_qcb *qcb;
	bus_addr_t completed;

	ida = (struct ida_softc *)data;

	FUNC4(&ida->lock);
	if (ida->cmd.int_pending(ida) == 0) {
		FUNC5(&ida->lock);
		return;				/* not our interrupt */
	}

	while ((completed = ida->cmd.done(ida)) != 0) {
		qcb = FUNC3(ida, completed & ~3);

		if (qcb == NULL || qcb->state != QCB_ACTIVE) {
			FUNC0(ida->dev,
			    "ignoring completion %jx\n", (intmax_t)completed);
			continue;
		}
		/* Handle "Bad Command List" errors. */
		if ((completed & 3) && (qcb->hwqcb->req.error == 0))
			qcb->hwqcb->req.error = CMD_REJECTED;
		FUNC1(ida, qcb);
	}
	FUNC2(ida);
	FUNC5(&ida->lock);
}