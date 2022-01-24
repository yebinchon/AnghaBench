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
struct pmclog_buffer {scalar_t__ plb_ptr; scalar_t__ plb_base; } ;
struct pmc_owner {struct pmclog_buffer** po_curbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  PMC_FN_DO_SAMPLES ; 
 int curcpu ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC2 (struct pmc_owner*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(struct pmc_owner *po)
{
	struct pmclog_buffer *plb;
	int cpu;

	FUNC3();
	cpu = curcpu;
	/* tell hardclock not to run again */
	if (FUNC1(cpu))
		FUNC0(curthread, PMC_FN_DO_SAMPLES, NULL);

	plb = po->po_curbuf[cpu];
	if (plb && plb->plb_ptr != plb->plb_base)
		FUNC2(po, 1);
	FUNC4();
}