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
struct pmcpl_ct_sample {unsigned int npmcs; int /*<<< orphan*/ * sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  PMCPL_CT_GROWSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int pmcstat_npmcs ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned int,int) ; 

__attribute__((used)) static void
FUNC4(struct pmcpl_ct_sample *samples)
{
	unsigned int npmcs;

	/* Enough storage. */
	if (pmcstat_npmcs <= samples->npmcs)
                return;

	npmcs = samples->npmcs +
	    FUNC2(pmcstat_npmcs - samples->npmcs, PMCPL_CT_GROWSIZE);
	samples->sb = FUNC3(samples->sb, npmcs, sizeof(unsigned));
	if (samples->sb == NULL)
		FUNC1(EX_SOFTWARE, "ERROR: out of memory");
	FUNC0((char *)samples->sb + samples->npmcs * sizeof(unsigned),
	    (npmcs - samples->npmcs) * sizeof(unsigned));
	samples->npmcs = npmcs;
}