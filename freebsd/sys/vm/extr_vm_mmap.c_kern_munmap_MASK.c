#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t vm_size_t ;
typedef  size_t vm_offset_t ;
typedef  int /*<<< orphan*/ * vm_map_t ;
typedef  TYPE_3__* vm_map_entry_t ;
struct thread {TYPE_2__* td_proc; } ;
struct pmckern_map_out {uintptr_t pm_address; size_t pm_size; } ;
struct TYPE_9__ {size_t start; int /*<<< orphan*/  end; } ;
struct TYPE_8__ {TYPE_1__* p_vmspace; } ;
struct TYPE_7__ {int /*<<< orphan*/  vm_map; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  PMC_FN_MUNMAP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VM_PROT_EXECUTE ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t,size_t) ; 
 TYPE_3__* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,size_t,TYPE_3__**) ; 
 size_t FUNC10 (int /*<<< orphan*/ *) ; 
 size_t FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int
FUNC14(struct thread *td, uintptr_t addr0, size_t size)
{
#ifdef HWPMC_HOOKS
	struct pmckern_map_out pkm;
	vm_map_entry_t entry;
	bool pmc_handled;
#endif
	vm_offset_t addr;
	vm_size_t pageoff;
	vm_map_t map;

	if (size == 0)
		return (EINVAL);

	addr = addr0;
	pageoff = (addr & PAGE_MASK);
	addr -= pageoff;
	size += pageoff;
	size = (vm_size_t) FUNC3(size);
	if (addr + size < addr)
		return (EINVAL);

	/*
	 * Check for illegal addresses.  Watch out for address wrap...
	 */
	map = &td->td_proc->p_vmspace->vm_map;
	if (addr < FUNC11(map) || addr + size > FUNC10(map))
		return (EINVAL);
	FUNC7(map);
#ifdef HWPMC_HOOKS
	pmc_handled = false;
	if (PMC_HOOK_INSTALLED(PMC_FN_MUNMAP)) {
		pmc_handled = true;
		/*
		 * Inform hwpmc if the address range being unmapped contains
		 * an executable region.
		 */
		pkm.pm_address = (uintptr_t) NULL;
		if (vm_map_lookup_entry(map, addr, &entry)) {
			for (; entry->start < addr + size;
			    entry = vm_map_entry_succ(entry)) {
				if (vm_map_check_protection(map, entry->start,
					entry->end, VM_PROT_EXECUTE) == TRUE) {
					pkm.pm_address = (uintptr_t) addr;
					pkm.pm_size = (size_t) size;
					break;
				}
			}
		}
	}
#endif
	FUNC5(map, addr, addr + size);

#ifdef HWPMC_HOOKS
	if (__predict_false(pmc_handled)) {
		/* downgrade the lock to prevent a LOR with the pmc-sx lock */
		vm_map_lock_downgrade(map);
		if (pkm.pm_address != (uintptr_t) NULL)
			PMC_CALL_HOOK(td, PMC_FN_MUNMAP, (void *) &pkm);
		vm_map_unlock_read(map);
	} else
#endif
		FUNC12(map);

	/* vm_map_delete returns nothing but KERN_SUCCESS anyway */
	return (0);
}