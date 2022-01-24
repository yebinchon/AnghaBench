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
struct ucred {int dummy; } ;
struct proc {scalar_t__ p_state; struct ucred* p_ucred; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 scalar_t__ PRS_ZOMBIE ; 

struct ucred *
FUNC3(struct proc *p, struct ucred *newcred)
{
	struct ucred *oldcred;

	FUNC0(p->p_ucred != NULL);
	if (newcred == NULL)
		FUNC0(p->p_state == PRS_ZOMBIE);
	else
		FUNC1(p, MA_OWNED);

	oldcred = p->p_ucred;
	p->p_ucred = newcred;
	if (newcred != NULL)
		FUNC2(p);
	return (oldcred);
}