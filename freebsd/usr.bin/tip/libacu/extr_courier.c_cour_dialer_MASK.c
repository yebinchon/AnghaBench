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
 int /*<<< orphan*/  TCSAFLUSH ; 
 int /*<<< orphan*/  VERBOSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int connected ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ dialtimeout ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

int
FUNC18(char *num, char *acu)
{
	char *cp;
#ifdef ACULOG
	char line[80];
#endif
	struct termios cntrl;

	if (FUNC0(FUNC17(VERBOSE)))
		FUNC10("Using \"%s\"\n", acu);

	FUNC15(FD, &cntrl);
	cntrl.c_cflag |= HUPCL;
	FUNC16(FD, TCSAFLUSH, &cntrl);
	/*
	 * Get in synch.
	 */
	if (!FUNC6()) {
badsynch:
		FUNC10("can't synchronize with courier\n");
#ifdef ACULOG
		logent(value(HOST), num, "courier", "can't synch up");
#endif
		return (0);
	}
	FUNC5(FD, "AT E0\r", 6);	/* turn off echoing */
	FUNC11(1);
#ifdef DEBUG
	if (boolean(value(VERBOSE)))
		cour_verbose_read();
#endif
	FUNC14(FD, TCIOFLUSH);
	FUNC5(FD, "AT C1 E0 H0 Q0 X6 V1\r", 21);
	if (!FUNC3("\r\nOK\r\n"))
		goto badsynch;
	FUNC7(stdout);
	FUNC5(FD, "AT D", 4);
	for (cp = num; *cp; cp++)
		if (*cp == '=')
			*cp = ',';
	FUNC5(FD, num, FUNC13(num));
	FUNC5(FD, "\r", 1);
	connected = FUNC1();
#ifdef ACULOG
	if (dialtimeout) {
		(void)snprintf(line, sizeof line, "%ld second dial timeout",
			number(value(DIALTIMEOUT)));
		logent(value(HOST), num, "cour", line);
	}
#endif
	if (dialtimeout)
		FUNC2();
	return (connected);
}