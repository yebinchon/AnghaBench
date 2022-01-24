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
 int /*<<< orphan*/  CDELAY ; 
 int /*<<< orphan*/  ECHOCHECK ; 
 int /*<<< orphan*/  ETIMEOUT ; 
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  LDELAY ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 char null ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ timedout ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(int c)
{
	char cc;
	int retry = 0;

	cc = c;
	FUNC5(FD, &cc, 1);
	if (FUNC4(FUNC9(CDELAY)) > 0 && c != '\r')
		FUNC8(FUNC4(FUNC9(CDELAY)));
	if (!FUNC1(FUNC9(ECHOCHECK))) {
		if (FUNC4(FUNC9(LDELAY)) > 0 && c == '\r')
			FUNC8(FUNC4(FUNC9(LDELAY)));
		return;
	}
tryagain:
	timedout = 0;
	FUNC0((unsigned int)FUNC3(ETIMEOUT));
	FUNC7(FD, &cc, 1);
	FUNC0(0);
	if (timedout) {
		FUNC6("\r\ntimeout error (%s)\r\n", FUNC2(c));
		if (retry++ > 3)
			return;
		FUNC5(FD, &null, 1); /* poke it */
		goto tryagain;
	}
}