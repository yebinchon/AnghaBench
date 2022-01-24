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
struct proc {int p_flag; int /*<<< orphan*/  p_pid; int /*<<< orphan*/  p_oppid; struct proc* p_pptr; int /*<<< orphan*/  p_children; int /*<<< orphan*/  p_ksi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int P_TRACED ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  p_sibling ; 
 int /*<<< orphan*/  FUNC5 (struct proc*,struct proc*) ; 
 int /*<<< orphan*/  FUNC6 (struct proc*) ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC9(struct proc *child, struct proc *parent, bool set_oppid)
{

	FUNC8(&proctree_lock, SX_XLOCKED);
	FUNC3(child, MA_OWNED);
	if (child->p_pptr == parent)
		return;

	FUNC2(child->p_pptr);
	FUNC7(child->p_ksi);
	FUNC4(child->p_pptr);
	FUNC1(child, p_sibling);
	FUNC0(&parent->p_children, child, p_sibling);

	FUNC6(child);
	if ((child->p_flag & P_TRACED) != 0) {
		FUNC5(child, child->p_pptr);
	}

	child->p_pptr = parent;
	if (set_oppid)
		child->p_oppid = parent->p_pid;
}