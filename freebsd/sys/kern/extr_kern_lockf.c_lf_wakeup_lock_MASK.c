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
struct lockf_entry {scalar_t__ lf_async_task; } ;
struct lockf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lockf_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lf_link ; 
 int /*<<< orphan*/  FUNC1 (char*,struct lockf_entry*) ; 
 int lockf_debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  taskqueue_thread ; 
 int /*<<< orphan*/  FUNC3 (struct lockf_entry*) ; 

__attribute__((used)) static void
FUNC4(struct lockf *state, struct lockf_entry *wakelock)
{

	/*
	 * Remove from ls_pending list and wake up the caller
	 * or start the async notification, as appropriate.
	 */
	FUNC0(wakelock, lf_link);
#ifdef LOCKF_DEBUG
	if (lockf_debug & 1)
		lf_print("lf_wakeup_lock: awakening", wakelock);
#endif /* LOCKF_DEBUG */
	if (wakelock->lf_async_task) {
		FUNC2(taskqueue_thread, wakelock->lf_async_task);
	} else {
		FUNC3(wakelock);
	}
}