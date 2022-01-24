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
 int GIT_COLOR_AUTO ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

int FUNC2(const char *var, const char *value)
{
	if (value) {
		if (!FUNC1(value, "never"))
			return 0;
		if (!FUNC1(value, "always"))
			return 1;
		if (!FUNC1(value, "auto"))
			return GIT_COLOR_AUTO;
	}

	if (!var)
		return -1;

	/* Missing or explicit false to turn off colorization */
	if (!FUNC0(var, value))
		return 0;

	/* any normal truth value defaults to 'auto' */
	return GIT_COLOR_AUTO;
}