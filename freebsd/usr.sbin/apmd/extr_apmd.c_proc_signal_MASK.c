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
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
#define  SIGCHLD 130 
#define  SIGHUP 129 
#define  SIGTERM 128 
 int FUNC0 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int
FUNC5(int fd)
{
	int rc = 0;
	int sig;

	while (FUNC0(fd, &sig, sizeof sig) == sizeof sig) {
		FUNC2(LOG_INFO, "caught signal: %d", sig);
		switch (sig) {
		case SIGHUP:
			FUNC2(LOG_NOTICE, "restart by SIG");
			FUNC1();
			break;
		case SIGTERM:
			FUNC2(LOG_NOTICE, "going down on signal %d", sig);
			rc = -1;
			return rc;
		case SIGCHLD:
			FUNC3();
			break;
		default:
			FUNC4("unexpected signal(%d) received.", sig);
			break;
		}
	}
	return rc;
}