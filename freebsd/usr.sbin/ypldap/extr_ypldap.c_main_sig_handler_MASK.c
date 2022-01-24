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
#define  SIGCHLD 131 
#define  SIGHUP 130 
#define  SIGINT 129 
#define  SIGTERM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  client_pid ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(int sig, short event, void *p)
{
	int		 die = 0;

	switch (sig) {
	case SIGTERM:
	case SIGINT:
		die = 1;
		/* FALLTHROUGH */
	case SIGCHLD:
		if (FUNC0(client_pid, "ldap client")) {
			client_pid = 0;
			die = 1;
		}
		if (die)
			FUNC2();
		break;
	case SIGHUP:
		/* reconfigure */
		break;
	default:
		FUNC1("unexpected signal");
	}
}