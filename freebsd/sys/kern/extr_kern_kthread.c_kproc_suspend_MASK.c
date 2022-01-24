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
struct proc {int p_flag; int /*<<< orphan*/  p_mtx; int /*<<< orphan*/  p_siglist; } ;

/* Variables and functions */
 int EINVAL ; 
 int PDROP ; 
 int PPAUSE ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int P_KPROC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 

int
FUNC5(struct proc *p, int timo)
{
	/*
	 * Make sure this is indeed a system process and we can safely
	 * use the p_siglist field.
	 */
	FUNC0(p);
	if ((p->p_flag & P_KPROC) == 0) {
		FUNC1(p);
		return (EINVAL);
	}
	FUNC2(p->p_siglist, SIGSTOP);
	FUNC4(p);
	return FUNC3(&p->p_siglist, &p->p_mtx, PPAUSE | PDROP, "suspkp", timo);
}