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
 int FUNC0 (char*,...) ; 
 int valid_pmc_cnt ; 
 char** valid_pmcs ; 

__attribute__((used)) static void
FUNC1(void)
{
	int i, cnt, j;
	FUNC0("PMC                                               Abbreviation\n");
	FUNC0("--------------------------------------------------------------\n");
	for(i=0; i<valid_pmc_cnt; i++) {
		cnt = FUNC0("%s", valid_pmcs[i]);
		for(j=cnt; j<52; j++) {
			FUNC0(" ");
		}
		FUNC0("%%%d\n", i);
	}
}