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
struct callout_run {int /*<<< orphan*/  callout_waiting; int /*<<< orphan*/  lock; int /*<<< orphan*/  co_completed; int /*<<< orphan*/ * co_array; int /*<<< orphan*/  co_return_npa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int curcpu ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	struct callout_run *rn;
	int cpu;

	FUNC5();
	cpu = curcpu;
	FUNC6();
	rn = (struct callout_run *)arg;
	FUNC0(&rn->callout_waiting, 1);
	FUNC7(&rn->lock);
	if (FUNC4(&rn->co_array[cpu]) ||
	    !FUNC2(&rn->co_array[cpu])) {
		rn->co_return_npa++;
		FUNC1(&rn->callout_waiting, 1);
		FUNC8(&rn->lock);
		return;
	}
	FUNC3(&rn->co_array[cpu]);
	rn->co_completed++;
	FUNC8(&rn->lock);
	FUNC1(&rn->callout_waiting, 1);
}