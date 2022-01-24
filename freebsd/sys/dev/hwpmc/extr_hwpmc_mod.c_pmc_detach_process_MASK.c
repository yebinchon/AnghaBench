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
struct pmc {int pm_flags; int /*<<< orphan*/  pm_targets; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct proc* FUNC1 (int /*<<< orphan*/ *) ; 
 struct proc* FUNC2 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct pmc*,int /*<<< orphan*/ ,struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PMC_FLAG_REMOVE ; 
 int PMC_F_ATTACH_DONE ; 
 int PMC_F_DESCENDANTS ; 
 int /*<<< orphan*/  FUNC4 (struct pmc*) ; 
 int /*<<< orphan*/  PRC ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  p_sibling ; 
 int FUNC5 (struct proc*,struct pmc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pmc_sx ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct proc *p, struct pmc *pm)
{
	struct proc *top;

	FUNC6(&pmc_sx, SX_XLOCKED);

	FUNC3(PRC,ATT,1, "detach pm=%p ri=%d proc=%p (%d, %s)", pm,
	    FUNC4(pm), p, p->p_pid, p->p_comm);

	if ((pm->pm_flags & PMC_F_DESCENDANTS) == 0)
		return FUNC5(p, pm, PMC_FLAG_REMOVE);

	/*
	 * Traverse all children, detaching them from this PMC.  We
	 * ignore errors since we could be detaching a PMC from a
	 * partially attached proc tree.
	 */

	FUNC7(&proctree_lock);

	top = p;

	for (;;) {
		(void) FUNC5(p, pm, PMC_FLAG_REMOVE);

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

 done:
	FUNC8(&proctree_lock);

	if (FUNC0(&pm->pm_targets))
		pm->pm_flags &= ~PMC_F_ATTACH_DONE;

	return 0;
}