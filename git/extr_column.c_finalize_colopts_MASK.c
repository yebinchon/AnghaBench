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
 unsigned int COL_AUTO ; 
 unsigned int COL_ENABLED ; 
 unsigned int COL_ENABLE_MASK ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 

int FUNC2(unsigned int *colopts, int stdout_is_tty)
{
	if ((*colopts & COL_ENABLE_MASK) == COL_AUTO) {
		if (stdout_is_tty < 0)
			stdout_is_tty = FUNC0(1);
		*colopts &= ~COL_ENABLE_MASK;
		if (stdout_is_tty || FUNC1())
			*colopts |= COL_ENABLED;
	}
	return 0;
}