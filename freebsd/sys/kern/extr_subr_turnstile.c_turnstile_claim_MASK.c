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
struct turnstile_chain {int /*<<< orphan*/  tc_lock; } ;
struct turnstile {int /*<<< orphan*/  ts_lock; int /*<<< orphan*/  ts_lockobj; } ;
struct thread {scalar_t__ td_priority; TYPE_1__* td_proc; struct turnstile* td_turnstile; } ;
struct TYPE_2__ {scalar_t__ p_magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ P_MAGIC ; 
 struct turnstile_chain* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ *) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*,scalar_t__) ; 
 int /*<<< orphan*/  td_contested_lock ; 
 int /*<<< orphan*/  FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*) ; 
 struct thread* FUNC9 (struct turnstile*) ; 
 int /*<<< orphan*/  FUNC10 (struct turnstile*,struct thread*) ; 

void
FUNC11(struct turnstile *ts)
{
	struct thread *td, *owner;
	struct turnstile_chain *tc;

	FUNC3(&ts->ts_lock, MA_OWNED);
	FUNC0(ts != curthread->td_turnstile);

	owner = curthread;
	FUNC4(&td_contested_lock);
	FUNC10(ts, owner);
	FUNC5(&td_contested_lock);

	td = FUNC9(ts);
	FUNC0(td != NULL);
	FUNC0(td->td_proc->p_magic == P_MAGIC);
	FUNC2(td, &ts->ts_lock);

	/*
	 * Update the priority of the new owner if needed.
	 */
	FUNC7(owner);
	if (td->td_priority < owner->td_priority)
		FUNC6(owner, td->td_priority);
	FUNC8(owner);
	tc = FUNC1(ts->ts_lockobj);
	FUNC5(&ts->ts_lock);
	FUNC5(&tc->tc_lock);
}