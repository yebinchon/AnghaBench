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
 int PMCSTAT_NHASH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmcpl_ct_callid ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * pmcpl_ct_node_hash ; 
 int /*<<< orphan*/  pmcpl_ct_root ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(void)
{
	int i;

	pmcpl_ct_root = FUNC1();

	for (i = 0; i < PMCSTAT_NHASH; i++)
		FUNC0(&pmcpl_ct_node_hash[i]);

	FUNC2(&pmcpl_ct_callid);

	return (0);
}