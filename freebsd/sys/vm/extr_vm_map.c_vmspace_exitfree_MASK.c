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
struct vmspace {int dummy; } ;
struct proc {struct vmspace* p_vmspace; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 struct vmspace vmspace0 ; 
 int /*<<< orphan*/  FUNC3 (struct vmspace*) ; 

void
FUNC4(struct proc *p)
{
	struct vmspace *vm;

	FUNC1(p);
	vm = p->p_vmspace;
	p->p_vmspace = NULL;
	FUNC2(p);
	FUNC0(vm == &vmspace0, ("vmspace_exitfree: wrong vmspace"));
	FUNC3(vm);
}