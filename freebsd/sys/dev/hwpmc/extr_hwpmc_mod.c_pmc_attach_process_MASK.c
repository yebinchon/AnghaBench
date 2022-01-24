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
struct proc {struct proc* p_pptr; int /*<<< orphan*/  p_children; int /*<<< orphan*/  p_comm; int /*<<< orphan*/  p_pid; } ;
struct pmc {int pm_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATT ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct proc* FUNC1 (int /*<<< orphan*/ *) ; 
 struct proc* FUNC2 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct pmc*,int /*<<< orphan*/ ,struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PMC_F_DESCENDANTS ; 
 int PMC_PP_ENABLE_MSR_ACCESS ; 
 int /*<<< orphan*/  FUNC4 (struct pmc*) ; 
 int /*<<< orphan*/  PRC ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  p_sibling ; 
 int FUNC5 (struct proc*,struct pmc*) ; 
 int /*<<< orphan*/  FUNC6 (struct proc*,struct pmc*) ; 
 int /*<<< orphan*/  pmc_sx ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct proc *p, struct pmc *pm)
{
	int error;
	struct proc *top;

	FUNC7(&pmc_sx, SX_XLOCKED);

	FUNC3(PRC,ATT,1, "attach pm=%p ri=%d proc=%p (%d, %s)", pm,
	    FUNC4(pm), p, p->p_pid, p->p_comm);


	/*
	 * If this PMC successfully allowed a GETMSR operation
	 * in the past, disallow further ATTACHes.
	 */

	if ((pm->pm_flags & PMC_PP_ENABLE_MSR_ACCESS) != 0)
		return EPERM;

	if ((pm->pm_flags & PMC_F_DESCENDANTS) == 0)
		return FUNC5(p, pm);

	/*
	 * Traverse all child processes, attaching them to
	 * this PMC.
	 */

	FUNC8(&proctree_lock);

	top = p;

	for (;;) {
		if ((error = FUNC5(p, pm)) != 0)
			break;
		if (!FUNC0(&p->p_children))
			p = FUNC1(&p->p_children);
		else for (;;) {
			if (p == top)
				goto done;
			if (FUNC2(p, p_sibling)) {
				p = FUNC2(p, p_sibling);
				break;
			}
			p = p->p_pptr;
		}
	}

	if (error)
		(void) FUNC6(top, pm);

 done:
	FUNC9(&proctree_lock);
	return error;
}