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
struct proc {scalar_t__ p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SX_LOCKED ; 
 struct proc* curproc ; 
 struct proc* FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(struct proc *p)
{

	FUNC2(&proctree_lock, SX_LOCKED);
	FUNC0(p, MA_OWNED);
	for (; p != curproc; p = FUNC1(p)) {
		if (p->p_pid == 0)
			return (0);
	}
	return (1);
}