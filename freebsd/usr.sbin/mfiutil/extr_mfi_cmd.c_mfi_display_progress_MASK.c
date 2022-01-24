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
typedef  int uint32_t ;
typedef  int uint ;
struct mfi_progress {int progress; int elapsed_seconds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2(const char *label, struct mfi_progress *prog)
{
	uint seconds;

	FUNC1("%s: %.2f%% complete after ", label,
	    (float)prog->progress * 100 / 0xffff);
	FUNC0(prog->elapsed_seconds);
	if (prog->progress != 0 && prog->elapsed_seconds > 10) {
		FUNC1(" finished in ");
		seconds = (0x10000 * (uint32_t)prog->elapsed_seconds) /
		    prog->progress - prog->elapsed_seconds;
		FUNC0(seconds);
	}
	FUNC1("\n");
}