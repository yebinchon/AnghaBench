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
 int /*<<< orphan*/  DIALTIMEOUT ; 
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  HOST ; 
 int /*<<< orphan*/  HUPCL ; 
 int /*<<< orphan*/  TCIOFLUSH ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  VERBOSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ dialtimeout ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char,char*) ; 
 scalar_t__ FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 
 char FUNC14 (char) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC19(char *num, char *acu)
{
	char *cp;
	int connected = 0;
	char *msg, line[80];
	struct termios	cntrl;

	/*
	 * Get in synch with a couple of carriage returns
	 */
	if (!FUNC17(FD)) {
		FUNC8("can't synchronize with ventel\n");
#ifdef ACULOG
		logent(value(HOST), num, "ventel", "can't synch up");
#endif
		return (0);
	}
	if (FUNC0(FUNC15(VERBOSE)))
		FUNC8("\ndialing...");
	FUNC3(stdout);
	FUNC12(FD, &cntrl);
	cntrl.c_cflag |= HUPCL;
	FUNC13(FD, TCSANOW, &cntrl);
	FUNC2("#k$\r$\n$D$I$A$L$:$ ");
	for (cp = num; *cp; cp++) {
		FUNC1(1, 10);
		FUNC18(FD, cp, 1);
	}
	FUNC1(1, 10);
	FUNC18(FD, "\r", 1);
	FUNC4('\n', line);
	if (FUNC4('\n', line))
		connected = FUNC4('!', line);
	FUNC11(FD, TCIOFLUSH);
#ifdef ACULOG
	if (dialtimeout) {
		(void)snprintf(line, sizeof line, "%ld second dial timeout",
			number(value(DIALTIMEOUT)));
		logent(value(HOST), num, "ventel", line);
	}
#endif
	if (dialtimeout)
		FUNC16();	/* insurance */
	if (connected || dialtimeout || !FUNC0(FUNC15(VERBOSE)))
		return (connected);
	/* call failed, parse response for user */
	cp = FUNC10(line, '\r');
	if (cp)
		*cp = '\0';
	for (cp = line; (cp = FUNC10(cp, ' ')) != NULL; cp++)
		if (cp[1] == ' ')
			break;
	if (cp) {
		while (*cp == ' ')
			cp++;
		msg = cp;
		while (*cp) {
			if (FUNC5(*cp))
				*cp = FUNC14(*cp);
			cp++;
		}
		FUNC8("%s...", msg);
	}
	return (connected);
}