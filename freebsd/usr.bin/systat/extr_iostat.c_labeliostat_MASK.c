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
 int /*<<< orphan*/  INSET ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ numbers ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wnd ; 

void
FUNC5(void)
{
	int row;

	row = 0;
	FUNC4(wnd, row, 0); FUNC3(wnd);
	FUNC1(wnd, row++, INSET,
	    "/0%  /10  /20  /30  /40  /50  /60  /70  /80  /90  /100");
	FUNC1(wnd, row++, 0, "cpu  user|");
	FUNC1(wnd, row++, 0, "     nice|");
	FUNC1(wnd, row++, 0, "   system|");
	FUNC1(wnd, row++, 0, "interrupt|");
	FUNC1(wnd, row++, 0, "     idle|");
	if (numbers)
		row = FUNC2(row + 1);
	else
		row = FUNC0(row + 1);
}