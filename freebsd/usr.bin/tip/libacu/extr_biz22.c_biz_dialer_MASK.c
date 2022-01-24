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
typedef  int /*<<< orphan*/  cbuf ;

/* Variables and functions */
 int /*<<< orphan*/  DIALTIMEOUT ; 
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  HOST ; 
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 scalar_t__ dialtimeout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(char *num, char *mod)
{
	int connected = 0;
	char cbuf[40];

	if (FUNC1(FUNC10(VERBOSE)))
		FUNC6("\nstarting call...");
	/*
	 * Disable auto-answer and configure for tone/pulse
	 *  dialing
	 */
	if (FUNC2("\02K\r")) {
		FUNC6("can't initialize bizcomp...");
		return (0);
	}
	(void)FUNC8(cbuf, "\02.\r", sizeof cbuf);
	cbuf[1] = *mod;
	if (FUNC2(cbuf)) {
		FUNC6("can't set dialing mode...");
		return (0);
	}
	(void)FUNC7(cbuf, sizeof(cbuf), "\02D%s\r", num);
	FUNC11(FD, cbuf, FUNC9(cbuf));
	if (!FUNC3("7\r")) {
		FUNC6("can't get dial tone...");
		return (0);
	}
	if (FUNC1(FUNC10(VERBOSE)))
		FUNC6("ringing...");
	/*
	 * The reply from the BIZCOMP should be:
	 *	2 \r or 7 \r	failure
	 *	1 \r		success
	 */
	connected = FUNC3("1\r");
#ifdef ACULOG
	if (dialtimeout) {
		char line[80];

		(void)snprintf(line, sizeof line, "%ld second dial timeout",
			number(value(DIALTIMEOUT)));
		logent(value(HOST), num, "biz1022", line);
	}
#endif
	if (dialtimeout)
		FUNC0();	/* insurance */
	return (connected);
}