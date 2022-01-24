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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5(void)
{
	int c;

	for (;;) {
		c = FUNC1();
		if (c == EOF)
			return;
		if (c != 'e') {
			FUNC4(c);
			continue;
		}
		if (FUNC2("error(")) {
			FUNC3("error(");
			c = FUNC1();
			if (c != '"')
				FUNC4(c);
			else
				FUNC0();
		}
	}
}