#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_2__* vm_map_t ;
struct ucred {int dummy; } ;
struct proc {TYPE_1__* p_vmspace; } ;
struct TYPE_5__ {int /*<<< orphan*/  pmap; } ;
struct TYPE_4__ {TYPE_2__ vm_map; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  PRIV_VM_MLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  RACCT_MEMLOCK ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int VM_MAP_WIRE_NOHOLES ; 
 int VM_MAP_WIRE_USER ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 unsigned long FUNC3 (struct proc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ucred*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (scalar_t__) ; 
 scalar_t__ racct_enable ; 
 int FUNC7 (struct proc*,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int FUNC10 (TYPE_2__*,scalar_t__,scalar_t__,int) ; 
 scalar_t__ vm_page_max_user_wired ; 

int
FUNC11(struct proc *proc, struct ucred *cred, uintptr_t addr0, size_t len)
{
	vm_offset_t addr, end, last, start;
	vm_size_t npages, size;
	vm_map_t map;
	unsigned long nsize;
	int error;

	error = FUNC5(cred, PRIV_VM_MLOCK);
	if (error)
		return (error);
	addr = addr0;
	size = len;
	last = addr + size;
	start = FUNC9(addr);
	end = FUNC8(last);
	if (last < addr || end < addr)
		return (EINVAL);
	npages = FUNC2(end - start);
	if (npages > vm_page_max_user_wired)
		return (ENOMEM);
	map = &proc->p_vmspace->vm_map;
	FUNC0(proc);
	nsize = FUNC6(npages + FUNC4(map->pmap));
	if (nsize > FUNC3(proc, RLIMIT_MEMLOCK)) {
		FUNC1(proc);
		return (ENOMEM);
	}
	FUNC1(proc);
#ifdef RACCT
	if (racct_enable) {
		PROC_LOCK(proc);
		error = racct_set(proc, RACCT_MEMLOCK, nsize);
		PROC_UNLOCK(proc);
		if (error != 0)
			return (ENOMEM);
	}
#endif
	error = FUNC10(map, start, end,
	    VM_MAP_WIRE_USER | VM_MAP_WIRE_NOHOLES);
#ifdef RACCT
	if (racct_enable && error != KERN_SUCCESS) {
		PROC_LOCK(proc);
		racct_set(proc, RACCT_MEMLOCK,
		    ptoa(pmap_wired_count(map->pmap)));
		PROC_UNLOCK(proc);
	}
#endif
	return (error == KERN_SUCCESS ? 0 : ENOMEM);
}