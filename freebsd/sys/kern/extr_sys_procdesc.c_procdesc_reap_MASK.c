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
struct procdesc {int /*<<< orphan*/ * pd_proc; } ;
struct proc {struct procdesc* p_procdesc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct procdesc*) ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(struct proc *p)
{
	struct procdesc *pd;

	FUNC2(&proctree_lock, SA_XLOCKED);
	FUNC0(p->p_procdesc != NULL, ("procdesc_reap: p_procdesc == NULL"));

	pd = p->p_procdesc;
	pd->pd_proc = NULL;
	p->p_procdesc = NULL;
	FUNC1(pd);
}