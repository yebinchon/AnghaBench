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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(void)
{
	char buf[32];

	FUNC2("\nEnter integer value>");

	if (FUNC1(buf, sizeof(buf), stdin) == NULL)
		FUNC0(1, "Cannot read input");

	if (FUNC3(buf, "x\n") == 0)
		return (-1);
	if (FUNC3(buf, "r\n") == 0)
		return (-2);

	return ((int)FUNC4(buf, 0, 0));
}