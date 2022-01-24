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
typedef  scalar_t__ vm_paddr_t ;
typedef  int uint64_t ;
struct TYPE_2__ {int pa; } ;
struct pvo_entry {int /*<<< orphan*/  pvo_pmap; TYPE_1__ pvo_pte; } ;
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  MOEA64_PTE_INVALIDATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pvo_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_MEMATTR_DEFAULT ; 
 int /*<<< orphan*/  hw_direct_map ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  moea64_scratchpage_mtx ; 
 struct pvo_entry** moea64_scratchpage_pvo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline
void FUNC7(mmu_t mmup, int which, vm_paddr_t pa)
{
	struct pvo_entry *pvo;

	FUNC0(!hw_direct_map, ("Using OEA64 scratchpage with a direct map!"));
	FUNC6(&moea64_scratchpage_mtx, MA_OWNED);

	pvo = moea64_scratchpage_pvo[which];
	FUNC2(pvo->pvo_pmap);
	pvo->pvo_pte.pa =
	    FUNC5(pa, VM_MEMATTR_DEFAULT) | (uint64_t)pa;
	FUNC1(mmup, pvo, MOEA64_PTE_INVALIDATE);
	FUNC3(pvo->pvo_pmap);
	FUNC4();
}