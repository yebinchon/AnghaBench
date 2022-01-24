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
 int /*<<< orphan*/  FUNC0 (char const) ; 

__attribute__((used)) static int FUNC1(const char *name)
{
	/* Empty section names are bogus. */
	if (!*name)
		return 0;

	/*
	 * Before a dot, we must be alphanumeric or dash. After the first dot,
	 * anything goes, so we can stop checking.
	 */
	for (; *name && *name != '.'; name++)
		if (*name != '-' && !FUNC0(*name))
			return 0;
	return 1;
}