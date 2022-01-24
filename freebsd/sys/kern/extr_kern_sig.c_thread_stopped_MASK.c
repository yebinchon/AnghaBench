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
struct proc {int p_suspcount; int p_flag; int p_numthreads; int /*<<< orphan*/  p_pptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLD_STOPPED ; 
 int /*<<< orphan*/  CLD_TRAPPED ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int P_STOPPED_SIG ; 
 int P_TRACED ; 
 int P_WAITED ; 
 int /*<<< orphan*/  FUNC6 (struct proc*,int /*<<< orphan*/ ) ; 
 struct proc* curproc ; 

void
FUNC7(struct proc *p)
{
	int n;

	FUNC1(p, MA_OWNED);
	FUNC3(p, MA_OWNED);
	n = p->p_suspcount;
	if (p == curproc)
		n++;
	if ((p->p_flag & P_STOPPED_SIG) && (n == p->p_numthreads)) {
		FUNC4(p);
		p->p_flag &= ~P_WAITED;
		FUNC0(p->p_pptr);
		FUNC6(p, (p->p_flag & P_TRACED) ?
			CLD_TRAPPED : CLD_STOPPED);
		FUNC5(p->p_pptr);
		FUNC2(p);
	}
}