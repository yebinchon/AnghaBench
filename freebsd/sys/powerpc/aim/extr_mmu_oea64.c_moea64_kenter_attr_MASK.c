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
typedef  int vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;
typedef  int /*<<< orphan*/  uintmax_t ;
struct TYPE_2__ {int prot; int pa; } ;
struct pvo_entry {int /*<<< orphan*/  pvo_vaddr; TYPE_1__ pvo_pte; } ;
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 int ADDR_POFF ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PVO_WIRED ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 struct pvo_entry* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pvo_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct pvo_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct pvo_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct pvo_entry* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct pvo_entry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct pvo_entry*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void
FUNC12(mmu_t mmu, vm_offset_t va, vm_paddr_t pa, vm_memattr_t ma)
{
	int		error;	
	struct pvo_entry *pvo, *oldpvo;

	do {
		pvo = FUNC2(0);
		if (pvo == NULL)
			FUNC11(NULL);
	} while (pvo == NULL);
	pvo->pvo_pte.prot = VM_PROT_READ | VM_PROT_WRITE | VM_PROT_EXECUTE;
	pvo->pvo_pte.pa = (pa & ~ADDR_POFF) | FUNC5(pa, ma);
	pvo->pvo_vaddr |= PVO_WIRED;

	FUNC0(kernel_pmap);
	oldpvo = FUNC7(kernel_pmap, va);
	if (oldpvo != NULL)
		FUNC9(mmu, oldpvo);
	FUNC4(pvo, kernel_pmap, va);
	error = FUNC6(mmu, pvo, NULL, NULL);
	FUNC1(kernel_pmap);

	/* Free any dead pages */
	if (oldpvo != NULL) {
		FUNC8(mmu, oldpvo);
		FUNC3(oldpvo);
	}

	if (error != 0 && error != ENOENT)
		FUNC10("moea64_kenter: failed to enter va %#zx pa %#jx: %d", va,
		    (uintmax_t)pa, error);
}