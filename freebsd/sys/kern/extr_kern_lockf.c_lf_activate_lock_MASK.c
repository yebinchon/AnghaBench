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
struct lockf_entry {scalar_t__ lf_type; int /*<<< orphan*/  lf_end; int /*<<< orphan*/  lf_start; } ;
struct lockf {struct lockf_entry_list ls_active; } ;

/* Variables and functions */
 scalar_t__ F_UNLCK ; 
 int /*<<< orphan*/  FUNC0 (struct lockf_entry_list*) ; 
 struct lockf_entry* FUNC1 (struct lockf_entry_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct lockf_entry_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct lockf_entry_list*,struct lockf_entry*,int /*<<< orphan*/ ) ; 
 struct lockf_entry* FUNC4 (struct lockf_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lockf_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SELF ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC6 (struct lockf_entry**,struct lockf_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lockf_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct lockf*,struct lockf_entry*) ; 
 int /*<<< orphan*/  lf_link ; 
 int /*<<< orphan*/  FUNC9 (char*,struct lockf_entry*) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct lockf_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct lockf*,struct lockf_entry*,int /*<<< orphan*/ ,struct lockf_entry_list*) ; 
 int /*<<< orphan*/  FUNC12 (struct lockf*,struct lockf_entry*,int /*<<< orphan*/ ,struct lockf_entry_list*) ; 
 int /*<<< orphan*/  FUNC13 (struct lockf*,struct lockf_entry*,struct lockf_entry*,struct lockf_entry_list*) ; 
 int /*<<< orphan*/  FUNC14 (struct lockf*,struct lockf_entry*,int /*<<< orphan*/ ,struct lockf_entry_list*) ; 
 int lockf_debug ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 

__attribute__((used)) static void
FUNC16(struct lockf *state, struct lockf_entry *lock)
{
	struct lockf_entry *overlap, *lf;
	struct lockf_entry_list granted;
	int ovcase;

	FUNC2(&granted);
	FUNC3(&granted, lock, lf_link);

	while (!FUNC0(&granted)) {
		lock = FUNC1(&granted);
		FUNC5(lock, lf_link);

		/*
		 * Skip over locks owned by other processes.  Handle
		 * any locks that overlap and are owned by ourselves.
		 */
		overlap = FUNC1(&state->ls_active);
		for (;;) {
			ovcase = FUNC6(&overlap, lock, SELF);

#ifdef LOCKF_DEBUG
			if (ovcase && (lockf_debug & 2)) {
				printf("lf_setlock: overlap %d", ovcase);
				lf_print("", overlap);
			}
#endif
			/*
			 * Six cases:
			 *	0) no overlap
			 *	1) overlap == lock
			 *	2) overlap contains lock
			 *	3) lock contains overlap
			 *	4) overlap starts before lock
			 *	5) overlap ends after lock
			 */
			switch (ovcase) {
			case 0: /* no overlap */
				break;

			case 1: /* overlap == lock */
				/*
				 * We have already setup the
				 * dependants for the new lock, taking
				 * into account a possible downgrade
				 * or unlock. Remove the old lock.
				 */
				FUNC5(overlap, lf_link);
				FUNC14(state, overlap, TRUE,
					&granted);
				FUNC7(overlap);
				break;

			case 2: /* overlap contains lock */
				/*
				 * Just split the existing lock.
				 */
				FUNC13(state, overlap, lock, &granted);
				break;

			case 3: /* lock contains overlap */
				/*
				 * Delete the overlap and advance to
				 * the next entry in the list.
				 */
				lf = FUNC4(overlap, lf_link);
				FUNC5(overlap, lf_link);
				FUNC14(state, overlap, TRUE,
					&granted);
				FUNC7(overlap);
				overlap = lf;
				continue;

			case 4: /* overlap starts before lock */
				/*
				 * Just update the overlap end and
				 * move on.
				 */
				FUNC11(state, overlap, lock->lf_start - 1,
				    &granted);
				overlap = FUNC4(overlap, lf_link);
				continue;

			case 5: /* overlap ends after lock */
				/*
				 * Change the start of overlap and
				 * re-insert.
				 */
				FUNC12(state, overlap, lock->lf_end + 1,
				    &granted);
				break;
			}
			break;
		}
#ifdef LOCKF_DEBUG
		if (lockf_debug & 1) {
			if (lock->lf_type != F_UNLCK)
				lf_print("lf_activate_lock: activated", lock);
			else
				lf_print("lf_activate_lock: unlocked", lock);
			lf_printlist("lf_activate_lock", lock);
		}
#endif /* LOCKF_DEBUG */
		if (lock->lf_type != F_UNLCK)
			FUNC8(state, lock);
	}
}