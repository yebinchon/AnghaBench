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
struct thread_params {int /*<<< orphan*/  mutex; scalar_t__ data_ready; int /*<<< orphan*/  cond; scalar_t__ working; int /*<<< orphan*/  processed; int /*<<< orphan*/  depth; int /*<<< orphan*/  window; scalar_t__ remaining; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  progress_cond ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC7(void *arg)
{
	struct thread_params *me = arg;

	FUNC1();
	while (me->remaining) {
		FUNC2();

		FUNC0(me->list, &me->remaining,
			    me->window, me->depth, me->processed);

		FUNC1();
		me->working = 0;
		FUNC3(&progress_cond);
		FUNC2();

		/*
		 * We must not set ->data_ready before we wait on the
		 * condition because the main thread may have set it to 1
		 * before we get here. In order to be sure that new
		 * work is available if we see 1 in ->data_ready, it
		 * was initialized to 0 before this thread was spawned
		 * and we reset it to 0 right away.
		 */
		FUNC5(&me->mutex);
		while (!me->data_ready)
			FUNC4(&me->cond, &me->mutex);
		me->data_ready = 0;
		FUNC6(&me->mutex);

		FUNC1();
	}
	FUNC2();
	/* leave ->working 1 so that this doesn't get more work assigned */
	return NULL;
}