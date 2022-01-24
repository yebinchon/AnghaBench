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
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 char* envName ; 
 char* envValAny ; 
 char* envValLarge ; 
 char* envValSmall ; 
 int /*<<< orphan*/ * environ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int FUNC5 (char*) ; 

int
FUNC6(int argc, char **argv)
{
	const char *env1 = NULL;
	const char *env2 = NULL;
	const char *env3 = NULL;
	const char *env4 = NULL;
	const char *env5 = NULL;
	int testNdx;

	/* Clean slate. */
	environ = NULL;
	testNdx = 0;

	/* Initial value of variable. */
	if (FUNC1(envName) != NULL)
		FUNC2("not ");
	FUNC2("ok %d - getenv(\"%s\")\n", ++testNdx, envName);

	/* Set value of variable to smaller value and get value. */
	if ((FUNC3(envName, envValSmall, 1) != 0) ||
	    ((env1 = FUNC1(envName)) == NULL) ||
	    (FUNC4(env1, envValSmall) != 0))
		FUNC2("not ");
	FUNC2("ok %d - setenv(\"%s\", \"%s\", 1)\n", ++testNdx, envName,
	    envValSmall);

	/* Unset variable. */
	if ((FUNC5(envName) == -1) || ((env2 = FUNC1(envName)) != NULL))
		FUNC2("not ");
	FUNC2("ok %d - unsetenv(\"%s\")\n", ++testNdx, envName);

	/* Set variable to bigger value and get value. */
	if ((FUNC3(envName, envValLarge, 1) != 0) ||
	    ((env3 = FUNC1(envName)) == NULL) ||
	    (FUNC4(env3, envValLarge) != 0))
		FUNC2("not ");
	FUNC2("ok %d - setenv(\"%s\", \"%s\", 1)\n", ++testNdx, envName,
	    envValLarge);

	/* Set variable to smaller value and get value. */
	if ((FUNC3(envName, envValSmall, 1) != 0) ||
	    ((env4 = FUNC1(envName)) == NULL) ||
	    (FUNC4(env4, envValSmall) != 0))
		FUNC2("not ");
	FUNC2("ok %d - setenv(\"%s\", \"%s\", 1)\n", ++testNdx, envName,
	    envValSmall);

	/* Set variable to any value without overwrite and get value. */
	if ((FUNC3(envName, envValAny, 0) != 0) ||
	    ((env5 = FUNC1(envName)) == NULL) ||
	    (FUNC4(env5, envValAny) == 0))
		FUNC2("not ");
	FUNC2("ok %d - setenv(\"%s\", \"%s\", 0)\n", ++testNdx, envName,
	    envValAny);

	/*
	 * Verify FreeBSD-ism about allowing a program to keep old pointers without
	 * risk of segfaulting.
	 */
	if ((FUNC4(env1, envValSmall) != 0) ||
	    (FUNC4(env3, envValSmall) != 0) ||
	    (FUNC4(env4, envValSmall) != 0))
		FUNC2("not ");
	FUNC2("ok %d - old variables point to valid memory\n", ++testNdx);

	FUNC0(EXIT_SUCCESS);
}