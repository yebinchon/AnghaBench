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
struct thread {int /*<<< orphan*/  td_name; } ;
struct tdq {int dummy; } ;
struct mtx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ts_cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct tdq* FUNC2 (int /*<<< orphan*/ ) ; 
 struct mtx* FUNC3 (struct tdq*) ; 
 int /*<<< orphan*/  FUNC4 (struct tdq*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  FUNC8 (struct tdq*,struct thread*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tdq*,struct thread*) ; 
 int /*<<< orphan*/  FUNC10 (struct tdq*,struct tdq*) ; 
 int /*<<< orphan*/  FUNC11 (struct tdq*,struct thread*) ; 
 int /*<<< orphan*/  FUNC12 (struct thread*) ; 

__attribute__((used)) static struct mtx *
FUNC13(struct tdq *tdq, struct thread *td, int flags)
{
	struct tdq *tdn;

	FUNC1(!FUNC0(FUNC7(td)->ts_cpu), ("sched_switch_migrate: "
	    "thread %s queued on absent CPU %d.", td->td_name,
	    FUNC7(td)->ts_cpu));
	tdn = FUNC2(FUNC7(td)->ts_cpu);
#ifdef SMP
	tdq_load_rem(tdq, td);
	/*
	 * Do the lock dance required to avoid LOR.  We grab an extra
	 * spinlock nesting to prevent preemption while we're
	 * not holding either run-queue lock.
	 */
	spinlock_enter();
	thread_lock_block(td);	/* This releases the lock on tdq. */

	/*
	 * Acquire both run-queue locks before placing the thread on the new
	 * run-queue to avoid deadlocks created by placing a thread with a
	 * blocked lock on the run-queue of a remote processor.  The deadlock
	 * occurs when a third processor attempts to lock the two queues in
	 * question while the target processor is spinning with its own
	 * run-queue lock held while waiting for the blocked lock to clear.
	 */
	tdq_lock_pair(tdn, tdq);
	tdq_add(tdn, td, flags);
	tdq_notify(tdn, td);
	TDQ_UNLOCK(tdn);
	spinlock_exit();
#endif
	return (FUNC3(tdn));
}