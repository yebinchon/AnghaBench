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
 int IOSTAT_DEFAULT_ROWS ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ wresized ; 
 int wrows ; 

void
FUNC3(void)
{
	int status;
	struct winsize w;

	for (;;) {
		status = FUNC2(FUNC1(stdout), TIOCGWINSZ, &w);
		if (status == -1 && errno == EINTR)
			continue;
		else if (status == -1)
			FUNC0(1, "ioctl");
		if (w.ws_row > 3)
			wrows = w.ws_row - 3;
		else
			wrows = IOSTAT_DEFAULT_ROWS;
		break;
	}

	/*
	 * Inhibit doresize() calls until we are rescheduled by SIGWINCH.
	 */
	wresized = 0;
}