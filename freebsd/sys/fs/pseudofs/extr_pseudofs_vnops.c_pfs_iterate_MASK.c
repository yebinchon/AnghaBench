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
struct thread {int dummy; } ;
struct proc {int dummy; } ;
struct pfs_node {scalar_t__ pn_type; struct pfs_node* pn_next; struct pfs_node* pn_nodes; } ;

/* Variables and functions */
 struct proc* FUNC0 (int /*<<< orphan*/ *) ; 
 struct proc* FUNC1 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  SX_SLOCKED ; 
 int /*<<< orphan*/  allproc ; 
 int /*<<< orphan*/  allproc_lock ; 
 int /*<<< orphan*/  p_list ; 
 int /*<<< orphan*/  FUNC4 (struct pfs_node*) ; 
 int FUNC5 (struct thread*,struct pfs_node*,struct proc*) ; 
 scalar_t__ pfstype_procdir ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct thread *td, struct proc *proc, struct pfs_node *pd,
	    struct pfs_node **pn, struct proc **p)
{
	int visible;

	FUNC6(&allproc_lock, SX_SLOCKED);
	FUNC4(pd);
 again:
	if (*pn == NULL) {
		/* first node */
		*pn = pd->pn_nodes;
	} else if ((*pn)->pn_type != pfstype_procdir) {
		/* next node */
		*pn = (*pn)->pn_next;
	}
	if (*pn != NULL && (*pn)->pn_type == pfstype_procdir) {
		/* next process */
		if (*p == NULL)
			*p = FUNC0(&allproc);
		else
			*p = FUNC1(*p, p_list);
		/* out of processes: next node */
		if (*p == NULL)
			*pn = (*pn)->pn_next;
		else
			FUNC2(*p);
	}

	if ((*pn) == NULL)
		return (-1);

	if (*p != NULL) {
		visible = FUNC5(td, *pn, *p);
		FUNC3(*p);
	} else if (proc != NULL) {
		visible = FUNC5(td, *pn, proc);
	} else {
		visible = 1;
	}
	if (!visible)
		goto again;

	return (0);
}