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
 int LINESIZE ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIGTTIN ; 
 int /*<<< orphan*/  SIGTTOU ; 
 scalar_t__ SIG_IGN ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ hangup ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  input ; 
 scalar_t__ intr ; 
 scalar_t__ loading ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* prompt ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int reset_on_stop ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ sourcing ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ stop ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 

void
FUNC11(void)
{
	int n, eofloop = 0;
	char linebuf[LINESIZE];

	if (!sourcing) {
		if (FUNC6(SIGINT, SIG_IGN) != SIG_IGN)
			(void)FUNC6(SIGINT, intr);
		if (FUNC6(SIGHUP, SIG_IGN) != SIG_IGN)
			(void)FUNC6(SIGHUP, hangup);
		(void)FUNC6(SIGTSTP, stop);
		(void)FUNC6(SIGTTOU, stop);
		(void)FUNC6(SIGTTIN, stop);
	}
	FUNC5();
	for (;;) {
		/*
		 * Print the prompt, if needed.  Clear out
		 * string space, and flush the output.
		 */
		if (!sourcing && FUNC10("interactive") != NULL) {
			if ((FUNC10("autoinc") != NULL) && (FUNC2() > 0))
				FUNC3("New mail has arrived.\n");
			reset_on_stop = 1;
			FUNC3("%s", prompt);
		}
		(void)FUNC1(stdout);
		FUNC7();
		/*
		 * Read a line of commands from the current input
		 * and handle end of file specially.
		 */
		n = 0;
		for (;;) {
			if (FUNC4(input, &linebuf[n], LINESIZE - n) < 0) {
				if (n == 0)
					n = -1;
				break;
			}
			if ((n = FUNC8(linebuf)) == 0)
				break;
			n--;
			if (linebuf[n] != '\\')
				break;
			linebuf[n++] = ' ';
		}
		reset_on_stop = 0;
		if (n < 0) {
				/* eof */
			if (loading)
				break;
			if (sourcing) {
				FUNC9();
				continue;
			}
			if (FUNC10("interactive") != NULL &&
			    FUNC10("ignoreeof") != NULL &&
			    ++eofloop < 25) {
				FUNC3("Use \"quit\" to quit.\n");
				continue;
			}
			break;
		}
		eofloop = 0;
		if (FUNC0(linebuf, 0))
			break;
	}
}