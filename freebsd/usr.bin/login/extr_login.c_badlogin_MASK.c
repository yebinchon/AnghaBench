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
 int LOG_AUTHPRIV ; 
 int LOG_NOTICE ; 
 int failures ; 
 scalar_t__ hflag ; 
 int /*<<< orphan*/  hostname ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  tty ; 

__attribute__((used)) static void
FUNC1(char *name)
{

	if (failures == 0)
		return;
	if (hflag) {
		FUNC0(LOG_NOTICE, "%d LOGIN FAILURE%s FROM %s",
		    failures, failures > 1 ? "S" : "", hostname);
		FUNC0(LOG_AUTHPRIV|LOG_NOTICE,
		    "%d LOGIN FAILURE%s FROM %s, %s",
		    failures, failures > 1 ? "S" : "", hostname, name);
	} else {
		FUNC0(LOG_NOTICE, "%d LOGIN FAILURE%s ON %s",
		    failures, failures > 1 ? "S" : "", tty);
		FUNC0(LOG_AUTHPRIV|LOG_NOTICE,
		    "%d LOGIN FAILURE%s ON %s, %s",
		    failures, failures > 1 ? "S" : "", tty, name);
	}
	failures = 0;
}