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
struct rusage {int /*<<< orphan*/  ru_utime; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int MaxIterations ; 
 int /*<<< orphan*/  RUSAGE_SELF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rusage*) ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  name2 ; 
 int /*<<< orphan*/  nameValuePair ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  value1 ; 
 int /*<<< orphan*/  value2 ; 

int
FUNC7(int argc, char **argv)
{
	int iterations;
	struct rusage endUsage;
	struct rusage startUsage;

	/*
	 * getenv() on the existing environment.
	 */
	FUNC3(RUSAGE_SELF, &startUsage);

	/* Iterate over setting variable. */
	for (iterations = 0; iterations < MaxIterations; iterations++)
		if (FUNC2(name) == NULL)
			FUNC0(EXIT_FAILURE, "getenv(name)");

	FUNC3(RUSAGE_SELF, &endUsage);

	FUNC5("getenv(name)", &startUsage.ru_utime, &endUsage.ru_utime);


	/*
	 * setenv() a variable with a large value.
	 */
	FUNC3(RUSAGE_SELF, &startUsage);

	/* Iterate over setting variable. */
	for (iterations = 0; iterations < MaxIterations; iterations++)
		if (FUNC6(name, value1, 1) == -1)
			FUNC0(EXIT_FAILURE, "setenv(name, value1, 1)");

	FUNC3(RUSAGE_SELF, &endUsage);

	FUNC5("setenv(name, value1, 1)", &startUsage.ru_utime,
	    &endUsage.ru_utime);


	/*
	 * getenv() the new variable on the new environment.
	 */
	FUNC3(RUSAGE_SELF, &startUsage);

	/* Iterate over setting variable. */
	for (iterations = 0; iterations < MaxIterations; iterations++)
		/* Set large value to variable. */
		if (FUNC2(name) == NULL)
			FUNC0(EXIT_FAILURE, "getenv(name)");

	FUNC3(RUSAGE_SELF, &endUsage);

	FUNC5("getenv(name)", &startUsage.ru_utime, &endUsage.ru_utime);


	/*
	 * getenv() a different variable on the new environment.
	 */
	FUNC3(RUSAGE_SELF, &startUsage);

	/* Iterate over setting variable. */
	for (iterations = 0; iterations < MaxIterations; iterations++)
		/* Set large value to variable. */
		if (FUNC2(name2) == NULL)
			FUNC0(EXIT_FAILURE, "getenv(name2)");

	FUNC3(RUSAGE_SELF, &endUsage);

	FUNC5("getenv(name2)", &startUsage.ru_utime, &endUsage.ru_utime);


	/*
	 * setenv() a variable with a small value.
	 */
	FUNC3(RUSAGE_SELF, &startUsage);

	/* Iterate over setting variable. */
	for (iterations = 0; iterations < MaxIterations; iterations++)
		if (FUNC6(name, value2, 1) == -1)
			FUNC0(EXIT_FAILURE, "setenv(name, value2, 1)");

	FUNC3(RUSAGE_SELF, &endUsage);

	FUNC5("setenv(name, value2, 1)", &startUsage.ru_utime,
	    &endUsage.ru_utime);


	/*
	 * getenv() a different variable on the new environment.
	 */
	FUNC3(RUSAGE_SELF, &startUsage);

	/* Iterate over setting variable. */
	for (iterations = 0; iterations < MaxIterations; iterations++)
		/* Set large value to variable. */
		if (FUNC2(name2) == NULL)
			FUNC0(EXIT_FAILURE, "getenv(name)");

	FUNC3(RUSAGE_SELF, &endUsage);

	FUNC5("getenv(name)", &startUsage.ru_utime, &endUsage.ru_utime);


	/*
	 * getenv() a different variable on the new environment.
	 */
	FUNC3(RUSAGE_SELF, &startUsage);

	/* Iterate over setting variable. */
	for (iterations = 0; iterations < MaxIterations; iterations++)
		/* Set large value to variable. */
		if (FUNC2(name2) == NULL)
			FUNC0(EXIT_FAILURE, "getenv(name2)");

	FUNC3(RUSAGE_SELF, &endUsage);

	FUNC5("getenv(name2)", &startUsage.ru_utime, &endUsage.ru_utime);


	/*
	 * putenv() a variable with a small value.
	 */
	FUNC3(RUSAGE_SELF, &startUsage);

	/* Iterate over setting variable. */
	for (iterations = 0; iterations < MaxIterations; iterations++)
		if (FUNC4(nameValuePair) == -1)
			FUNC0(EXIT_FAILURE, "putenv(nameValuePair)");

	FUNC3(RUSAGE_SELF, &endUsage);

	FUNC5("putenv(nameValuePair)", &startUsage.ru_utime,
	    &endUsage.ru_utime);


	FUNC1(EXIT_SUCCESS);
}