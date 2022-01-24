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
struct TYPE_2__ {scalar_t__ current_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  balloon_mutex ; 
 TYPE_1__ bs ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (long) ; 
 int hz ; 
 scalar_t__ FUNC2 (long) ; 
 int /*<<< orphan*/  FUNC3 (void (*) (void*),int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void 
FUNC6(void *unused)
{
	int need_sleep = 0;
	long credit;
	
	FUNC4(&balloon_mutex);
	for (;;) {
		int sleep_time;

		do {
			credit = FUNC0() - bs.current_pages;
			if (credit > 0)
				need_sleep = (FUNC2(credit) != 0);
			if (credit < 0)
				need_sleep = (FUNC1(-credit) != 0);
			
		} while ((credit != 0) && !need_sleep);
		
		/* Schedule more work if there is some still to be done. */
		if (FUNC0() != bs.current_pages)
			sleep_time = hz;
		else
			sleep_time = 0;

		FUNC3(balloon_process, &balloon_mutex, 0, "balloon",
		       sleep_time);
	}
	FUNC5(&balloon_mutex);
}