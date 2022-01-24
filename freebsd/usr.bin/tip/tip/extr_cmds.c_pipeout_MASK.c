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
typedef  scalar_t__ time_t ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGIOT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int /*<<< orphan*/  VERBOSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ccc ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  defchars ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fildes ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * repdes ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  term ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tipout_pid ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC18(int c)
{
	char buf[256];
	int status, p;
	pid_t cpid;
	time_t start = FUNC14(NULL);

	FUNC10(c);
	if (FUNC8("Local command? ", buf, sizeof(buf)))
		return;
	FUNC6(tipout_pid, SIGIOT);	/* put TIPOUT into a wait state */
	FUNC12(SIGINT, SIG_IGN);
	FUNC12(SIGQUIT, SIG_IGN);
	FUNC13(0, TCSAFLUSH, &defchars);
	FUNC11(repdes[0], (char *)&ccc, 1);
	/*
	 * Set up file descriptors in the child and
	 *  let it go...
	 */
	if ((cpid = FUNC5()) < 0)
		FUNC7("can't fork!\r\n");
	else if (cpid) {
		start = FUNC14(NULL);
		while ((p = FUNC16(&status)) > 0 && p != cpid)
			;
	} else {
		int i;

		FUNC2(FD, 1);
		for (i = 3; i < 20; i++)
			FUNC1(i);
		FUNC12(SIGINT, SIG_DFL);
		FUNC12(SIGQUIT, SIG_DFL);
		FUNC3(buf);
		FUNC7("can't find `%s'\r\n", buf);
		FUNC4(0);
	}
	if (FUNC0(FUNC15(VERBOSE)))
		FUNC9("away for ", FUNC14(0)-start);
	FUNC17(fildes[1], (char *)&ccc, 1);
	FUNC13(0, TCSAFLUSH, &term);
	FUNC12(SIGINT, SIG_DFL);
	FUNC12(SIGQUIT, SIG_DFL);
}