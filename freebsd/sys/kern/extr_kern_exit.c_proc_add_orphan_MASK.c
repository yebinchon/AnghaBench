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
struct proc {int p_flag; int /*<<< orphan*/  p_treeflag; int /*<<< orphan*/  p_orphans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct proc*,int /*<<< orphan*/ ) ; 
 int P_TRACED ; 
 int /*<<< orphan*/  P_TREE_FIRST_ORPHAN ; 
 int /*<<< orphan*/  P_TREE_ORPHANED ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  p_orphan ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6(struct proc *child, struct proc *parent)
{

	FUNC5(&proctree_lock, SX_XLOCKED);
	FUNC0((child->p_flag & P_TRACED) != 0,
	    ("proc_add_orphan: not traced"));

	if (FUNC1(&parent->p_orphans)) {
		child->p_treeflag |= P_TREE_FIRST_ORPHAN;
		FUNC4(&parent->p_orphans, child, p_orphan);
	} else {
		FUNC3(FUNC2(&parent->p_orphans),
		    child, p_orphan);
	}
	child->p_treeflag |= P_TREE_ORPHANED;
}