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
struct proc {int p_treeflag; } ;

/* Variables and functions */
 struct proc* FUNC0 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int /*<<< orphan*/ ) ; 
 int P_TREE_FIRST_ORPHAN ; 
 int P_TREE_ORPHANED ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  p_orphan ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(struct proc *p)
{
	struct proc *p1;

	FUNC2(&proctree_lock, SA_XLOCKED);
	if ((p->p_treeflag & P_TREE_ORPHANED) == 0)
		return;
	if ((p->p_treeflag & P_TREE_FIRST_ORPHAN) != 0) {
		p1 = FUNC0(p, p_orphan);
		if (p1 != NULL)
			p1->p_treeflag |= P_TREE_FIRST_ORPHAN;
		p->p_treeflag &= ~P_TREE_FIRST_ORPHAN;
	}
	FUNC1(p, p_orphan);
	p->p_treeflag &= ~P_TREE_ORPHANED;
}