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
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigALRM ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timeoutbuf ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(char match, char response[])
{
	char *cp = response;
	sig_t f;
	char c;

	f = FUNC6(SIGALRM, sigALRM);
	dialtimeout = 0;
	do {
		if (FUNC5(timeoutbuf)) {
			FUNC6(SIGALRM, f);
			*cp = '\0';
			return (0);
		}
		FUNC0(FUNC2(FUNC7(DIALTIMEOUT)));
		FUNC4(FD, cp, 1);
		FUNC0(0);
		c = (*cp++ &= 0177);
#ifdef notdef
		if (boolean(value(VERBOSE)))
			putchar(c);
#endif
	} while (c != '\n' && c != match);
	FUNC6(SIGALRM, SIG_DFL);
	*cp = '\0';
	return (c == match);
}