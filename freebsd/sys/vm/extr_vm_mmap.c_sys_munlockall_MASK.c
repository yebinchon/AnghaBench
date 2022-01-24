#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vm_map_t ;
struct thread {TYPE_2__* td_proc; } ;
struct munlockall_args {int dummy; } ;
struct TYPE_6__ {TYPE_1__* p_vmspace; } ;
struct TYPE_5__ {int /*<<< orphan*/  vm_map; } ;

/* Variables and functions */
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  MAP_WIREFUTURE ; 
 int /*<<< orphan*/  PRIV_VM_MUNLOCK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  RACCT_MEMLOCK ; 
 int VM_MAP_WIRE_HOLESOK ; 
 int VM_MAP_WIRE_USER ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 scalar_t__ racct_enable ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC10(struct thread *td, struct munlockall_args *uap)
{
	vm_map_t map;
	int error;

	map = &td->td_proc->p_vmspace->vm_map;
	error = FUNC2(td, PRIV_VM_MUNLOCK);
	if (error)
		return (error);

	/* Clear the MAP_WIREFUTURE flag from this vm_map. */
	FUNC4(map);
	FUNC7(map, 0, MAP_WIREFUTURE);
	FUNC8(map);

	/* Forcibly unwire all pages. */
	error = FUNC9(map, FUNC6(map), FUNC5(map),
	    VM_MAP_WIRE_USER|VM_MAP_WIRE_HOLESOK);
#ifdef RACCT
	if (racct_enable && error == KERN_SUCCESS) {
		PROC_LOCK(td->td_proc);
		racct_set(td->td_proc, RACCT_MEMLOCK, 0);
		PROC_UNLOCK(td->td_proc);
	}
#endif

	return (error);
}