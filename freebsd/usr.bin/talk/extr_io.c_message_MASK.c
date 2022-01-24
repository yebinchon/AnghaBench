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
struct TYPE_2__ {int x_nlines; int /*<<< orphan*/  x_win; } ;

/* Variables and functions */
 int current_line ; 
 TYPE_1__ my_win ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(const char *string)
{
	FUNC0(my_win.x_win, current_line, 0);
	FUNC1(my_win.x_win, "[%s]\n", string);
	if (current_line < my_win.x_nlines - 1)
		current_line++;
	FUNC2(my_win.x_win);
}