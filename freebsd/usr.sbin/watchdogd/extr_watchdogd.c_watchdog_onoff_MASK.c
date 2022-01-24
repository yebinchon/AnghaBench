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
 int /*<<< orphan*/  WDIOC_SETPRETIMEOUT ; 
 int /*<<< orphan*/  WDIOC_SETPRETIMEOUTACT ; 
 int /*<<< orphan*/  WDIOC_SETSOFT ; 
 int /*<<< orphan*/  WDIOC_SETSOFTTIMEOUTACT ; 
 int WD_ACTIVE ; 
 int exit_timeout ; 
 int /*<<< orphan*/  fd ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ is_dry_run ; 
 int /*<<< orphan*/  pretimeout ; 
 int /*<<< orphan*/  pretimeout_act ; 
 scalar_t__ pretimeout_act_set ; 
 scalar_t__ pretimeout_set ; 
 int /*<<< orphan*/  softtimeout_act ; 
 scalar_t__ softtimeout_act_set ; 
 int /*<<< orphan*/  softtimeout_set ; 
 int timeout ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(int onoff)
{
	int error;

	/* fake successful watchdog op if a dry run */
	if (is_dry_run)
		return 0;

	if (onoff) {
		/*
		 * Call the WDIOC_SETSOFT regardless of softtimeout_set
		 * because we'll need to turn it off if someone had turned
		 * it on.
		 */
		error = FUNC0(fd, WDIOC_SETSOFT, &softtimeout_set);
		if (error) {
			FUNC1("setting WDIOC_SETSOFT %d", softtimeout_set);
			return (error);
		}
		error = FUNC2((timeout|WD_ACTIVE));
		if (error) {
			FUNC1("watchdog_patpat failed");
			goto failsafe;
		}
		if (softtimeout_act_set) {
			error = FUNC0(fd, WDIOC_SETSOFTTIMEOUTACT,
			    &softtimeout_act);
			if (error) {
				FUNC1("setting WDIOC_SETSOFTTIMEOUTACT %d",
				    softtimeout_act);
				goto failsafe;
			}
		}
		if (pretimeout_set) {
			error = FUNC0(fd, WDIOC_SETPRETIMEOUT, &pretimeout);
			if (error) {
				FUNC1("setting WDIOC_SETPRETIMEOUT %d",
				    pretimeout);
				goto failsafe;
			}
		}
		if (pretimeout_act_set) {
			error = FUNC0(fd, WDIOC_SETPRETIMEOUTACT,
			    &pretimeout_act);
			if (error) {
				FUNC1("setting WDIOC_SETPRETIMEOUTACT %d",
				    pretimeout_act);
				goto failsafe;
			}
		}
		/* pat one more time for good measure */
		return FUNC2((timeout|WD_ACTIVE));
	 } else {
		return FUNC2(exit_timeout);
	 }
failsafe:
	FUNC2(exit_timeout);
	return (error);
}