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
struct thread {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct thread* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct thread* FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  td_slpq ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  zombie_lock ; 
 int /*<<< orphan*/  zombie_threads ; 

void
FUNC8(void)
{
	struct thread *td_first, *td_next;

	/*
	 * Don't even bother to lock if none at this instant,
	 * we really don't care about the next instant.
	 */
	if (!FUNC0(&zombie_threads)) {
		FUNC4(&zombie_lock);
		td_first = FUNC1(&zombie_threads);
		if (td_first)
			FUNC2(&zombie_threads);
		FUNC5(&zombie_lock);
		while (td_first) {
			td_next = FUNC3(td_first, td_slpq);
			FUNC6(td_first);
			FUNC7(td_first);
			td_first = td_next;
		}
	}
}