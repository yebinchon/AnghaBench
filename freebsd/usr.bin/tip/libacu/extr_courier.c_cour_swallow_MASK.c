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
typedef  int /*<<< orphan*/  sig_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIALTIMEOUT ; 
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ dialtimeout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigALRM ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  timeoutbuf ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(char *match)
{
	sig_t f;
	char c;

	f = FUNC7(SIGALRM, sigALRM);
	dialtimeout = 0;
	do {
		if (*match =='\0') {
			FUNC7(SIGALRM, f);
			return (1);
		}
		if (FUNC6(timeoutbuf)) {
			FUNC7(SIGALRM, f);
			return (0);
		}
		FUNC0(FUNC3(FUNC8(DIALTIMEOUT)));
		FUNC5(FD, &c, 1);
		FUNC0(0);
		c &= 0177;
#ifdef DEBUG
		if (boolean(value(VERBOSE)))
			putchar(c);
#endif
	} while (c == *match++);
#ifdef DEBUG
	if (boolean(value(VERBOSE)))
		fflush(stdout);
#endif
	FUNC7(SIGALRM, SIG_DFL);
	return (0);
}