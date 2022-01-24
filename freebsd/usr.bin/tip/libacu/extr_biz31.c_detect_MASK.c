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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigALRM ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ timeout ; 
 int /*<<< orphan*/  timeoutbuf ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(char *s)
{
	sig_t f;
	char c;

	f = FUNC6(SIGALRM, sigALRM);
	timeout = 0;
	while (*s) {
		if (FUNC5(timeoutbuf)) {
			FUNC3("\07timeout waiting for reply\n");
			FUNC1();
			break;
		}
		FUNC0(FUNC2(FUNC7(DIALTIMEOUT)));
		FUNC4(FD, &c, 1);
		FUNC0(0);
		if (c != *s++)
			break;
	}
	FUNC6(SIGALRM, f);
	return (timeout == 0);
}