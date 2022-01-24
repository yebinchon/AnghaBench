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
 int /*<<< orphan*/  CAPH_READ ; 
 char** _argv ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int exitval ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ skip ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int
FUNC7(char **argv)
{
	static int done;
	int statok;

	if (argv) {
		_argv = argv;
		return(1);
	}
	for (;;) {
		if (*_argv) {
			done = 1;
			if (!(FUNC5(*_argv, "r", stdin))) {
				FUNC6("%s", *_argv);
				exitval = 1;
				++_argv;
				continue;
			}
			statok = 1;
		} else {
			if (done++)
				return(0);
			statok = 0;
		}

		if (FUNC1(FUNC4(stdin), CAPH_READ) < 0)
			FUNC3(1, "unable to restrict %s",
			    statok ? *_argv : "stdin");

		/*
		 * We've opened our last input file; enter capsicum sandbox.
		 */
		if (statok == 0 || *(_argv + 1) == NULL) {
			if (FUNC0() < 0)
				FUNC3(1, "unable to enter capability mode");
		}

		if (skip)
			FUNC2(statok ? *_argv : "stdin", statok);
		if (*_argv)
			++_argv;
		if (!skip)
			return(1);
	}
	/* NOTREACHED */
}