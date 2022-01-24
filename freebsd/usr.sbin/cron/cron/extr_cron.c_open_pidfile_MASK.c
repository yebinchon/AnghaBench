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
typedef  int /*<<< orphan*/  pidfile ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  ERROR_EXIT ; 
 int MAX_FNAME ; 
 int MAX_TEMPSTR ; 
 int /*<<< orphan*/  PIDDIR ; 
 char* PIDFILE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * pfh ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,...) ; 
 char* FUNC5 (scalar_t__) ; 

__attribute__((used)) static void
FUNC6(void)
{
	char	pidfile[MAX_FNAME];
	char	buf[MAX_TEMPSTR];
	int	otherpid;

	(void) FUNC4(pidfile, sizeof(pidfile), PIDFILE, PIDDIR);
	pfh = FUNC3(pidfile, 0600, &otherpid);
	if (pfh == NULL) {
		if (errno == EEXIST) {
			FUNC4(buf, sizeof(buf),
			    "cron already running, pid: %d", otherpid);
		} else {
			FUNC4(buf, sizeof(buf),
			    "can't open or create %s: %s", pidfile,
			    FUNC5(errno));
		}
		FUNC2("CRON", FUNC1(), "DEATH", buf);
		FUNC0(ERROR_EXIT, "%s", buf);
	}
}