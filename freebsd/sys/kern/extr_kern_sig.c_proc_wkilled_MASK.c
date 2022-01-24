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
 int P_INMEM ; 
 int P_SWAPPINGIN ; 
 int P_WKILLED ; 
 int /*<<< orphan*/  proc0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct proc *p)
{

	FUNC0(p, MA_OWNED);
	if ((p->p_flag & P_WKILLED) == 0) {
		p->p_flag |= P_WKILLED;
		/*
		 * Notify swapper that there is a process to swap in.
		 * The notification is racy, at worst it would take 10
		 * seconds for the swapper process to notice.
		 */
		if ((p->p_flag & (P_INMEM | P_SWAPPINGIN)) == 0)
			FUNC1(&proc0);
	}
}