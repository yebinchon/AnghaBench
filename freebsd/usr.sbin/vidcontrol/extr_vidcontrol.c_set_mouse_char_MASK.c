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
struct TYPE_2__ {int mouse_char; } ;
struct mouse_info {TYPE_1__ u; int /*<<< orphan*/  operation; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONS_MOUSECTL ; 
 int /*<<< orphan*/  MOUSE_MOUSECHAR ; 
 int UCHAR_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mouse_info*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 long FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static void
FUNC5(char *arg)
{
	struct mouse_info mouse;
	long l;

	l = FUNC3(arg, NULL, 0);

	if ((l < 0) || (l > UCHAR_MAX - 3)) {
		FUNC2();
		FUNC4("argument to -M must be 0 through %d", UCHAR_MAX - 3);
		return;
	}

	mouse.operation = MOUSE_MOUSECHAR;
	mouse.u.mouse_char = (int)l;

	if (FUNC1(0, CONS_MOUSECTL, &mouse) == -1) {
		FUNC2();
		FUNC0(1, "setting mouse character");
	}
}