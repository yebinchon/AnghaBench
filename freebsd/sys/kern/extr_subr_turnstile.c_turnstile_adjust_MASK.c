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
typedef  scalar_t__ u_char ;
struct turnstile {int /*<<< orphan*/ * ts_blocked; int /*<<< orphan*/  ts_lock; } ;
struct thread {size_t td_tsqueue; scalar_t__ td_priority; struct turnstile* td_blocked; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct thread* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int /*<<< orphan*/ *) ; 
 size_t TS_EXCLUSIVE_QUEUE ; 
 size_t TS_SHARED_QUEUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 
 int /*<<< orphan*/  FUNC6 (struct turnstile*,struct thread*) ; 

void
FUNC7(struct thread *td, u_char oldpri)
{
	struct turnstile *ts;

	FUNC0(FUNC2(td));

	/*
	 * Pick up the lock that td is blocked on.
	 */
	ts = td->td_blocked;
	FUNC0(ts != NULL);
	FUNC3(td, &ts->ts_lock);
	FUNC4(&ts->ts_lock, MA_OWNED);

	/* Resort the turnstile on the list. */
	if (!FUNC6(ts, td))
		return;
	/*
	 * If our priority was lowered and we are at the head of the
	 * turnstile, then propagate our new priority up the chain.
	 * Note that we currently don't try to revoke lent priorities
	 * when our priority goes up.
	 */
	FUNC0(td->td_tsqueue == TS_EXCLUSIVE_QUEUE ||
	    td->td_tsqueue == TS_SHARED_QUEUE);
	if (td == FUNC1(&ts->ts_blocked[td->td_tsqueue]) &&
	    td->td_priority < oldpri) {
		FUNC5(td);
	}
}