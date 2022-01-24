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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,char const*,char const*,int) ; 

void FUNC3(const char *config_filename,
				     const char *key, const char *value,
				     const char *value_regex, int multi_replace)
{
	if (!FUNC2(config_filename, key, value,
						    value_regex, multi_replace))
		return;
	if (value)
		FUNC1(FUNC0("could not set '%s' to '%s'"), key, value);
	else
		FUNC1(FUNC0("could not unset '%s'"), key);
}