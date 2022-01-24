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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RB_DUMP ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int panic_reboot_wait_time ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(void *junk, int howto)
{
	int loop;

	if (howto & RB_DUMP) {
		if (panic_reboot_wait_time != 0) {
			if (panic_reboot_wait_time != -1) {
				FUNC3("Automatic reboot in %d seconds - "
				       "press a key on the console to abort\n",
					panic_reboot_wait_time);
				for (loop = panic_reboot_wait_time * 10;
				     loop > 0; --loop) {
					FUNC0(1000 * 100); /* 1/10th second */
					/* Did user type a key? */
					if (FUNC1() != -1)
						break;
				}
				if (!loop)
					return;
			}
		} else { /* zero time specified - reboot NOW */
			return;
		}
		FUNC3("--> Press a key on the console to reboot,\n");
		FUNC3("--> or switch off the system now.\n");
		FUNC2();
	}
}