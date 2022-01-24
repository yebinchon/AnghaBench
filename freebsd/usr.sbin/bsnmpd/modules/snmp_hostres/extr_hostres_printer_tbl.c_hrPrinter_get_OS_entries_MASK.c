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
struct printer {char* printer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int FUNC1 (struct printer*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct printer*) ; 
 int /*<<< orphan*/  FUNC3 (struct printer*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct printer*,int*) ; 
 int /*<<< orphan*/  printer_tick ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  this_tick ; 

__attribute__((used)) static void
FUNC7(void)
{
	int  status, more;
	struct printer myprinter, *pp = &myprinter;

	FUNC3(pp);
	FUNC0("---->Getting printers .....");
	more = FUNC1(pp, &status);
	if (status)
		goto errloop;

	while (more) {
		do {
			FUNC0("---->Got printer %s", pp->printer);

			FUNC2(pp);
			more = FUNC5(pp, &status);
errloop:
			if (status)
				FUNC6(LOG_WARNING,
				    "hrPrinterTable: printcap entry for %s "
				    "has errors, skipping",
				    pp->printer ? pp->printer : "<noname?>");
		} while (more && status);
	}

	FUNC4();
	printer_tick = this_tick;
}