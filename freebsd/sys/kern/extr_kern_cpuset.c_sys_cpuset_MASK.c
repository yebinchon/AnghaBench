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
struct thread {int /*<<< orphan*/  td_cpuset; } ;
struct cpuset_args {int /*<<< orphan*/  setid; } ;
struct cpuset {int /*<<< orphan*/  cs_id; int /*<<< orphan*/  cs_mask; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct cpuset**,struct cpuset*,int /*<<< orphan*/ *) ; 
 struct cpuset* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cpuset*) ; 
 int FUNC4 (int,struct cpuset*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 

int
FUNC7(struct thread *td, struct cpuset_args *uap)
{
	struct cpuset *root;
	struct cpuset *set;
	int error;

	FUNC5(td);
	root = FUNC2(td->td_cpuset);
	FUNC6(td);
	error = FUNC1(&set, root, &root->cs_mask);
	FUNC3(root);
	if (error)
		return (error);
	error = FUNC0(&set->cs_id, uap->setid, sizeof(set->cs_id));
	if (error == 0)
		error = FUNC4(-1, set, NULL, NULL);
	FUNC3(set);
	return (error);
}