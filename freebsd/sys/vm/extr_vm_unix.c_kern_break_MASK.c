#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_1__* vm_map_t ;
struct TYPE_13__ {int flags; scalar_t__ size; int /*<<< orphan*/  pmap; } ;
struct vmspace {int /*<<< orphan*/  vm_dsize; scalar_t__ vm_daddr; TYPE_1__ vm_map; } ;
struct thread {TYPE_8__* td_proc; } ;
typedef  scalar_t__ rlim_t ;
struct TYPE_14__ {struct vmspace* p_vmspace; } ;

/* Variables and functions */
 int ENOMEM ; 
 int KERN_SUCCESS ; 
 int MAP_WIREFUTURE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  RACCT_DATA ; 
 int /*<<< orphan*/  RACCT_MEMLOCK ; 
 int /*<<< orphan*/  RACCT_VMEM ; 
 int /*<<< orphan*/  RLIMIT_DATA ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  RLIMIT_VMEM ; 
 int /*<<< orphan*/  SV_ILP32 ; 
 scalar_t__ FUNC2 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int VM_MAP_WIRE_NOHOLES ; 
 int VM_MAP_WIRE_USER ; 
 int /*<<< orphan*/  VM_PROT_ALL ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_RW ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ i386_read_exec ; 
 scalar_t__ FUNC5 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  old_mlock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ racct_enable ; 
 int FUNC8 (TYPE_8__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int FUNC11 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int FUNC16 (TYPE_1__*,scalar_t__,scalar_t__,int) ; 

int
FUNC17(struct thread *td, uintptr_t *addr)
{
	struct vmspace *vm = td->td_proc->p_vmspace;
	vm_map_t map = &vm->vm_map;
	vm_offset_t new, old, base;
	rlim_t datalim, lmemlim, vmemlim;
	int prot, rv;
	int error = 0;

	datalim = FUNC5(td, RLIMIT_DATA);
	lmemlim = FUNC5(td, RLIMIT_MEMLOCK);
	vmemlim = FUNC5(td, RLIMIT_VMEM);

	new = FUNC10(*addr);
	FUNC13(map);

	base = FUNC10((vm_offset_t) vm->vm_daddr);
	old = base + FUNC4(vm->vm_dsize);
	if (new > base) {
		/*
		 * Check the resource limit, but allow a process to reduce
		 * its usage, even if it remains over the limit.
		 */
		if (new - base > datalim && new > old) {
			error = ENOMEM;
			goto done;
		}
		if (new > FUNC14(map)) {
			error = ENOMEM;
			goto done;
		}
	} else if (new < base) {
		/*
		 * Simply return the current break address without
		 * modifying any state.  This is an ad-hoc interface
		 * used by libc to determine the initial break address,
		 * avoiding a dependency on magic features in the system
		 * linker.
		 */
		new = old;
		goto done;
	}

	if (new > old) {
		if (!old_mlock && map->flags & MAP_WIREFUTURE) {
			if (FUNC7(FUNC6(map->pmap)) +
			    (new - old) > lmemlim) {
				error = ENOMEM;
				goto done;
			}
		}
		if (map->size + (new - old) > vmemlim) {
			error = ENOMEM;
			goto done;
		}
#ifdef RACCT
		if (racct_enable) {
			PROC_LOCK(td->td_proc);
			error = racct_set(td->td_proc, RACCT_DATA, new - base);
			if (error != 0) {
				PROC_UNLOCK(td->td_proc);
				error = ENOMEM;
				goto done;
			}
			error = racct_set(td->td_proc, RACCT_VMEM,
			    map->size + (new - old));
			if (error != 0) {
				racct_set_force(td->td_proc, RACCT_DATA,
				    old - base);
				PROC_UNLOCK(td->td_proc);
				error = ENOMEM;
				goto done;
			}
			if (!old_mlock && map->flags & MAP_WIREFUTURE) {
				error = racct_set(td->td_proc, RACCT_MEMLOCK,
				    ptoa(pmap_wired_count(map->pmap)) +
				    (new - old));
				if (error != 0) {
					racct_set_force(td->td_proc, RACCT_DATA,
					    old - base);
					racct_set_force(td->td_proc, RACCT_VMEM,
					    map->size);
					PROC_UNLOCK(td->td_proc);
					error = ENOMEM;
					goto done;
				}
			}
			PROC_UNLOCK(td->td_proc);
		}
#endif
		prot = VM_PROT_RW;
#if (defined(COMPAT_FREEBSD32) && defined(__amd64__)) || defined(__i386__)
		if (i386_read_exec && SV_PROC_FLAG(td->td_proc, SV_ILP32))
			prot |= VM_PROT_EXECUTE;
#endif
		rv = FUNC12(map, NULL, 0, old, new, prot, VM_PROT_ALL,
		    0);
		if (rv == KERN_SUCCESS && (map->flags & MAP_WIREFUTURE) != 0) {
			rv = FUNC16(map, old, new,
			    VM_MAP_WIRE_USER | VM_MAP_WIRE_NOHOLES);
			if (rv != KERN_SUCCESS)
				FUNC11(map, old, new);
		}
		if (rv != KERN_SUCCESS) {
#ifdef RACCT
			if (racct_enable) {
				PROC_LOCK(td->td_proc);
				racct_set_force(td->td_proc,
				    RACCT_DATA, old - base);
				racct_set_force(td->td_proc,
				    RACCT_VMEM, map->size);
				if (!old_mlock && map->flags & MAP_WIREFUTURE) {
					racct_set_force(td->td_proc,
					    RACCT_MEMLOCK,
					    ptoa(pmap_wired_count(map->pmap)));
				}
				PROC_UNLOCK(td->td_proc);
			}
#endif
			error = ENOMEM;
			goto done;
		}
		vm->vm_dsize += FUNC3(new - old);
	} else if (new < old) {
		rv = FUNC11(map, new, old);
		if (rv != KERN_SUCCESS) {
			error = ENOMEM;
			goto done;
		}
		vm->vm_dsize -= FUNC3(old - new);
#ifdef RACCT
		if (racct_enable) {
			PROC_LOCK(td->td_proc);
			racct_set_force(td->td_proc, RACCT_DATA, new - base);
			racct_set_force(td->td_proc, RACCT_VMEM, map->size);
			if (!old_mlock && map->flags & MAP_WIREFUTURE) {
				racct_set_force(td->td_proc, RACCT_MEMLOCK,
				    ptoa(pmap_wired_count(map->pmap)));
			}
			PROC_UNLOCK(td->td_proc);
		}
#endif
	}
done:
	FUNC15(map);

	if (error == 0)
		*addr = new;

	return (error);
}