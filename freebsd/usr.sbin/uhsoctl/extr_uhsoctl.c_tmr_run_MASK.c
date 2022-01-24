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
struct timers {scalar_t__ res; int /*<<< orphan*/  head; } ;
struct timer_entry {scalar_t__ timeout; int /*<<< orphan*/  arg; int /*<<< orphan*/  id; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct timer_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 struct timer_entry* FUNC1 (struct timer_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct timer_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct timer_entry*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct timers *tmrs)
{
	struct timer_entry *te, *te2;

	te = FUNC0(&tmrs->head);
	if (te == NULL)
		return;

	te->timeout -= tmrs->res;
	while (te->timeout <= 0) {
		te2 = FUNC1(te, next);
		FUNC2(&tmrs->head, te, next);
		te->func(te->id, te->arg);
		FUNC3(te);
		te = te2;
		if (te == NULL)
			break;
	}
}