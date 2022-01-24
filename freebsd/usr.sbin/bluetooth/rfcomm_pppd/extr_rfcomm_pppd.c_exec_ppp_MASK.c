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
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,char*,...) ; 

__attribute__((used)) static void
FUNC7(int s, char *unit, char *label)
{
	char	 ppp[] = "/usr/sbin/ppp";
	char	*ppp_args[] = { ppp,  "-direct", "-quiet",
				NULL, NULL,      NULL,     NULL };

	FUNC0(0);
	if (FUNC1(s) < 0) {
		FUNC6(LOG_ERR, "Could not dup(0). %s (%d)",
			FUNC5(errno), errno);
		FUNC3(1);
	}

	FUNC0(1);
	if (FUNC1(s) < 0) {
		FUNC6(LOG_ERR, "Could not dup(1). %s (%d)",
			FUNC5(errno), errno);
		FUNC3(1);
	}

	FUNC0(2);
	FUNC4("/dev/null", O_RDWR);

	if (unit != NULL) {
		ppp_args[3] = "-unit";
		ppp_args[4] = unit;
		ppp_args[5] = label;
	} else
		ppp_args[3] = label;

	if (FUNC2(ppp, ppp_args) < 0) {
		FUNC6(LOG_ERR, "Could not exec(%s -direct -quiet%s%s %s). " \
			"%s (%d)", ppp, (unit != NULL)? " -unit " : "",
			(unit != NULL)? unit : "", label,
			FUNC5(errno), errno);
		FUNC3(1);
	}
}