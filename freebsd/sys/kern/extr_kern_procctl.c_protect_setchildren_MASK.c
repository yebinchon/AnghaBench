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
struct proc {struct proc* p_pptr; int /*<<< orphan*/  p_children; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct proc* FUNC1 (int /*<<< orphan*/ *) ; 
 struct proc* FUNC2 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  SX_LOCKED ; 
 int /*<<< orphan*/  p_sibling ; 
 int /*<<< orphan*/  proctree_lock ; 
 int FUNC5 (struct thread*,struct proc*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct thread *td, struct proc *top, int flags)
{
	struct proc *p;
	int ret;

	p = top;
	ret = 0;
	FUNC6(&proctree_lock, SX_LOCKED);
	for (;;) {
		ret |= FUNC5(td, p, flags);
		FUNC4(p);
		/*
		 * If this process has children, descend to them next,
		 * otherwise do any siblings, and if done with this level,
		 * follow back up the tree (but not past top).
		 */
		if (!FUNC0(&p->p_children))
			p = FUNC1(&p->p_children);
		else for (;;) {
			if (p == top) {
				FUNC3(p);
				return (ret);
			}
			if (FUNC2(p, p_sibling)) {
				p = FUNC2(p, p_sibling);
				break;
			}
			p = p->p_pptr;
		}
		FUNC3(p);
	}
}