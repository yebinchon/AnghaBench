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
struct ucred {int cr_agroups; } ;
struct proc {struct ucred* p_ucred; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ucred*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC4 (struct ucred*,int) ; 

struct ucred *
FUNC5(struct proc *p, struct ucred *cr)
{
	struct ucred *oldcred;
	int groups;

	FUNC1(p, MA_OWNED);

	oldcred = p->p_ucred;
	while (cr->cr_agroups < oldcred->cr_agroups) {
		groups = oldcred->cr_agroups;
		FUNC2(p);
		FUNC4(cr, groups);
		FUNC0(p);
		oldcred = p->p_ucred;
	}
	FUNC3(cr, oldcred);

	return (oldcred);
}