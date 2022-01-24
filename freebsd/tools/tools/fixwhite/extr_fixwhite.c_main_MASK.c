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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 

int
FUNC5(void)
{
	int c;
	bool leading = true;

	while ((c = FUNC2()) != EOF) {
		if (FUNC0(c))
			/* Save whitespace. */
			FUNC3(c, leading);
		else {
			/* Reprint whitespace and print regular character. */
			FUNC1();
			FUNC4(c);
			leading = false;
		}
	}
	/* Terminate non-empty files with a newline. */
	if (!leading)
		FUNC4('\n');
	return (0);
}