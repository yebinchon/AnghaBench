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
struct turnstile {struct lock_object* ts_lockobj; int /*<<< orphan*/  ts_lock; } ;
struct lock_object {int dummy; } ;
struct TYPE_2__ {struct turnstile* td_turnstile; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 struct turnstile_chain* FUNC0 (struct lock_object*) ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct turnstile *ts)
{
	struct turnstile_chain *tc;
	struct lock_object *lock;

	FUNC1(&ts->ts_lock, MA_OWNED);

	FUNC2(&ts->ts_lock);
	lock = ts->ts_lockobj;
	if (ts == curthread->td_turnstile)
		ts->ts_lockobj = NULL;
	tc = FUNC0(lock);
	FUNC2(&tc->tc_lock);
}