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
struct setlist {int dummy; } ;
struct proc {int dummy; } ;
struct domainset {int dummy; } ;
struct domainlist {int dummy; } ;
struct cpuset {int dummy; } ;
typedef  int /*<<< orphan*/  lwpid_t ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_WHICH_TID ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct setlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct setlist*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cpuset*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct cpuset**,int /*<<< orphan*/ *,struct domainset*,struct setlist*,struct domainlist*) ; 
 struct cpuset* FUNC5 (struct thread*,struct cpuset*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct proc**,struct thread**,struct cpuset**) ; 
 int /*<<< orphan*/  FUNC7 (struct domainlist*) ; 
 int /*<<< orphan*/  FUNC8 (struct domainlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct thread*) ; 
 int /*<<< orphan*/  FUNC10 (struct thread*) ; 

__attribute__((used)) static int
FUNC11(lwpid_t id, cpuset_t *mask, struct domainset *domain)
{
	struct setlist cpusets;
	struct domainlist domainlist;
	struct cpuset *nset;
	struct cpuset *set;
	struct thread *td;
	struct proc *p;
	int error;

	FUNC2(&cpusets, 1);
	FUNC8(&domainlist, domain != NULL);
	error = FUNC6(CPU_WHICH_TID, id, &p, &td, &set);
	if (error)
		goto out;
	set = NULL;
	FUNC9(td);
	error = FUNC4(td->td_cpuset, &nset, mask, domain,
	    &cpusets, &domainlist);
	if (error == 0)
		set = FUNC5(td, nset);
	FUNC10(td);
	FUNC0(p);
	if (set)
		FUNC3(set);
out:
	FUNC1(&cpusets);
	FUNC7(&domainlist);
	return (error);
}