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
struct lockf_entry {int dummy; } ;
struct lockf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lockf_entry_list*) ; 
 struct lockf_entry* FUNC1 (struct lockf_entry_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct lockf_entry_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct lockf_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (struct lockf*,struct lockf_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct lockf_entry*) ; 
 int /*<<< orphan*/  lf_link ; 
 int /*<<< orphan*/  lf_owner_graph_lock ; 
 int /*<<< orphan*/  FUNC6 (struct lockf_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct lockf*,struct lockf_entry*,int /*<<< orphan*/ ,struct lockf_entry_list*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct lockf *state, struct lockf_entry *lock)
{
	struct lockf_entry_list granted;

	/*
	 * Note it is theoretically possible that cancelling this lock
	 * may allow some other pending lock to become
	 * active. Consider this case:
	 *
	 * Owner	Action		Result		Dependencies
	 * 
	 * A:		lock [0..0]	succeeds	
	 * B:		lock [2..2]	succeeds	
	 * C:		lock [1..2]	blocked		C->B
	 * D:		lock [0..1]	blocked		C->B,D->A,D->C
	 * A:		unlock [0..0]			C->B,D->C
	 * C:		cancel [1..2]	
	 */

	FUNC3(lock, lf_link);

	/*
	 * Removing out-going edges is simple.
	 */
	FUNC8(&lf_owner_graph_lock);
	FUNC6(lock);
	FUNC9(&lf_owner_graph_lock);

	/*
	 * Removing in-coming edges may allow some other lock to
	 * become active - we use lf_update_dependancies to figure
	 * this out.
	 */
	FUNC2(&granted);
	FUNC7(state, lock, TRUE, &granted);
	FUNC5(lock);

	/*
	 * Feed any newly active locks to lf_activate_lock.
	 */
	while (!FUNC0(&granted)) {
		lock = FUNC1(&granted);
		FUNC3(lock, lf_link);
		FUNC4(state, lock);
	}
}