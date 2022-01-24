#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_prot_t ;
typedef  TYPE_3__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int uint64_t ;
typedef  int u_int ;
struct pvo_head {int dummy; } ;
struct TYPE_12__ {int prot; int pa; } ;
struct pvo_entry {scalar_t__ pvo_pmap; TYPE_2__ pvo_pte; int /*<<< orphan*/  pvo_vaddr; } ;
typedef  scalar_t__ pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;
typedef  int /*<<< orphan*/  int8_t ;
struct TYPE_11__ {struct pvo_head mdpg_pvoh; } ;
struct TYPE_13__ {int oflags; int aflags; TYPE_1__ md; int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int KERN_RESOURCE_SHORTAGE ; 
 int KERN_SUCCESS ; 
 int LPTE_G ; 
 int LPTE_I ; 
 int LPTE_NOEXEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pvo_entry*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct pvo_entry*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PGA_EXECUTABLE ; 
 int PGA_WRITEABLE ; 
 int PMAP_ENTER_QUICK_LOCKED ; 
 int PMAP_ENTER_WIRED ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  PVO_MANAGED ; 
 int /*<<< orphan*/  PVO_WIRED ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int FUNC10 (TYPE_3__*) ; 
 int VM_PROT_WRITE ; 
 int VPO_UNMANAGED ; 
 struct pvo_entry* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pvo_entry*) ; 
 int /*<<< orphan*/  FUNC13 (struct pvo_entry*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ kernel_pmap ; 
 int FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  moea64_initialized ; 
 int /*<<< orphan*/  moea64_pte_overflow ; 
 int FUNC15 (int /*<<< orphan*/ ,struct pvo_entry*,struct pvo_head*,struct pvo_entry**) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct pvo_entry*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct pvo_entry*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ pmap_bootstrapped ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int) ; 

int
FUNC21(mmu_t mmu, pmap_t pmap, vm_offset_t va, vm_page_t m, 
    vm_prot_t prot, u_int flags, int8_t psind)
{
	struct		pvo_entry *pvo, *oldpvo;
	struct		pvo_head *pvo_head;
	uint64_t	pte_lo;
	int		error;

	if ((m->oflags & VPO_UNMANAGED) == 0) {
		if ((flags & PMAP_ENTER_QUICK_LOCKED) == 0)
			FUNC9(m);
		else
			FUNC8(m->object);
	}

	pvo = FUNC11(0);
	if (pvo == NULL)
		return (KERN_RESOURCE_SHORTAGE);
	pvo->pvo_pmap = NULL; /* to be filled in later */
	pvo->pvo_pte.prot = prot;

	pte_lo = FUNC14(FUNC10(m), FUNC19(m));
	pvo->pvo_pte.pa = FUNC10(m) | pte_lo;

	if ((flags & PMAP_ENTER_WIRED) != 0)
		pvo->pvo_vaddr |= PVO_WIRED;

	if ((m->oflags & VPO_UNMANAGED) != 0 || !moea64_initialized) {
		pvo_head = NULL;
	} else {
		pvo_head = &m->md.mdpg_pvoh;
		pvo->pvo_vaddr |= PVO_MANAGED;
	}

	FUNC5(m);
	FUNC3(pmap);
	if (pvo->pvo_pmap == NULL)
		FUNC13(pvo, pmap, va);
	if (prot & VM_PROT_WRITE)
		if (pmap_bootstrapped &&
		    (m->oflags & VPO_UNMANAGED) == 0)
			FUNC20(m, PGA_WRITEABLE);

	error = FUNC15(mmu, pvo, pvo_head, &oldpvo);
	if (error == EEXIST) {
		if (oldpvo->pvo_vaddr == pvo->pvo_vaddr &&
		    oldpvo->pvo_pte.pa == pvo->pvo_pte.pa &&
		    oldpvo->pvo_pte.prot == prot) {
			/* Identical mapping already exists */
			error = 0;

			/* If not in page table, reinsert it */
			if (FUNC2(mmu, oldpvo) < 0) {
				FUNC7(moea64_pte_overflow--);
				FUNC1(mmu, oldpvo);
			}

			/* Then just clean up and go home */
			FUNC6(m);
			FUNC4(pmap);
			FUNC12(pvo);
			goto out;
		} else {
			/* Otherwise, need to kill it first */
			FUNC0(oldpvo->pvo_pmap == pmap, ("pmap of old "
			    "mapping does not match new mapping"));
			FUNC17(mmu, oldpvo);
			FUNC15(mmu, pvo, pvo_head, NULL);
		}
	}
	FUNC4(pmap);
	FUNC6(m);

	/* Free any dead pages */
	if (error == EEXIST) {
		FUNC16(mmu, oldpvo);
		FUNC12(oldpvo);
	}

out:
	/*
	 * Flush the page from the instruction cache if this page is
	 * mapped executable and cacheable.
	 */
	if (pmap != kernel_pmap && !(m->aflags & PGA_EXECUTABLE) &&
	    (pte_lo & (LPTE_I | LPTE_G | LPTE_NOEXEC)) == 0) {
		FUNC20(m, PGA_EXECUTABLE);
		FUNC18(mmu, pmap, va, FUNC10(m), PAGE_SIZE);
	}
	return (KERN_SUCCESS);
}