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
struct lockf_entry_list {int dummy; } ;
struct lockf_entry {scalar_t__ lf_start; scalar_t__ lf_end; int lf_refs; int lf_flags; int /*<<< orphan*/  lf_inedges; int /*<<< orphan*/  lf_outedges; int /*<<< orphan*/  lf_vnode; int /*<<< orphan*/  lf_owner; } ;
struct lockf {int dummy; } ;

/* Variables and functions */
 int F_REMOTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lockf*,struct lockf_entry*) ; 
 struct lockf_entry* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lockf*,struct lockf_entry*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct lockf_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct lockf*,struct lockf_entry*,scalar_t__,struct lockf_entry_list*) ; 
 int /*<<< orphan*/  FUNC6 (struct lockf*,struct lockf_entry*,scalar_t__,struct lockf_entry_list*) ; 
 int lockf_debug ; 
 int /*<<< orphan*/  FUNC7 (struct lockf_entry*,struct lockf_entry*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct lockf *state, struct lockf_entry *lock1,
    struct lockf_entry *lock2, struct lockf_entry_list *granted)
{
	struct lockf_entry *splitlock;

#ifdef LOCKF_DEBUG
	if (lockf_debug & 2) {
		lf_print("lf_split", lock1);
		lf_print("splitting from", lock2);
	}
#endif /* LOCKF_DEBUG */
	/*
	 * Check to see if we don't need to split at all.
	 */
	if (lock1->lf_start == lock2->lf_start) {
		FUNC6(state, lock1, lock2->lf_end + 1, granted);
		return;
	}
	if (lock1->lf_end == lock2->lf_end) {
		FUNC5(state, lock1, lock2->lf_start - 1, granted);
		return;
	}
	/*
	 * Make a new lock consisting of the last part of
	 * the encompassing lock.
	 */
	splitlock = FUNC2(lock1->lf_owner);
	FUNC7(splitlock, lock1, sizeof *splitlock);
	splitlock->lf_refs = 1;
	if (splitlock->lf_flags & F_REMOTE)
		FUNC8(splitlock->lf_vnode);

	/*
	 * This cannot cause a deadlock since any edges we would add
	 * to splitlock already exist in lock1. We must be sure to add
	 * necessary dependencies to splitlock before we reduce lock1
	 * otherwise we may accidentally grant a pending lock that
	 * was blocked by the tail end of lock1.
	 */
	splitlock->lf_start = lock2->lf_end + 1;
	FUNC0(&splitlock->lf_outedges);
	FUNC0(&splitlock->lf_inedges);
	FUNC1(state, splitlock);

	FUNC5(state, lock1, lock2->lf_start - 1, granted);

	/*
	 * OK, now link it in
	 */
	FUNC3(state, splitlock);
}