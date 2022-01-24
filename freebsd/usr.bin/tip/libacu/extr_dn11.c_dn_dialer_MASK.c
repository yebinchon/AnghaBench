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
struct termios {int /*<<< orphan*/  c_cflag; } ;

/* Variables and functions */
 char* DV ; 
 scalar_t__ EBUSY ; 
 scalar_t__ EIO ; 
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  HUPCL ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  alarmtr ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int child ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dn ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  jmpbuf ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int*) ; 
 int FUNC17 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC18(char *num, char *acu)
{
	int lt, nw;
	int timelim;
	struct termios cntrl;

	if (FUNC1(FUNC15(VERBOSE)))
		FUNC8("\nstarting call...");
	if ((dn = FUNC7(acu, 1)) < 0) {
		if (errno == EBUSY)
			FUNC8("line busy...");
		else
			FUNC8("acu open error...");
		return (0);
	}
	if (FUNC9(jmpbuf)) {
		FUNC6(child, SIGKILL);
		FUNC2(dn);
		return (0);
	}
	FUNC10(SIGALRM, alarmtr);
	timelim = 5 * FUNC12(num);
	FUNC0(timelim < 30 ? 30 : timelim);
	if ((child = FUNC5()) == 0) {
		/*
		 * ignore this stuff for aborts
		 */
		FUNC10(SIGALRM, SIG_IGN);
		FUNC10(SIGINT, SIG_IGN);
		FUNC10(SIGQUIT, SIG_IGN);
		FUNC11(2);
		nw = FUNC17(dn, num, lt = FUNC12(num));
		FUNC3(nw != lt);
	}
	/*
	 * open line - will return on carrier
	 */
	if ((FD = FUNC7(DV, 2)) < 0) {
		if (errno == EIO)
			FUNC8("lost carrier...");
		else
			FUNC8("dialup line open failed...");
		FUNC0(0);
		FUNC6(child, SIGKILL);
		FUNC2(dn);
		return (0);
	}
	FUNC0(0);
	FUNC13(dn, &cntrl);
	cntrl.c_cflag |= HUPCL;
	FUNC14(dn, TCSANOW, &cntrl);
	FUNC10(SIGALRM, SIG_DFL);
	while ((nw = FUNC16(&lt)) != child && nw != -1)
		;
	FUNC4(stdout);
	FUNC2(dn);
	if (lt != 0) {
		FUNC2(FD);
		return (0);
	}
	return (1);
}