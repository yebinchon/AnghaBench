#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ucred {scalar_t__ cr_uid; scalar_t__ cr_svuid; scalar_t__ cr_ruid; int cr_ngroups; int /*<<< orphan*/  cr_svgid; int /*<<< orphan*/  cr_rgid; int /*<<< orphan*/ * cr_groups; } ;
struct proc {struct ucred* p_ucred; } ;
struct pmc {TYPE_1__* pm_owner; } ;
struct TYPE_2__ {struct proc* po_owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC3 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ucred*) ; 

__attribute__((used)) static int
FUNC5(struct pmc *pm, struct proc *t)
{
	struct proc *o;		/* pmc owner */
	struct ucred *oc, *tc;	/* owner, target credentials */
	int decline_attach, i;

	/*
	 * A PMC's owner can always attach that PMC to itself.
	 */

	if ((o = pm->pm_owner->po_owner) == t)
		return 0;

	FUNC0(o);
	oc = o->p_ucred;
	FUNC3(oc);
	FUNC1(o);

	FUNC0(t);
	tc = t->p_ucred;
	FUNC3(tc);
	FUNC1(t);

	/*
	 * The effective uid of the PMC owner should match at least one
	 * of the {effective,real,saved} uids of the target process.
	 */

	decline_attach = oc->cr_uid != tc->cr_uid &&
	    oc->cr_uid != tc->cr_svuid &&
	    oc->cr_uid != tc->cr_ruid;

	/*
	 * Every one of the target's group ids, must be in the owner's
	 * group list.
	 */
	for (i = 0; !decline_attach && i < tc->cr_ngroups; i++)
		decline_attach = !FUNC4(tc->cr_groups[i], oc);

	/* check the read and saved gids too */
	if (decline_attach == 0)
		decline_attach = !FUNC4(tc->cr_rgid, oc) ||
		    !FUNC4(tc->cr_svgid, oc);

	FUNC2(tc);
	FUNC2(oc);

	return !decline_attach;
}