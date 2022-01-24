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
 int SSIZE ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC2(char *bp)
{
	int i;
	char *cp = bp;

	for (i = 0; i < SSIZE; i++) {
		if (FUNC1(STDIN_FILENO, cp+i, 1) != 1)
			FUNC0(0);
		if (cp[i] == '\n')
			break;
	}
	cp[i] = '\0';
}