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
 int /*<<< orphan*/  CONNECTED ; 
 int /*<<< orphan*/  DIALING ; 
 int /*<<< orphan*/  DIALTIMEOUT ; 
 int /*<<< orphan*/  FAILED ; 
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  HOST ; 
 int /*<<< orphan*/  HUPCL ; 
 int /*<<< orphan*/  TCIOFLUSH ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  VERBOSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ dialtimeout ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC16(char *num, char *acu)
{
	char *cp;
	int connected = 0;
	char dummy;
	struct termios cntrl;
#ifdef ACULOG
	char line[80];
#endif
	if (FUNC5() == 0)		/* make sure we can talk to the modem */
		return(0);
	if (FUNC0(FUNC14(VERBOSE)))
		FUNC8("\ndialing...");
	FUNC2(stdout);
	FUNC12(FD, &cntrl);
	cntrl.c_cflag |= HUPCL;
	FUNC13(FD, TCSANOW, &cntrl);
	FUNC11(FD, TCIOFLUSH);
	FUNC15(FD, "ATv0\r", 5);	/* tell modem to use short status codes */
	FUNC3("\r");
	FUNC3("\r");
	FUNC15(FD, "ATTD", 4);	/* send dial command */
	for (cp = num; *cp; cp++)
		if (*cp == '=')
			*cp = ',';
	FUNC15(FD, num, FUNC10(num));
	state = DIALING;
	FUNC15(FD, "\r", 1);
	connected = 0;
	if (FUNC3("\r")) {
		if ((dummy = FUNC3("01234")) != '1')
			FUNC1(dummy);
		else
			connected = 1;
	}
	if (connected)
		state = CONNECTED;
	else {
		state = FAILED;
		return (connected);	/* lets get out of here.. */
	}
	FUNC11(FD, TCIOFLUSH);
#ifdef ACULOG
	if (dialtimeout) {
		(void)snprintf(line, sizeof line, "%ld second dial timeout",
			number(value(DIALTIMEOUT)));
		logent(value(HOST), num, "hayes", line);
	}
#endif
	if (dialtimeout)
		FUNC4();	/* insurance */
	return (connected);
}