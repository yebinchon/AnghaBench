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
struct proc {int p_treeflag; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int P_TREE_REAPER ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 struct proc* curproc ; 
 struct proc* initproc ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC0 (struct proc*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct thread *td, struct proc *p)
{

	FUNC1(&proctree_lock, SX_XLOCKED);
	if (p != curproc)
		return (EPERM);
	if (p == initproc)
		return (EINVAL);
	if ((p->p_treeflag & P_TREE_REAPER) == 0)
		return (EINVAL);
	FUNC0(p, false);
	return (0);
}