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
typedef  int /*<<< orphan*/  tunable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENOENT ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*) ; 

__attribute__((used)) static int
FUNC3(const char *connector_name, char **option)
{
	char tunable[64];

	/*
	 * A user may use loader tunables to set a specific mode for the
	 * console. Tunables are read in the following order:
	 *     1. kern.vt.fb.modes.$connector_name
	 *     2. kern.vt.fb.default_mode
	 *
	 * Example of a mode specific to the LVDS connector:
	 *     kern.vt.fb.modes.LVDS="1024x768"
	 *
	 * Example of a mode applied to all connectors not having a
	 * connector-specific mode:
	 *     kern.vt.fb.default_mode="640x480"
	 */
	FUNC2(tunable, sizeof(tunable), "kern.vt.fb.modes.%s",
	    connector_name);
	FUNC0("Connector %s: get mode from tunables:\n", connector_name);
	FUNC0("  - %s\n", tunable);
	FUNC0("  - kern.vt.fb.default_mode\n");
	*option = FUNC1(tunable);
	if (*option == NULL)
		*option = FUNC1("kern.vt.fb.default_mode");

	return (*option != NULL ? 0 : -ENOENT);
}