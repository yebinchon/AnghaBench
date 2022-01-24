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
struct proc {int p_flag; scalar_t__ p_profthreads; int /*<<< orphan*/  p_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  PPAUSE ; 
 int /*<<< orphan*/  FUNC0 (struct proc*,int /*<<< orphan*/ ) ; 
 int P_PROFIL ; 
 int P_STOPPROF ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ profprocs ; 
 int /*<<< orphan*/  time_lock ; 

void
FUNC5(struct proc *p)
{

	FUNC0(p, MA_OWNED);
	if (p->p_flag & P_PROFIL) {
		if (p->p_profthreads != 0) {
			while (p->p_profthreads != 0) {
				p->p_flag |= P_STOPPROF;
				FUNC2(&p->p_profthreads, &p->p_mtx, PPAUSE,
				    "stopprof", 0);
			}
		}
		if ((p->p_flag & P_PROFIL) == 0)
			return;
		p->p_flag &= ~P_PROFIL;
		FUNC3(&time_lock);
		if (--profprocs == 0)
			FUNC1();
		FUNC4(&time_lock);
	}
}