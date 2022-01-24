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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int WAIT_OBJECT_0 ; 
 int WAIT_TIMEOUT ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/ * timer_event ; 
 int /*<<< orphan*/ * timer_thread ; 

__attribute__((used)) static void FUNC5(void)
{
	if (timer_event)
		FUNC2(timer_event);	/* tell thread to terminate */
	if (timer_thread) {
		int rc = FUNC3(timer_thread, 10000);
		if (rc == WAIT_TIMEOUT)
			FUNC4("timer thread did not terminate timely");
		else if (rc != WAIT_OBJECT_0)
			FUNC4("waiting for timer thread failed: %lu",
			      FUNC1());
		FUNC0(timer_thread);
	}
	if (timer_event)
		FUNC0(timer_event);
	timer_event = NULL;
	timer_thread = NULL;
}