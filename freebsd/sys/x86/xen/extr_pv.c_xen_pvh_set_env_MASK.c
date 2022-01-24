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
 scalar_t__ FUNC0 (char*,char*) ; 
 int FUNC1 (char*) ; 
 char* FUNC2 (char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 

__attribute__((used)) static void
FUNC4(char *env, bool (*filter)(const char *))
{
	char *option;

	if (env == NULL)
		return;

	option = env;
	while (*option != 0) {
		char *value;

		if (filter != NULL && filter(option)) {
			option += FUNC1(option) + 1;
			continue;
		}

		value = option;
		option = FUNC2(&value, "=");
		if (FUNC0(option, value) != 0)
			FUNC3("unable to add kenv %s=%s\n", option, value);
		option = value + FUNC1(value) + 1;
	}
}