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
struct TYPE_2__ {int /*<<< orphan*/  pa_printfile; } ;

/* Variables and functions */
 TYPE_1__ args ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int pmcstat_displayheight ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(void)
{
	static int linecount = 0;

	/* check if we need to print a header line */
	if (++linecount > pmcstat_displayheight) {
		(void) FUNC0(args.pa_printfile, "\n");
		linecount = 1;
	}
	if (linecount == 1)
		FUNC2();
	(void) FUNC0(args.pa_printfile, "\n");

	FUNC1();

	return;
}