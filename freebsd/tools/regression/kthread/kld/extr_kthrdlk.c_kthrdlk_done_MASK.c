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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EWOULDBLOCK ; 
 int QUIT ; 
 int /*<<< orphan*/  global_condvar ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  test_global_lock ; 
 scalar_t__ test_thrcnt ; 

__attribute__((used)) static void
FUNC5(void)
{
	int ret;
	FUNC0(("sending QUIT signal to the thrdlk threads\n"));

	/* wait kernel threads end */
	FUNC2(&test_global_lock);
	QUIT = 1;
	while (test_thrcnt != 0) {
		ret = FUNC3(&global_condvar, &test_global_lock, 0, "waiting thrs end", 30 * hz);
		if (ret == EWOULDBLOCK) {
			FUNC4("some threads not die! remaining: %d", test_thrcnt);
			break;
		}
	}
	if (test_thrcnt == 0)
		FUNC0(("All test_pause threads die\n"));

	FUNC1(&test_global_lock);
}