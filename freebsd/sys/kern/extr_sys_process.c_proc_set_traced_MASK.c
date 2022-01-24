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
struct proc {int /*<<< orphan*/  p_ptevents; int /*<<< orphan*/  p_flag2; int /*<<< orphan*/  p_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  P2_PTRACE_FSTP ; 
 int /*<<< orphan*/  FUNC0 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTRACE_DEFAULT ; 
 int /*<<< orphan*/  P_TRACED ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(struct proc *p, bool stop)
{

	FUNC1(&proctree_lock, SX_XLOCKED);
	FUNC0(p, MA_OWNED);
	p->p_flag |= P_TRACED;
	if (stop)
		p->p_flag2 |= P2_PTRACE_FSTP;
	p->p_ptevents = PTRACE_DEFAULT;
}