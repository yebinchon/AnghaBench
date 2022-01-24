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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ dialtimeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigALRM ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (char*) ; 
 int /*<<< orphan*/  timeoutbuf ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char
FUNC8(char *match)
{
	char c;
	sig_t f;
	size_t i;
	int status = 0;

	f = FUNC5(SIGALRM, sigALRM);
	dialtimeout = 0;
#ifdef DEBUG
	printf("\ngobble: waiting for %s\n", match);
#endif
	do {
		if (FUNC4(timeoutbuf)) {
			FUNC5(SIGALRM, f);
			return (0);
		}
		FUNC0(FUNC1(FUNC7(DIALTIMEOUT)));
		FUNC3(FD, &c, 1);
		FUNC0(0);
		c &= 0177;
#ifdef DEBUG
		printf("%c 0x%x ", c, c);
#endif
		for (i = 0; i < FUNC6(match); i++)
			if (c == match[i])
				status = c;
	} while (status == 0);
	FUNC5(SIGALRM, SIG_DFL);
#ifdef DEBUG
	printf("\n");
#endif
	return (status);
}