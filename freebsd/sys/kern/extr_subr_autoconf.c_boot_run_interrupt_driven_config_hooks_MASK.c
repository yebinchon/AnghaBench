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
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int WARNING_INTERVAL_SECS ; 
 int hz ; 
 int /*<<< orphan*/  intr_config_hook_list ; 
 int /*<<< orphan*/  intr_config_hook_lock ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(void *dummy)
{
	int warned;

	FUNC6();

	/* Block boot processing until all hooks are disestablished. */
	FUNC2("config hooks");
	FUNC4(&intr_config_hook_lock);
	warned = 0;
	while (!FUNC0(&intr_config_hook_list)) {
		if (FUNC3(&intr_config_hook_list, &intr_config_hook_lock,
		    0, "conifhk", WARNING_INTERVAL_SECS * hz) ==
		    EWOULDBLOCK) {
			FUNC5(&intr_config_hook_lock);
			warned++;
			FUNC7(warned);
			FUNC4(&intr_config_hook_lock);
		}
	}
	FUNC5(&intr_config_hook_lock);
	FUNC1("config hooks");
}