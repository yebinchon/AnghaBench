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
struct turnstile_chain {int /*<<< orphan*/  tc_lock; } ;
struct turnstile {struct thread* ts_owner; int /*<<< orphan*/  ts_lock; struct lock_object* ts_lockobj; } ;
struct thread {int dummy; } ;
struct lock_object {int dummy; } ;

/* Variables and functions */
 struct turnstile_chain* FUNC0 (struct lock_object*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

bool
FUNC4(struct turnstile *ts, struct lock_object **lockp,
    struct thread **tdp)
{
	struct turnstile_chain *tc;
	struct lock_object *lock;

	if ((lock = ts->ts_lockobj) == NULL)
		return (false);
	tc = FUNC0(lock);
	FUNC2(&tc->tc_lock);
	FUNC2(&ts->ts_lock);
	if (FUNC1(lock != ts->ts_lockobj)) {
		FUNC3(&tc->tc_lock);
		FUNC3(&ts->ts_lock);
		return (false);
	}
	*lockp = lock;
	*tdp = ts->ts_owner;
	return (true);
}