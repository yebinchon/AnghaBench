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
 int /*<<< orphan*/  LOG_CRIT ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 char const* FUNC2 (scalar_t__) ; 

void
FUNC3(const char *emsg)
{
	if (emsg == NULL)
		FUNC1(LOG_CRIT, "fatal: %s", FUNC2(errno));
	else
		if (errno)
			FUNC1(LOG_CRIT, "fatal: %s: %s",
			    emsg, FUNC2(errno));
		else
			FUNC1(LOG_CRIT, "fatal: %s", emsg);

	FUNC0(1);
}