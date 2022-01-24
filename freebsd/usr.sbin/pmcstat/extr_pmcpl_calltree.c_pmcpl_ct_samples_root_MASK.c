#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pmcpl_ct_sample {int /*<<< orphan*/ * sb; } ;
struct TYPE_4__ {int pct_narc; TYPE_1__* pct_arc; } ;
struct TYPE_3__ {int /*<<< orphan*/  pcta_samples; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 TYPE_2__* pmcpl_ct_root ; 
 int /*<<< orphan*/  FUNC1 (struct pmcpl_ct_sample*) ; 
 int /*<<< orphan*/  FUNC2 (struct pmcpl_ct_sample*) ; 
 int pmcstat_npmcs ; 

__attribute__((used)) static void
FUNC3(struct pmcpl_ct_sample *samples)
{
	int i, pmcin;

	FUNC2(samples);
	FUNC1(samples);

	for (i = 0; i < pmcpl_ct_root->pct_narc; i++)
		for (pmcin = 0; pmcin < pmcstat_npmcs; pmcin++)
			samples->sb[pmcin] += FUNC0(pmcin,
			    &pmcpl_ct_root->pct_arc[i].pcta_samples);
}