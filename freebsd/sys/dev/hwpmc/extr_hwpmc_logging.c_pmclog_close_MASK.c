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
struct pmc_owner {int /*<<< orphan*/  po_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct pmc_owner*) ; 
 int /*<<< orphan*/  PMC_PO_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmc_kthread_mtx ; 
 int /*<<< orphan*/  FUNC4 (struct pmc_owner*) ; 
 int /*<<< orphan*/  FUNC5 (struct pmc_owner*) ; 
 int /*<<< orphan*/  FUNC6 (struct pmc_owner*) ; 

int
FUNC7(struct pmc_owner *po)
{

	FUNC1(LOG,CLO,1, "po=%p", po);

	FUNC4(po);

	FUNC2(&pmc_kthread_mtx);
	/*
	 * Initiate shutdown: no new data queued,
	 * thread will close file on last block.
	 */
	po->po_flags |= PMC_PO_SHUTDOWN;
	/* give time for all to see */
	FUNC0(50);
	
	/*
	 * Schedule the current buffer.
	 */
	FUNC5(po);
	FUNC6(po);

	FUNC3(&pmc_kthread_mtx);

	return (0);
}