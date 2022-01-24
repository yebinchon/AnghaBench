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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC3 (char*) ; 

void
FUNC4(char *ptr, int size)
{
	FUNC2("\nEnter string>");

	if (FUNC1(ptr, size, stdin) == NULL)
		FUNC0(1, "Cannot read input");

	ptr[size - 1] = 0;

	size = FUNC3(ptr);

	/* strip trailing newline, if any */
	if (size == 0)
		return;
	else if (ptr[size - 1] == '\n')
		ptr[size - 1] = 0;
}