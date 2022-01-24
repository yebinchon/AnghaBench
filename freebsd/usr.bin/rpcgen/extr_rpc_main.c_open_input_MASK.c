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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/ * arglist ; 
 int /*<<< orphan*/  childpid ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,char*) ; 
 int /*<<< orphan*/ * fin ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* infilename ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

__attribute__((used)) static void
FUNC11(const char *infile, const char *define)
{
	int pd[2];

	infilename = (infile == NULL) ? "<stdin>" : infile;
	(void) FUNC8(pd);
	switch (childpid = FUNC7()) {
	case 0:
		FUNC9();
		FUNC0(define);
		if (infile)
			FUNC0(infile);
		FUNC0((char *)NULL);
		(void) FUNC1(1);
		(void) FUNC3(pd[1], 1);
		(void) FUNC1(pd[0]);
		FUNC5(arglist[0], arglist);
		FUNC4(1, "execvp %s", arglist[0]);
	case -1:
		FUNC4(1, "fork");
	}
	(void) FUNC1(pd[1]);
	fin = FUNC6(pd[0], "r");
	if (fin == NULL) {
		FUNC10("%s", infilename);
		FUNC2();
	}
}