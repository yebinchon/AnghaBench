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
 int /*<<< orphan*/  DIALTIMEOUT ; 
 char* DISCONNECT_CMD ; 
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  HOST ; 
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ timeout ; 
 int /*<<< orphan*/  uucplock ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(char *num, char *mod)
{
	int connected = 0;

	if (!FUNC1(FD)) {
		FUNC8(FUNC12(HOST), "", "biz", "out of sync");
		FUNC10("bizcomp out of sync\n");
		FUNC3(uucplock);
		FUNC6(0);
	}
	if (FUNC2(FUNC12(VERBOSE)))
		FUNC10("\nstarting call...");
	FUNC5("#\rk$\r$\n");			/* disable auto-answer */
	FUNC5("$>$.$ #\r");			/* tone/pulse dialing */
	FUNC5(mod);
	FUNC5("$\r$\n");
	FUNC5("$>$.$ #\re$ ");			/* disconnection sequence */
	FUNC5(DISCONNECT_CMD);
	FUNC5("\r$\n$\r$\n");
	FUNC5("$>$.$ #\rr$ ");			/* repeat dial */
	FUNC5(num);
	FUNC5("\r$\n");
	if (FUNC2(FUNC12(VERBOSE)))
		FUNC10("ringing...");
	/*
	 * The reply from the BIZCOMP should be:
	 *	`^G NO CONNECTION\r\n^G\r\n'	failure
	 *	` CONNECTION\r\n^G'		success
	 */
	connected = FUNC4(" ");
#ifdef ACULOG
	if (timeout) {
		char line[80];

		(void)snprintf(line, sizeof line, "%ld second dial timeout",
			number(value(DIALTIMEOUT)));
		logent(value(HOST), num, "biz", line);
	}
#endif
	if (!connected)
		FUNC7(" NO CONNECTION\r\n\07\r\n");
	else
		FUNC7("CONNECTION\r\n\07");
	if (timeout)
		FUNC0();	/* insurance */
	return (connected);
}