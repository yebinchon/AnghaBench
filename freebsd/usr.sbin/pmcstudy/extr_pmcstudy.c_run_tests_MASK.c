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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int valid_pmc_cnt ; 
 char** valid_pmcs ; 

__attribute__((used)) static void
FUNC3(void)
{
	int i, lenout;
	FUNC1("Running tests on %d PMC's this may take some time\n", valid_pmc_cnt);
	FUNC1("------------------------------------------------------------------------\n");
	for(i=0; i<valid_pmc_cnt; i++) {
		lenout = FUNC1("%s", valid_pmcs[i]);
		FUNC0(stdout);
		FUNC2(valid_pmcs[i], lenout);
	}
}