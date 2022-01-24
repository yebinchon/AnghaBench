#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
struct vmspace {int /*<<< orphan*/  vm_swrss; } ;
struct proc {struct vmspace* p_vmspace; } ;
struct TYPE_3__ {int td_pflags; struct proc* td_proc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int TDP_EXECVMSPC ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  pmap_pinit ; 
 struct vmspace* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct proc *p, vm_offset_t minuser, vm_offset_t maxuser)
{
	struct vmspace *oldvmspace = p->p_vmspace;
	struct vmspace *newvmspace;

	FUNC0((curthread->td_pflags & TDP_EXECVMSPC) == 0,
	    ("vmspace_exec recursed"));
	newvmspace = FUNC4(minuser, maxuser, pmap_pinit);
	if (newvmspace == NULL)
		return (ENOMEM);
	newvmspace->vm_swrss = oldvmspace->vm_swrss;
	/*
	 * This code is written like this for prototype purposes.  The
	 * goal is to avoid running down the vmspace here, but let the
	 * other process's that are still using the vmspace to finally
	 * run it down.  Even though there is little or no chance of blocking
	 * here, it is a good idea to keep this form for future mods.
	 */
	FUNC1(p);
	p->p_vmspace = newvmspace;
	FUNC2(p);
	if (p == curthread->td_proc)
		FUNC3(curthread);
	curthread->td_pflags |= TDP_EXECVMSPC;
	return (0);
}