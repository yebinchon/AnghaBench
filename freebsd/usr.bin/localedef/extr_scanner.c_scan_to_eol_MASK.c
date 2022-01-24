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
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 

void
FUNC3(void)
{
	int	c;
	while ((c = FUNC2()) != '\n') {
		if (c == EOF) {
			/* end of file without newline! */
			FUNC1("missing newline");
			return;
		}
	}
	FUNC0(c == '\n');
}