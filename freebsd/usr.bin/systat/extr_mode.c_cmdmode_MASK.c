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
struct TYPE_2__ {int /*<<< orphan*/  (* c_reset ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CMDLINE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* curcmd ; 
 size_t currentmode ; 
 size_t display_ABS ; 
 size_t display_DELTA ; 
 size_t display_RATE ; 
 size_t display_SINCE ; 
 char const** modes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(const char *cmd, const char *args)
{
	if (FUNC2(cmd, "mode")) {
		if (args[0] == '\0') {
			FUNC1(CMDLINE, 0);
			FUNC0();
			FUNC3("%s", modes[currentmode]);
		} else if (FUNC2(args, "rate")) {
			currentmode = display_RATE;
		} else if (FUNC2(args, "delta")) {
			currentmode = display_DELTA;
		} else if (FUNC2(args, "since")) {
			currentmode = display_SINCE;
		} else if (FUNC2(args, "absolute")) {
			currentmode = display_ABS;
		} else {
			FUNC3("unknown mode `%s'", args);
		}
		return 1;
	}
	if(FUNC2(cmd, "reset")) {
		curcmd->c_reset();
		return 1;
	}
	return 0;
}