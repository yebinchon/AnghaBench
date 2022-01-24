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
struct domainset {int ds_prefer; void* ds_policy; int /*<<< orphan*/  ds_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* DOMAINSET_POLICY_PREFER ; 
 void* DOMAINSET_POLICY_ROUNDROBIN ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct domainset*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  all_domains ; 
 struct domainset* domainset_fixed ; 
 struct domainset* domainset_prefer ; 
 struct domainset domainset_roundrobin ; 
 int vm_ndomains ; 

void
FUNC4(void)
{
	struct domainset *dset;
	int i;

	dset = &domainset_roundrobin;
	FUNC0(&all_domains, &dset->ds_mask);
	dset->ds_policy = DOMAINSET_POLICY_ROUNDROBIN;
	dset->ds_prefer = -1;
	FUNC3(dset, NULL);

	for (i = 0; i < vm_ndomains; i++) {
		dset = &domainset_fixed[i];
		FUNC2(&dset->ds_mask);
		FUNC1(i, &dset->ds_mask);
		dset->ds_policy = DOMAINSET_POLICY_ROUNDROBIN;
		FUNC3(dset, NULL);

		dset = &domainset_prefer[i];
		FUNC0(&all_domains, &dset->ds_mask);
		dset->ds_policy = DOMAINSET_POLICY_PREFER;
		dset->ds_prefer = i;
		FUNC3(dset, NULL);
	}
}