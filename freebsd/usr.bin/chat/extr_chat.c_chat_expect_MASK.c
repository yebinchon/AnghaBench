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
 int /*<<< orphan*/  abort_next ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  clear_abort_next ; 
 int /*<<< orphan*/  clear_report_next ; 
 int /*<<< orphan*/  echo_next ; 
 int exit_code ; 
 char* FUNC2 (char*,char*) ; 
 scalar_t__ fail_reason ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  hup_next ; 
 int /*<<< orphan*/  report_next ; 
 int /*<<< orphan*/  say_next ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  timeout_next ; 

void
FUNC6(char *s)
{
    char *expect;
    char *reply;

    if (FUNC4(s, "HANGUP") == 0) {
	++hup_next;
        return;
    }
 
    if (FUNC4(s, "ABORT") == 0) {
	++abort_next;
	return;
    }

    if (FUNC4(s, "CLR_ABORT") == 0) {
	++clear_abort_next;
	return;
    }

    if (FUNC4(s, "REPORT") == 0) {
	++report_next;
	return;
    }

    if (FUNC4(s, "CLR_REPORT") == 0) {
	++clear_report_next;
	return;
    }

    if (FUNC4(s, "TIMEOUT") == 0) {
	++timeout_next;
	return;
    }

    if (FUNC4(s, "ECHO") == 0) {
	++echo_next;
	return;
    }

    if (FUNC4(s, "SAY") == 0) {
	++say_next;
	return;
    }

/*
 * Fetch the expect and reply string.
 */
    for (;;) {
	expect = FUNC2 (s, "-");
	s      = (char *) 0;

	if (expect == (char *) 0)
	    return;

	reply = FUNC2 (s, "-");

/*
 * Handle the expect string. If successful then exit.
 */
	if (FUNC3 (expect))
	    return;

/*
 * If there is a sub-reply string then send it. Otherwise any condition
 * is terminal.
 */
	if (reply == (char *) 0 || exit_code != 3)
	    break;

	FUNC1 (reply);
    }

/*
 * The expectation did not occur. This is terminal.
 */
    if (fail_reason)
	FUNC0("Failed (%s)", fail_reason);
    else
	FUNC0("Failed");
    FUNC5(exit_code);
}