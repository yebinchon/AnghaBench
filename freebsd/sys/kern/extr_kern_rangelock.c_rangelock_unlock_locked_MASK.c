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
struct rl_q_entry {int dummy; } ;
struct rangelock {int /*<<< orphan*/  rl_waiters; struct rl_q_entry* rl_currdep; } ;
struct mtx {int dummy; } ;
struct TYPE_2__ {struct rl_q_entry* td_rlqe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (struct rl_q_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct rl_q_entry*,int /*<<< orphan*/ ) ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC4 (struct mtx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC6 (struct rangelock*) ; 
 int /*<<< orphan*/  rl_q_link ; 
 int /*<<< orphan*/  FUNC7 (struct rl_q_entry*) ; 

__attribute__((used)) static void
FUNC8(struct rangelock *lock, struct rl_q_entry *entry,
    struct mtx *ilk, bool do_calc_block)
{

	FUNC1(lock != NULL && entry != NULL && ilk != NULL);
	FUNC4(ilk, MA_OWNED);

	if (!do_calc_block) {
		/*
		 * This is the case where rangelock_enqueue() has been called
		 * with trylock == true and just inserted this entry in the
		 * queue.
		 * If rl_currdep is this entry, rl_currdep needs to
		 * be set to the next entry in the rl_waiters list.
		 * However, since this entry is the last entry in the
		 * list, the next entry is NULL.
		 */
		if (lock->rl_currdep == entry) {
			FUNC0(FUNC2(lock->rl_currdep, rl_q_link) == NULL,
			    ("rangelock_enqueue: next entry not NULL"));
			lock->rl_currdep = NULL;
		}
	} else
		FUNC0(entry != lock->rl_currdep, ("stuck currdep"));

	FUNC3(&lock->rl_waiters, entry, rl_q_link);
	if (do_calc_block)
		FUNC6(lock);
	FUNC5(ilk);
	if (curthread->td_rlqe == NULL)
		curthread->td_rlqe = entry;
	else
		FUNC7(entry);
}