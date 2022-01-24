#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int flags; } ;
struct vmspace {TYPE_1__ vm_map; } ;
struct thread {int dummy; } ;
struct proc {int p_flag2; int p_flag; } ;

/* Variables and functions */
 int MAP_ASLR ; 
#define  P2_ASLR_DISABLE 129 
#define  P2_ASLR_ENABLE 128 
 int PROC_ASLR_ACTIVE ; 
 int PROC_ASLR_FORCE_DISABLE ; 
 int PROC_ASLR_FORCE_ENABLE ; 
 int PROC_ASLR_NOFORCE ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int P_WEXIT ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 struct vmspace* FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmspace*) ; 

__attribute__((used)) static int
FUNC6(struct thread *td, struct proc *p, int *data)
{
	struct vmspace *vm;
	int d;

	switch (p->p_flag2 & (P2_ASLR_ENABLE | P2_ASLR_DISABLE)) {
	case 0:
		d = PROC_ASLR_NOFORCE;
		break;
	case P2_ASLR_ENABLE:
		d = PROC_ASLR_FORCE_ENABLE;
		break;
	case P2_ASLR_DISABLE:
		d = PROC_ASLR_FORCE_DISABLE;
		break;
	}
	if ((p->p_flag & P_WEXIT) == 0) {
		FUNC2(p);
		FUNC1(p);
		vm = FUNC4(p);
		if (vm != NULL && (vm->vm_map.flags & MAP_ASLR) != 0) {
			d |= PROC_ASLR_ACTIVE;
			FUNC5(vm);
		}
		FUNC0(p);
		FUNC3(p);
	}
	*data = d;
	return (0);
}