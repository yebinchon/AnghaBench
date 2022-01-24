#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  x_win; scalar_t__ x_nlines; } ;

/* Variables and functions */
 scalar_t__ curses_initialized ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ his_win ; 
 scalar_t__ invitation_waiting ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(void)
{

	if (curses_initialized) {
		FUNC4(his_win.x_win, his_win.x_nlines-1, 0);
		FUNC3(his_win.x_win);
		FUNC5(his_win.x_win);
		FUNC0();
	}
	if (invitation_waiting)
		FUNC2();
	FUNC1(0);
}