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
struct winsize {int ws_row; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int VMSTAT_DEFAULT_LINES ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 
 int /*<<< orphan*/  stdout ; 
 int winlines ; 
 scalar_t__ wresized ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

void
FUNC3(void)
{
	struct winsize w;
	int status;

	for (;;) {
		status = FUNC1(FUNC0(stdout), TIOCGWINSZ, &w);
		if (status == -1 && errno == EINTR)
			continue;
		else if (status == -1)
			FUNC2(1, "ioctl");
		if (w.ws_row > 3)
			winlines = w.ws_row - 3;
		else
			winlines = VMSTAT_DEFAULT_LINES;
		break;
	}

	/*
	 * Inhibit doresize() calls until we are rescheduled by SIGWINCH.
	 */
	wresized = 0;
}