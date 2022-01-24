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
 int connected ; 
 scalar_t__ dialtimeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC7 (char*) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

int
FUNC18(char *num, char *acu)
{
	char *cp;
	struct termios cntrl;
#ifdef ACULOG
	char line[80];
#endif

	if (FUNC0(FUNC17(VERBOSE)))
		FUNC4("Using \"%s\"\n", acu);

	FUNC15(FD, &cntrl);
	cntrl.c_cflag |= HUPCL;
	FUNC16(FD, TCSANOW, &cntrl);
	/*
	 * Get in synch.
	 */
	if (!FUNC11()) {
badsynch:
		FUNC4("can't synchronize with t3000\n");
#ifdef ACULOG
		logent(value(HOST), num, "t3000", "can't synch up");
#endif
		return (0);
	}
	FUNC13(FD, "AT E0\r", 6);	/* turn off echoing */
	FUNC5(1);
#ifdef DEBUG
	if (boolean(value(VERBOSE)))
		t3000_verbose_read();
#endif
	FUNC14(FD, TCIOFLUSH);
	FUNC13(FD, "AT E0 H0 Q0 X4 V1\r", 18);
	if (!FUNC10("\r\nOK\r\n"))
		goto badsynch;
	FUNC1(stdout);
	FUNC13(FD, "AT D", 4);
	for (cp = num; *cp; cp++)
		if (*cp == '=')
			*cp = ',';
	FUNC13(FD, num, FUNC7(num));
	FUNC13(FD, "\r", 1);
	connected = FUNC8();
#ifdef ACULOG
	if (dialtimeout) {
		(void)snprintf(line, sizeof line, "%ld second dial timeout",
			number(value(DIALTIMEOUT)));
		logent(value(HOST), num, "t3000", line);
	}
#endif
	if (dialtimeout)
		FUNC9();
	return (connected);
}