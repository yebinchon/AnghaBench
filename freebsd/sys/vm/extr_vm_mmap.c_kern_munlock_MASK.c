#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t vm_offset_t ;
typedef  TYPE_2__* vm_map_t ;
struct thread {TYPE_4__* td_proc; } ;
struct TYPE_9__ {TYPE_1__* p_vmspace; } ;
struct TYPE_8__ {int /*<<< orphan*/  pmap; } ;
struct TYPE_7__ {TYPE_2__ vm_map; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  PRIV_VM_MUNLOCK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  RACCT_MEMLOCK ; 
 int VM_MAP_WIRE_NOHOLES ; 
 int VM_MAP_WIRE_USER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ racct_enable ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (size_t) ; 
 size_t FUNC7 (size_t) ; 
 int FUNC8 (TYPE_2__*,size_t,size_t,int) ; 

int
FUNC9(struct thread *td, uintptr_t addr0, size_t size)
{
	vm_offset_t addr, end, last, start;
#ifdef RACCT
	vm_map_t map;
#endif
	int error;

	error = FUNC3(td, PRIV_VM_MUNLOCK);
	if (error)
		return (error);
	addr = addr0;
	last = addr + size;
	start = FUNC7(addr);
	end = FUNC6(last);
	if (last < addr || end < addr)
		return (EINVAL);
	error = FUNC8(&td->td_proc->p_vmspace->vm_map, start, end,
	    VM_MAP_WIRE_USER | VM_MAP_WIRE_NOHOLES);
#ifdef RACCT
	if (racct_enable && error == KERN_SUCCESS) {
		PROC_LOCK(td->td_proc);
		map = &td->td_proc->p_vmspace->vm_map;
		racct_set(td->td_proc, RACCT_MEMLOCK,
		    ptoa(pmap_wired_count(map->pmap)));
		PROC_UNLOCK(td->td_proc);
	}
#endif
	return (error == KERN_SUCCESS ? 0 : ENOMEM);
}