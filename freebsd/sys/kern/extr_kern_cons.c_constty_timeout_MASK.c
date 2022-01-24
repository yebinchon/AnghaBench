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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void (*) (void*),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  conscallout ; 
 int /*<<< orphan*/  consmsgbuf ; 
 int /*<<< orphan*/ * constty ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int constty_wakeups_per_second ; 
 int hz ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	int c;

	if (constty != NULL) {
		FUNC3(constty);
		while ((c = FUNC2(&consmsgbuf)) != -1) {
			if (FUNC4(constty, c) < 0) {
				FUNC5(constty);
				constty = NULL;
				break;
			}
		}

		if (constty != NULL)
			FUNC5(constty);
	}
	if (constty != NULL) {
		FUNC0(&conscallout, hz / constty_wakeups_per_second,
		    constty_timeout, NULL);
	} else {
		/* Deallocate the constty buffer memory. */
		FUNC1();
	}
}