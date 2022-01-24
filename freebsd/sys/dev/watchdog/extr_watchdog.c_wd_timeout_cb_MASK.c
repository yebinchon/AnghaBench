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
typedef  int /*<<< orphan*/  kdb_why ;

/* Variables and functions */
 int /*<<< orphan*/  KDB_WHY_WATCHDOG ; 
 int /*<<< orphan*/  LOG_EMERG ; 
 int WD_SOFT_DDB ; 
 int WD_SOFT_LOG ; 
 int WD_SOFT_PANIC ; 
 int WD_SOFT_PRINTF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*) ; 
 int wd_pretimeout_act ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	const char *type = arg;

#ifdef DDB
	if ((wd_pretimeout_act & WD_SOFT_DDB)) {
		char kdb_why[80];
		snprintf(kdb_why, sizeof(kdb_why), "watchdog %s-timeout", type);
		kdb_backtrace();
		kdb_enter(KDB_WHY_WATCHDOG, kdb_why);
	}
#endif
	if ((wd_pretimeout_act & WD_SOFT_LOG))
		FUNC2(LOG_EMERG, "watchdog %s-timeout, WD_SOFT_LOG\n", type);
	if ((wd_pretimeout_act & WD_SOFT_PRINTF))
		FUNC4("watchdog %s-timeout, WD_SOFT_PRINTF\n", type);
	if ((wd_pretimeout_act & WD_SOFT_PANIC))
		FUNC3("watchdog %s-timeout, WD_SOFT_PANIC set", type);
}