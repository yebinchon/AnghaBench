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

/* Variables and functions */
 int QUIT ; 
 int /*<<< orphan*/  global_condvar ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_global_lock ; 
 int /*<<< orphan*/  test_thrcnt ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	for (;;) {
		if (QUIT == 1)
			break;
		FUNC1();
	}

	FUNC2(&test_global_lock);
	test_thrcnt--;
	FUNC4(&global_condvar);
	FUNC3(&test_global_lock);

	FUNC0();
}