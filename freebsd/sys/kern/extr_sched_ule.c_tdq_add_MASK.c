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
struct thread {scalar_t__ td_inhibitors; int td_flags; scalar_t__ td_priority; } ;
struct tdq {scalar_t__ tdq_lowpri; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int TDF_INMEM ; 
 int /*<<< orphan*/  FUNC1 (struct tdq*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct thread*) ; 
 scalar_t__ FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct tdq*,struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct tdq*,struct thread*,int) ; 

void
FUNC6(struct tdq *tdq, struct thread *td, int flags)
{

	FUNC1(tdq, MA_OWNED);
	FUNC0((td->td_inhibitors == 0),
	    ("sched_add: trying to run inhibited thread"));
	FUNC0((FUNC2(td) || FUNC3(td)),
	    ("sched_add: bad thread state"));
	FUNC0(td->td_flags & TDF_INMEM,
	    ("sched_add: thread swapped out"));

	if (td->td_priority < tdq->tdq_lowpri)
		tdq->tdq_lowpri = td->td_priority;
	FUNC5(tdq, td, flags);
	FUNC4(tdq, td);
}