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
struct turnstile {int /*<<< orphan*/  ts_lock; TYPE_2__* ts_lockobj; struct thread* ts_owner; } ;
struct thread {int td_priority; int td_tid; struct turnstile* td_blocked; int /*<<< orphan*/  td_state; int /*<<< orphan*/  td_name; TYPE_1__* td_proc; } ;
struct TYPE_4__ {int /*<<< orphan*/  lo_name; } ;
struct TYPE_3__ {scalar_t__ p_magic; int p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MTX_DUPOK ; 
 scalar_t__ P_MAGIC ; 
 scalar_t__ FUNC2 (struct thread*) ; 
 scalar_t__ FUNC3 (struct thread*) ; 
 int FUNC4 (struct thread*) ; 
 scalar_t__ FUNC5 (struct thread*) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*,int /*<<< orphan*/ ) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC8 (struct thread*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct thread*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct thread*) ; 
 int /*<<< orphan*/  FUNC16 (struct turnstile*,struct thread*) ; 

__attribute__((used)) static void
FUNC17(struct thread *td)
{
	struct turnstile *ts;
	int pri;

	FUNC7(td, MA_OWNED);
	pri = td->td_priority;
	ts = td->td_blocked;
	FUNC6(td, &ts->ts_lock);
	/*
	 * Grab a recursive lock on this turnstile chain so it stays locked
	 * for the whole operation.  The caller expects us to return with
	 * the original lock held.  We only ever lock down the chain so
	 * the lock order is constant.
	 */
	FUNC9(&ts->ts_lock);
	for (;;) {
		td = ts->ts_owner;

		if (td == NULL) {
			/*
			 * This might be a read lock with no owner.  There's
			 * not much we can do, so just bail.
			 */
			FUNC10(&ts->ts_lock);
			return;
		}

		FUNC14(td, MTX_DUPOK);
		FUNC10(&ts->ts_lock);
		FUNC1(td->td_proc != NULL);
		FUNC1(td->td_proc->p_magic == P_MAGIC);

		/*
		 * If the thread is asleep, then we are probably about
		 * to deadlock.  To make debugging this easier, show
		 * backtrace of misbehaving thread and panic to not
		 * leave the kernel deadlocked.
		 */
		if (FUNC3(td)) {
			FUNC12(
		"Sleeping thread (tid %d, pid %d) owns a non-sleepable lock\n",
			    td->td_tid, td->td_proc->p_pid);
			FUNC8(td);
			FUNC11("sleeping thread");
		}

		/*
		 * If this thread already has higher priority than the
		 * thread that is being blocked, we are finished.
		 */
		if (td->td_priority <= pri) {
			FUNC15(td);
			return;
		}

		/*
		 * Bump this thread's priority.
		 */
		FUNC13(td, pri);

		/*
		 * If lock holder is actually running or on the run queue
		 * then we are done.
		 */
		if (FUNC2(td) || FUNC5(td)) {
			FUNC1(td->td_blocked == NULL);
			FUNC15(td);
			return;
		}

#ifndef SMP
		/*
		 * For UP, we check to see if td is curthread (this shouldn't
		 * ever happen however as it would mean we are in a deadlock.)
		 */
		FUNC0(td != curthread, ("Deadlock detected"));
#endif

		/*
		 * If we aren't blocked on a lock, we should be.
		 */
		FUNC0(FUNC4(td), (
		    "thread %d(%s):%d holds %s but isn't blocked on a lock\n",
		    td->td_tid, td->td_name, td->td_state,
		    ts->ts_lockobj->lo_name));

		/*
		 * Pick up the lock that td is blocked on.
		 */
		ts = td->td_blocked;
		FUNC1(ts != NULL);
		FUNC6(td, &ts->ts_lock);
		/* Resort td on the list if needed. */
		if (!FUNC16(ts, td)) {
			FUNC10(&ts->ts_lock);
			return;
		}
		/* The thread lock is released as ts lock above. */
	}
}