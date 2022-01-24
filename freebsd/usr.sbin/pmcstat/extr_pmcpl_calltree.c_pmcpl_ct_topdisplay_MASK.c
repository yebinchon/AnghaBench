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
struct pmcpl_ct_sample {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pmcpl_ct_sample*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pmcpl_ct_sample*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  pmcpl_ct_root ; 
 int /*<<< orphan*/  FUNC4 (struct pmcpl_ct_sample*) ; 
 int /*<<< orphan*/  FUNC5 (struct pmcpl_ct_sample*) ; 
 int /*<<< orphan*/ *** pmcpl_ct_topscreen ; 
 scalar_t__ pmcstat_displayheight ; 
 int /*<<< orphan*/  pmcstat_pmcinfilter ; 

void
FUNC6(void)
{
	int y;
	struct pmcpl_ct_sample r, *rsamples;

	rsamples = &r;
	FUNC5(rsamples);
	FUNC1();

	FUNC0("%5.5s %s\n", "%SAMP", "CALLTREE");

	y = 0;
	if (FUNC2(pmcstat_pmcinfilter,
	    pmcpl_ct_root, rsamples, 0, &y))
		FUNC0("...\n");
	pmcpl_ct_topscreen[1][y] = NULL;

	FUNC3(rsamples,
	    pmcstat_pmcinfilter, pmcstat_displayheight - 2);

	FUNC4(rsamples);
}