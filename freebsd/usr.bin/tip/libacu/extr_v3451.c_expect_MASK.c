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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  DIALTIMEOUT ; 
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  Sjbuf ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  alarmtr ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(char *cp)
{
	char buf[300];
	char *rp = buf;
	int timeout = 30, online = 0;

	if (FUNC6(cp, "\"\"") == 0)
		return (1);
	*rp = 0;
	/*
	 * If we are waiting for the Vadic to complete
	 * dialing and get a connection, allow more time
	 * Unfortunately, the Vadic times out 24 seconds after
	 * the last digit is dialed
	 */
	online = FUNC6(cp, "ON LINE") == 0;
	if (online)
		timeout = FUNC2(FUNC7(DIALTIMEOUT));
	FUNC5(SIGALRM, alarmtr);
	if (FUNC4(Sjbuf))
		return (0);
	FUNC0(timeout);
	while (FUNC1(cp, buf) && rp < buf + sizeof (buf) - 1) {
		if (online && FUNC1("FAILED CALL", buf) == 0)
			return (0);
		if (FUNC3(FD, rp, 1) < 0) {
			FUNC0(0);
			return (0);
		}
		if (*rp &= 0177)
			rp++;
		*rp = '\0';
	}
	FUNC0(0);
	return (1);
}