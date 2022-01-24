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
 int /*<<< orphan*/  PVM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vm_domainset_lock ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  vm_severe_domains ; 
 int /*<<< orphan*/  vm_severe_waiters ; 

void
FUNC4(void)
{

	FUNC1(&vm_domainset_lock);
	while (FUNC3()) {
		vm_severe_waiters++;
		FUNC0(&vm_severe_domains, &vm_domainset_lock, PVM,
		    "vmwait", 0);
	}
	FUNC2(&vm_domainset_lock);
}