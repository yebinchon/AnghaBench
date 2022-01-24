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
struct thread {int /*<<< orphan*/  td_oncpu; int /*<<< orphan*/  td_lastcpu; TYPE_3__* td_lock; } ;
struct tdq {int dummy; } ;
struct TYPE_6__ {uintptr_t mtx_lock; int /*<<< orphan*/  lock_object; } ;
struct TYPE_4__ {int md_spinlock_count; } ;
struct TYPE_5__ {TYPE_1__ td_md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tdq*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  NOCPU ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tdq*) ; 
 TYPE_3__* FUNC5 (struct tdq*) ; 
 struct tdq* FUNC6 () ; 
 struct thread* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct thread*,struct thread*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sched ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  switchticks ; 
 int /*<<< orphan*/  switchtime ; 
 int /*<<< orphan*/  FUNC12 (struct tdq*,struct thread*) ; 
 int /*<<< orphan*/  ticks ; 

void
FUNC13(struct thread *td)
{
	struct thread *newtd;
	struct tdq *tdq;

	if (td == NULL) {
#ifdef SMP
		PCPU_SET(sched, DPCPU_PTR(tdq));
#endif
		/* Correct spinlock nesting and acquire the correct lock. */
		tdq = FUNC6();
		FUNC4(tdq);
		FUNC11();
		FUNC3(switchtime, FUNC9());
		FUNC3(switchticks, ticks);
	} else {
		tdq = FUNC6();
		FUNC2(td->td_lock == FUNC5(tdq));
		FUNC12(tdq, td);
		FUNC10(&FUNC5(tdq)->lock_object);
		td->td_lastcpu = td->td_oncpu;
		td->td_oncpu = NOCPU;
	}
	FUNC1(curthread->td_md.md_spinlock_count == 1, ("invalid count"));
	newtd = FUNC7();
	FUNC5(tdq)->mtx_lock = (uintptr_t)newtd;
	FUNC8(td, newtd);		/* doesn't return */
}