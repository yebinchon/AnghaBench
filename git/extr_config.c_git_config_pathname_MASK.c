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
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ) ; 

int FUNC4(const char **dest, const char *var, const char *value)
{
	if (!value)
		return FUNC1(var);
	*dest = FUNC3(value, 0);
	if (!*dest)
		FUNC2(FUNC0("failed to expand user dir in: '%s'"), value);
	return 0;
}