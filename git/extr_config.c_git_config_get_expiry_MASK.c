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
typedef  scalar_t__ timestamp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (char const*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,char const*,char const*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

int FUNC5(const char *key, const char **output)
{
	int ret = FUNC2(key, output);
	if (ret)
		return ret;
	if (FUNC4(*output, "now")) {
		timestamp_t now = FUNC1("now");
		if (FUNC1(*output) >= now)
			FUNC3(key, FUNC0("Invalid %s: '%s'"), key, *output);
	}
	return ret;
}