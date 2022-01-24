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
struct pmc_owner {int /*<<< orphan*/ * po_kthread; int /*<<< orphan*/  po_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMC_PO_OWNS_LOGFILE ; 
 int /*<<< orphan*/  PPAUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmc_kthread_mtx ; 
 int /*<<< orphan*/  FUNC6 (struct pmc_owner*) ; 

__attribute__((used)) static void
FUNC7(struct pmc_owner *po)
{

	FUNC4(&pmc_kthread_mtx);
	po->po_flags &= ~PMC_PO_OWNS_LOGFILE;
	if (po->po_kthread != NULL) {
		FUNC0(po->po_kthread);
		FUNC2(po->po_kthread, SIGHUP);
		FUNC1(po->po_kthread);
	}
	FUNC6(po);
	while (po->po_kthread)
		FUNC3(po->po_kthread, &pmc_kthread_mtx, PPAUSE, "pmckstp", 0);
	FUNC5(&pmc_kthread_mtx);
}