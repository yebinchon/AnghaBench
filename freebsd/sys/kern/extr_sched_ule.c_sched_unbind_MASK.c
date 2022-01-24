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
struct thread {int dummy; } ;
struct td_sched {int ts_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int /*<<< orphan*/ ) ; 
 int TSF_BOUND ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct td_sched* FUNC3 (struct thread*) ; 

void
FUNC4(struct thread *td)
{
	struct td_sched *ts;

	FUNC1(td, MA_OWNED);
	FUNC0(td == curthread, ("sched_unbind: can only bind curthread"));
	ts = FUNC3(td);
	if ((ts->ts_flags & TSF_BOUND) == 0)
		return;
	ts->ts_flags &= ~TSF_BOUND;
	FUNC2();
}