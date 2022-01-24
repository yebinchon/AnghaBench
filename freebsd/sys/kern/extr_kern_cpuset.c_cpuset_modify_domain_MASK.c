#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct domainset {scalar_t__ ds_policy; int /*<<< orphan*/  ds_mask; } ;
struct domainlist {int dummy; } ;
struct cpuset {int cs_flags; struct domainset* cs_domain; } ;
struct TYPE_3__ {int /*<<< orphan*/  td_ucred; } ;

/* Variables and functions */
 int CPU_SET_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ DOMAINSET_POLICY_PREFER ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  PRIV_SCHED_CPUSET ; 
 struct cpuset* FUNC1 (struct cpuset*) ; 
 int /*<<< orphan*/  cpuset_lock ; 
 int FUNC2 (struct cpuset*,struct domainset*,struct domainset*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cpuset*,struct domainset*,struct domainset*,struct domainlist*) ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC4 (struct domainset*,struct domainset*) ; 
 struct domainset* FUNC5 (struct domainset*) ; 
 int /*<<< orphan*/  FUNC6 (struct domainlist*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct domainlist*) ; 
 int /*<<< orphan*/  FUNC8 (struct domainlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct domainset*,struct domainset*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct cpuset *set, struct domainset *domain)
{
	struct domainlist domains;
	struct domainset temp;
	struct domainset *dset;
	struct cpuset *root;
	int ndomains, needed;
	int error;

	error = FUNC14(curthread, PRIV_SCHED_CPUSET);
	if (error)
		return (error);
	/*
	 * In case we are called from within the jail
	 * we do not allow modifying the dedicated root
	 * cpuset of the jail but may still allow to
	 * change child sets.
	 */
	if (FUNC11(curthread->td_ucred) &&
	    set->cs_flags & CPU_SET_ROOT)
		return (EPERM);
	FUNC8(&domains, 0);
	domain = FUNC5(domain);
	ndomains = needed = 0;
	do {
		if (ndomains < needed) {
			FUNC6(&domains, needed - ndomains);
			ndomains = needed;
		}
		root = FUNC1(set);
		FUNC12(&cpuset_lock);
		dset = root->cs_domain;
		/*
		 * Verify that we have access to this set of domains.
		 */
		if (!FUNC10(dset, domain)) {
			error = EINVAL;
			goto out;
		}
		/*
		 * If applying prefer we keep the current set as the fallback.
		 */
		if (domain->ds_policy == DOMAINSET_POLICY_PREFER)
			FUNC0(&set->cs_domain->ds_mask,
			    &domain->ds_mask);
		/*
		 * Determine whether we can apply this set of domains and
		 * how many new domain structures it will require.
		 */
		FUNC4(domain, &temp);
		needed = 0;
		error = FUNC2(set, &temp, set->cs_domain,
		    &needed, 0);
		if (error)
			goto out;
	} while (ndomains < needed);
	dset = set->cs_domain;
	FUNC3(set, domain, dset, &domains);
out:
	FUNC13(&cpuset_lock);
	FUNC7(&domains);
	if (error == 0)
		FUNC9();

	return (error);
}