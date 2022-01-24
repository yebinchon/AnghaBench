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
typedef  int /*<<< orphan*/  u_char ;
struct turnstile {int /*<<< orphan*/  ts_lock; struct thread* ts_owner; int /*<<< orphan*/ * ts_blocked; int /*<<< orphan*/  ts_pending; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct turnstile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 size_t TS_EXCLUSIVE_QUEUE ; 
 size_t TS_SHARED_QUEUE ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  td_contested_lock ; 
 int /*<<< orphan*/  FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*) ; 
 int /*<<< orphan*/  ts_link ; 
 int /*<<< orphan*/  FUNC9 (struct thread*) ; 

void
FUNC10(struct turnstile *ts)
{
	struct thread *td;
	u_char pri;

	FUNC1(ts != NULL);
	FUNC3(&ts->ts_lock, MA_OWNED);
	FUNC1(ts->ts_owner == curthread);
	FUNC1(FUNC2(&ts->ts_pending));
	FUNC1(!FUNC2(&ts->ts_blocked[TS_EXCLUSIVE_QUEUE]) ||
	    !FUNC2(&ts->ts_blocked[TS_SHARED_QUEUE]));

	/*
	 * Remove the turnstile from this thread's list of contested locks
	 * since this thread doesn't own it anymore.  New threads will
	 * not be blocking on the turnstile until it is claimed by a new
	 * owner.
	 */
	FUNC4(&td_contested_lock);
	ts->ts_owner = NULL;
	FUNC0(ts, ts_link);
	FUNC5(&td_contested_lock);

	/*
	 * Adjust the priority of curthread based on other contested
	 * locks it owns.  Don't lower the priority below the base
	 * priority however.
	 */
	td = curthread;
	FUNC7(td);
	FUNC5(&ts->ts_lock);
	FUNC4(&td_contested_lock);
	pri = FUNC9(td);
	FUNC5(&td_contested_lock);
	FUNC6(td, pri);
	FUNC8(td);
}