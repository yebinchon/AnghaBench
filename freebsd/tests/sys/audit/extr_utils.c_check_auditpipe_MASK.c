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
struct timespec {scalar_t__ tv_sec; int /*<<< orphan*/  tv_nsec; } ;
struct pollfd {int revents; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int POLLIN ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pollfd*,int,struct timespec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct pollfd fd[], const char *auditregex, FILE *pipestream)
{
	struct timespec currtime, endtime, timeout;

	/* Set the expire time for poll(2) while waiting for syscall audit */
	FUNC0(0, FUNC2(CLOCK_MONOTONIC, &endtime));
	endtime.tv_sec += 10;
	timeout.tv_nsec = endtime.tv_nsec;

	for (;;) {
		/* Update the time left for auditpipe to return any event */
		FUNC0(0, FUNC2(CLOCK_MONOTONIC, &currtime));
		timeout.tv_sec = endtime.tv_sec - currtime.tv_sec;

		switch (FUNC4(fd, 1, &timeout, NULL)) {
		/* ppoll(2) returns, check if it's what we want */
		case 1:
			if (fd[0].revents & POLLIN) {
				if (FUNC3(auditregex, pipestream))
					return;
			} else {
				FUNC1("Auditpipe returned an "
				"unknown event %#x", fd[0].revents);
			}
			break;

		/* poll(2) timed out */
		case 0:
			FUNC1("%s not found in auditpipe within the "
					"time limit", auditregex);
			break;

		/* poll(2) standard error */
		case -1:
			FUNC1("Poll: %s", FUNC5(errno));
			break;

		default:
			FUNC1("Poll returned too many file descriptors");
		}
	}
}