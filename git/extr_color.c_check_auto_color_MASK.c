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
 int color_stdout_is_tty ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ pager_use_color ; 

__attribute__((used)) static int FUNC3(int fd)
{
	static int color_stderr_is_tty = -1;
	int *is_tty_p = fd == 1 ? &color_stdout_is_tty : &color_stderr_is_tty;
	if (*is_tty_p < 0)
		*is_tty_p = FUNC1(fd);
	if (*is_tty_p || (fd == 1 && FUNC2() && pager_use_color)) {
		if (!FUNC0())
			return 1;
	}
	return 0;
}