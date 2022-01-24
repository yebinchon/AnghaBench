#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_map_t ;
struct thread {TYPE_9__* td_proc; } ;
struct mlockall_args {int how; } ;
struct TYPE_14__ {TYPE_1__* p_vmspace; } ;
struct TYPE_13__ {scalar_t__ size; int /*<<< orphan*/  pmap; } ;
struct TYPE_12__ {TYPE_2__ vm_map; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int KERN_RESOURCE_SHORTAGE ; 
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  MAP_WIREFUTURE ; 
 int MCL_CURRENT ; 
 int MCL_FUTURE ; 
 int /*<<< orphan*/  PRIV_VM_MLOCK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*) ; 
 int /*<<< orphan*/  RACCT_MEMLOCK ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int VM_MAP_WIRE_HOLESOK ; 
 int VM_MAP_WIRE_USER ; 
 scalar_t__ FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  old_mlock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ racct_enable ; 
 int FUNC6 (TYPE_9__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC13(struct thread *td, struct mlockall_args *uap)
{
	vm_map_t map;
	int error;

	map = &td->td_proc->p_vmspace->vm_map;
	error = FUNC4(td, PRIV_VM_MLOCK);
	if (error)
		return (error);

	if ((uap->how == 0) || ((uap->how & ~(MCL_CURRENT|MCL_FUTURE)) != 0))
		return (EINVAL);

	/*
	 * If wiring all pages in the process would cause it to exceed
	 * a hard resource limit, return ENOMEM.
	 */
	if (!old_mlock && uap->how & MCL_CURRENT) {
		if (map->size > FUNC2(td, RLIMIT_MEMLOCK))
			return (ENOMEM);
	}
#ifdef RACCT
	if (racct_enable) {
		PROC_LOCK(td->td_proc);
		error = racct_set(td->td_proc, RACCT_MEMLOCK, map->size);
		PROC_UNLOCK(td->td_proc);
		if (error != 0)
			return (ENOMEM);
	}
#endif

	if (uap->how & MCL_FUTURE) {
		FUNC7(map);
		FUNC10(map, MAP_WIREFUTURE, 0);
		FUNC11(map);
		error = 0;
	}

	if (uap->how & MCL_CURRENT) {
		/*
		 * P1003.1-2001 mandates that all currently mapped pages
		 * will be memory resident and locked (wired) upon return
		 * from mlockall(). vm_map_wire() will wire pages, by
		 * calling vm_fault_wire() for each page in the region.
		 */
		error = FUNC12(map, FUNC9(map), FUNC8(map),
		    VM_MAP_WIRE_USER|VM_MAP_WIRE_HOLESOK);
		if (error == KERN_SUCCESS)
			error = 0;
		else if (error == KERN_RESOURCE_SHORTAGE)
			error = ENOMEM;
		else
			error = EAGAIN;
	}
#ifdef RACCT
	if (racct_enable && error != KERN_SUCCESS) {
		PROC_LOCK(td->td_proc);
		racct_set(td->td_proc, RACCT_MEMLOCK,
		    ptoa(pmap_wired_count(map->pmap)));
		PROC_UNLOCK(td->td_proc);
	}
#endif

	return (error);
}