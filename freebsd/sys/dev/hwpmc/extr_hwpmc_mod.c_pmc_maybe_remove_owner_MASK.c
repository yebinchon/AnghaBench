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
struct pmc_owner {int po_flags; int /*<<< orphan*/  po_pmcs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OMR ; 
 int /*<<< orphan*/  OWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct pmc_owner*) ; 
 int PMC_PO_OWNS_LOGFILE ; 
 int /*<<< orphan*/  FUNC2 (struct pmc_owner*) ; 
 int /*<<< orphan*/  FUNC3 (struct pmc_owner*) ; 

__attribute__((used)) static void
FUNC4(struct pmc_owner *po)
{

	FUNC1(OWN,OMR,1, "maybe-remove-owner po=%p", po);

	/*
	 * Remove owner record if
	 * - this process does not own any PMCs
	 * - this process has not allocated a system-wide sampling buffer
	 */

	if (FUNC0(&po->po_pmcs) &&
	    ((po->po_flags & PMC_PO_OWNS_LOGFILE) == 0)) {
		FUNC3(po);
		FUNC2(po);
	}
}