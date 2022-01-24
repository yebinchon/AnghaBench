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
struct vmspace {int vm_refcnt; } ;
struct proc {struct vmspace* p_vmspace; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vmspace*) ; 

struct vmspace *
FUNC4(struct proc *p)
{
	struct vmspace *vm;
	int refcnt;

	FUNC0(p);
	vm = p->p_vmspace;
	if (vm == NULL) {
		FUNC1(p);
		return (NULL);
	}
	refcnt = vm->vm_refcnt;
	do {
		if (refcnt <= 0) { 	/* Avoid 0->1 transition */
			FUNC1(p);
			return (NULL);
		}
	} while (!FUNC2(&vm->vm_refcnt, &refcnt, refcnt + 1));
	if (vm != p->p_vmspace) {
		FUNC1(p);
		FUNC3(vm);
		return (NULL);
	}
	FUNC1(p);
	return (vm);
}