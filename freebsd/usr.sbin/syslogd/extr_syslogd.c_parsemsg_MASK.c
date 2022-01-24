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
 int DEFUPRI ; 
 long INT_MAX ; 
 int /*<<< orphan*/  KeepKernFac ; 
 int LOG_FACMASK ; 
 int LOG_KERN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int LOG_PRIMASK ; 
 int /*<<< orphan*/  LOG_USER ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 long FUNC7 (char*,char**,int) ; 

__attribute__((used)) static void
FUNC8(const char *from, char *msg)
{
	char *q;
	long n;
	size_t i;
	int pri;

	/* Parse PRI. */
	if (msg[0] != '<' || !FUNC3(msg[1])) {
		FUNC2("Invalid PRI from %s\n", from);
		return;
	}
	for (i = 2; i <= 4; i++) {
		if (msg[i] == '>')
			break;
		if (!FUNC3(msg[i])) {
			FUNC2("Invalid PRI header from %s\n", from);
			return;
		}
	}
	if (msg[i] != '>') {
		FUNC2("Invalid PRI header from %s\n", from);
		return;
	}
	errno = 0;
	n = FUNC7(msg + 1, &q, 10);
	if (errno != 0 || *q != msg[i] || n < 0 || n >= INT_MAX) {
		FUNC2("Invalid PRI %ld from %s: %s\n",
		    n, from, FUNC6(errno));
		return;
	}
	pri = n;
	if (pri &~ (LOG_FACMASK|LOG_PRIMASK))
		pri = DEFUPRI;

	/*
	 * Don't allow users to log kernel messages.
	 * NOTE: since LOG_KERN == 0 this will also match
	 *       messages with no facility specified.
	 */
	if ((pri & LOG_FACMASK) == LOG_KERN && !KeepKernFac)
		pri = FUNC0(LOG_USER, FUNC1(pri));

	/* Parse VERSION. */
	msg += i + 1;
	if (msg[0] == '1' && msg[1] == ' ')
		FUNC5(from, pri, msg + 2);
	else
		FUNC4(from, pri, msg);
}