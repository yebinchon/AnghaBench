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
struct pmcpl_ct_sample {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {int /*<<< orphan*/  pa_graphfile; } ;

/* Variables and functions */
 int FUNC0 (int,struct pmcpl_ct_sample*) ; 
 TYPE_1__ args ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  pmcpl_ct_root ; 
 int /*<<< orphan*/  FUNC5 (struct pmcpl_ct_sample*) ; 
 int /*<<< orphan*/  FUNC6 (struct pmcpl_ct_sample*) ; 
 int pmcstat_npmcs ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,int) ; 

__attribute__((used)) static void
FUNC9(void)
{
	int i;
	char name[40];
	struct pmcpl_ct_sample rsamples;

	FUNC6(&rsamples);
	FUNC3();

	FUNC1(args.pa_graphfile,
		"version: 1\n"
		"creator: pmcstat\n"
		"positions: instr line\n"
		"events:");
	for (i=0; i<pmcstat_npmcs; i++) {
		FUNC8(name, sizeof(name), "%s_%d",
		    FUNC7(i), i);
		FUNC4(name);
		FUNC1(args.pa_graphfile, " %s", name);
	}
	FUNC1(args.pa_graphfile, "\nsummary:");
	for (i=0; i<pmcstat_npmcs ; i++)
		FUNC1(args.pa_graphfile, " %u",
		    FUNC0(i, &rsamples));
	FUNC1(args.pa_graphfile, "\n");
	FUNC2(pmcpl_ct_root);
	FUNC5(&rsamples);
}