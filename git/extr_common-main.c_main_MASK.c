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
 int /*<<< orphan*/  TRACE2_PROCESS_INFO_STARTUP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char const**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

int FUNC12(int argc, const char **argv)
{
	int result;

	FUNC11();

	/*
	 * Always open file descriptors 0/1/2 to avoid clobbering files
	 * in die().  It also avoids messing up when the pipes are dup'ed
	 * onto stdin/stdout/stderr in the child processes we spawn.
	 */
	FUNC6();
	FUNC5();

	FUNC2(argv[0]);

	FUNC3();

	FUNC4();

	FUNC0();

	FUNC10();
	FUNC8(argv);
	FUNC9(TRACE2_PROCESS_INFO_STARTUP);

	result = FUNC1(argc, argv);

	FUNC7(result);

	return result;
}