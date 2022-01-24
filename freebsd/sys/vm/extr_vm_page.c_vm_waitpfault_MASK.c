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
struct domainset {int /*<<< orphan*/  ds_mask; } ;

/* Variables and functions */
 int PDROP ; 
 int PUSER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vm_domainset_lock ; 
 int /*<<< orphan*/  vm_min_domains ; 
 int /*<<< orphan*/  vm_min_waiters ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct domainset *dset, int timo)
{

	/*
	 * XXX Ideally we would wait only until the allocation could
	 * be satisfied.  This condition can cause new allocators to
	 * consume all freed pages while old allocators wait.
	 */
	FUNC1(&vm_domainset_lock);
	if (FUNC3(&dset->ds_mask)) {
		vm_min_waiters++;
		FUNC0(&vm_min_domains, &vm_domainset_lock, PUSER | PDROP,
		    "pfault", timo);
	} else
		FUNC2(&vm_domainset_lock);
}