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
struct cpuset {int cs_flags; int /*<<< orphan*/  cs_mask; } ;
typedef  int /*<<< orphan*/  cpuset_t ;
struct TYPE_3__ {int /*<<< orphan*/  td_ucred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int CPU_SET_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  PRIV_SCHED_CPUSET ; 
 struct cpuset* FUNC2 (struct cpuset*) ; 
 int /*<<< orphan*/  cpuset_lock ; 
 int FUNC3 (struct cpuset*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cpuset*,int /*<<< orphan*/ *) ; 
 TYPE_1__* curthread ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct cpuset *set, cpuset_t *mask)
{
	struct cpuset *root;
	int error;

	error = FUNC8(curthread, PRIV_SCHED_CPUSET);
	if (error)
		return (error);
	/*
	 * In case we are called from within the jail
	 * we do not allow modifying the dedicated root
	 * cpuset of the jail but may still allow to
	 * change child sets.
	 */
	if (FUNC5(curthread->td_ucred) &&
	    set->cs_flags & CPU_SET_ROOT)
		return (EPERM);
	/*
	 * Verify that we have access to this set of
	 * cpus.
	 */
	root = FUNC2(set);
	FUNC6(&cpuset_lock);
	if (root && !FUNC1(&root->cs_mask, mask)) {
		error = EINVAL;
		goto out;
	}
	error = FUNC3(set, mask, 0);
	if (error)
		goto out;
	FUNC0(mask, &set->cs_mask);
	FUNC4(set, mask);
out:
	FUNC7(&cpuset_lock);

	return (error);
}