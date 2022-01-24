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
struct proc {int p_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct proc*,int /*<<< orphan*/ ) ; 
 int P_PROFIL ; 
 int P_STOPPROF ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int profprocs ; 
 int /*<<< orphan*/  time_lock ; 

void
FUNC4(struct proc *p)
{

	FUNC0(p, MA_OWNED);
	if (p->p_flag & P_STOPPROF)
		return;
	if ((p->p_flag & P_PROFIL) == 0) {
		p->p_flag |= P_PROFIL;
		FUNC2(&time_lock);
		if (++profprocs == 1)
			FUNC1();
		FUNC3(&time_lock);
	}
}