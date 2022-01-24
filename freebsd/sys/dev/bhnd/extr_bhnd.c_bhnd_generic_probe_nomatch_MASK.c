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
struct resource_list {int dummy; } ;
struct bhnd_nomatch {scalar_t__ device; scalar_t__ vendor; scalar_t__ if_verbose; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ BHND_COREID_INVALID ; 
 struct resource_list* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct bhnd_nomatch* bhnd_nomatch_table ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct resource_list*,char*,int /*<<< orphan*/ ,char*) ; 

void
FUNC10(device_t dev, device_t child)
{
	struct resource_list		*rl;
	const struct bhnd_nomatch	*nm;
	bool				 report;

	/* Fetch reporting configuration for this device */
	report = true;
	for (nm = bhnd_nomatch_table; nm->device != BHND_COREID_INVALID; nm++) {
		if (nm->vendor != FUNC5(child))
			continue;

		if (nm->device != FUNC2(child))
			continue;

		report = false;
		if (bootverbose && nm->if_verbose)
			report = true;
		break;
	}
	
	if (!report)
		return;

	/* Print the non-matched device info */
	FUNC7(dev, "<%s %s, rev %hhu>", FUNC6(child),
		FUNC3(child), FUNC4(child));

	rl = FUNC0(dev, child);
	if (rl != NULL) {
		FUNC9(rl, "mem", SYS_RES_MEMORY, "%#jx");
		FUNC9(rl, "irq", SYS_RES_IRQ, "%#jd");
	}

	FUNC8(" at core %u (no driver attached)\n",
	    FUNC1(child));
}