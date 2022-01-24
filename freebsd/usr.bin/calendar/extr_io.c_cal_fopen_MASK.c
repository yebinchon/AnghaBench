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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char** calendarHomes ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 char* FUNC2 (char*) ; 
 unsigned int FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static FILE *
FUNC5(const char *file)
{
	FILE *fp;
	char *home = FUNC2("HOME");
	unsigned int i;

	if (home == NULL || *home == '\0') {
		FUNC4("Cannot get home directory");
		return (NULL);
	}

	if (FUNC0(home) != 0) {
		FUNC4("Cannot enter home directory");
		return (NULL);
	}

	for (i = 0; i < FUNC3(calendarHomes); i++) {
		if (FUNC0(calendarHomes[i]) != 0)
			continue;

		if ((fp = FUNC1(file, "r")) != NULL)
			return (fp);
	}

	FUNC4("can't open calendar file \"%s\"", file);

	return (NULL);
}