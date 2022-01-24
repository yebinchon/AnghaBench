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
typedef  int /*<<< orphan*/  TN ;

/* Variables and functions */
 int /*<<< orphan*/  PTM_PARSE_ISO8601 ; 
 int /*<<< orphan*/  dbg_at_times ; 
 int /*<<< orphan*/  dbg_timenow ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int
FUNC6(const char *doption)
{
	const char TN[] = "TN=";
	int res;

	if (FUNC3(doption, TN, sizeof(TN) - 1) == 0) {
		/*
		 * The "TimeNow" debugging option.  This might be off
		 * by an hour when crossing a timezone change.
		 */
		dbg_timenow = FUNC0(NULL);
		res = FUNC1(dbg_timenow, PTM_PARSE_ISO8601,
		    FUNC4(NULL), doption + sizeof(TN) - 1);
		if (res == -2) {
			FUNC5("Non-existent time specified on -D %s", doption);
			return (0);			/* failure */
		} else if (res < 0) {
			FUNC5("Malformed time given on -D %s", doption);
			return (0);			/* failure */
		}
		return (1);			/* successfully parsed */

	}

	if (FUNC2(doption, "ats") == 0) {
		dbg_at_times++;
		return (1);			/* successfully parsed */
	}

	/* XXX - This check could probably be dropped. */
	if ((FUNC2(doption, "neworder") == 0) || (FUNC2(doption, "oldorder")
	    == 0)) {
		FUNC5("NOTE: newsyslog always uses 'neworder'.");
		return (1);			/* successfully parsed */
	}

	FUNC5("Unknown -D (debug) option: '%s'", doption);
	return (0);				/* failure */
}