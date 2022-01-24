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
typedef  int /*<<< orphan*/  domainset_t ;

/* Variables and functions */
 int PDROP ; 
 int PVM ; 
 scalar_t__ curproc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ pageproc ; 
 int /*<<< orphan*/  vm_domainset_lock ; 
 int /*<<< orphan*/  vm_min_domains ; 
 int /*<<< orphan*/  vm_min_waiters ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  vm_pageproc_waiters ; 

void
FUNC4(const domainset_t *wdoms)
{

	/*
	 * We use racey wakeup synchronization to avoid expensive global
	 * locking for the pageproc when sleeping with a non-specific vm_wait.
	 * To handle this, we only sleep for one tick in this instance.  It
	 * is expected that most allocations for the pageproc will come from
	 * kmem or vm_page_grab* which will use the more specific and
	 * race-free vm_wait_domain().
	 */
	if (curproc == pageproc) {
		FUNC1(&vm_domainset_lock);
		vm_pageproc_waiters++;
		FUNC0(&vm_pageproc_waiters, &vm_domainset_lock, PVM | PDROP,
		    "pageprocwait", 1);
	} else {
		/*
		 * XXX Ideally we would wait only until the allocation could
		 * be satisfied.  This condition can cause new allocators to
		 * consume all freed pages while old allocators wait.
		 */
		FUNC1(&vm_domainset_lock);
		if (FUNC3(wdoms)) {
			vm_min_waiters++;
			FUNC0(&vm_min_domains, &vm_domainset_lock,
			    PVM | PDROP, "vmwait", 0);
		} else
			FUNC2(&vm_domainset_lock);
	}
}