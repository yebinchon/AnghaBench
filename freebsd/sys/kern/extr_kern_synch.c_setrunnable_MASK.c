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
struct thread {int td_state; int td_flags; int /*<<< orphan*/  td_inhibitors; TYPE_1__* td_proc; } ;
struct TYPE_2__ {scalar_t__ p_state; int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ PRS_ZOMBIE ; 
 int TDF_INMEM ; 
 int TDF_SWAPINREQ ; 
 int /*<<< orphan*/  TDI_SWAPPED ; 
#define  TDS_CAN_RUN 131 
#define  TDS_INHIBITED 130 
#define  TDS_RUNNING 129 
#define  TDS_RUNQ 128 
 int /*<<< orphan*/  FUNC1 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 

int
FUNC5(struct thread *td)
{

	FUNC1(td, MA_OWNED);
	FUNC0(td->td_proc->p_state != PRS_ZOMBIE,
	    ("setrunnable: pid %d is a zombie", td->td_proc->p_pid));
	switch (td->td_state) {
	case TDS_RUNNING:
	case TDS_RUNQ:
		return (0);
	case TDS_INHIBITED:
		/*
		 * If we are only inhibited because we are swapped out
		 * then arange to swap in this process. Otherwise just return.
		 */
		if (td->td_inhibitors != TDI_SWAPPED)
			return (0);
		/* FALLTHROUGH */
	case TDS_CAN_RUN:
		break;
	default:
		FUNC3("state is 0x%x", td->td_state);
		FUNC2("setrunnable(2)");
	}
	if ((td->td_flags & TDF_INMEM) == 0) {
		if ((td->td_flags & TDF_SWAPINREQ) == 0) {
			td->td_flags |= TDF_SWAPINREQ;
			return (1);
		}
	} else
		FUNC4(td);
	return (0);
}