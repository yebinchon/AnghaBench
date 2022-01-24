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
typedef  int /*<<< orphan*/  tmr_cb ;
struct timers {int /*<<< orphan*/  head; } ;
struct timer_entry {int timeout; int id; void* arg; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct timer_entry* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct timer_entry*,struct timer_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct timer_entry*,int /*<<< orphan*/ ) ; 
 struct timer_entry* FUNC4 (struct timer_entry*,int /*<<< orphan*/ ) ; 
 struct timer_entry* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct timer_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static void
FUNC7(struct timers *tmrs, int id, int timeout, tmr_cb func, void *arg)
{
	struct timer_entry *te, *te2, *te3;

	te = FUNC5(sizeof(struct timer_entry));
	FUNC6(te, 0, sizeof(struct timer_entry));

	te->timeout = timeout;
	te->func = func;
	te->arg = arg;
	te->id = id;

	te2 = FUNC1(&tmrs->head);

	if (FUNC0(&tmrs->head)) {
		FUNC3(&tmrs->head, te, next);
	} else if (te->timeout < te2->timeout) {
		te2->timeout -= te->timeout;
		FUNC3(&tmrs->head, te, next);
	} else {
		while (te->timeout >= te2->timeout) {
			te->timeout -= te2->timeout;
			te3 = FUNC4(te2, next);
			if (te3 == NULL || te3->timeout > te->timeout)
				break;
			te2 = te3;
		}
		FUNC2(&tmrs->head, te2, te, next);
	}
}