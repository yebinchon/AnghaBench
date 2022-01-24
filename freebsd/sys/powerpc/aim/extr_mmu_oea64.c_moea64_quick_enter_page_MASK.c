#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  scalar_t__ vm_paddr_t ;
typedef  struct pvo_entry* vm_offset_t ;
typedef  int uint64_t ;
struct TYPE_3__ {int pa; } ;
struct pvo_entry {TYPE_1__ pvo_pte; } ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_4__ {int /*<<< orphan*/  qmap_lock; int /*<<< orphan*/  qmap_pvo; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  MOEA64_PTE_INVALIDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pvo_entry*,int /*<<< orphan*/ ) ; 
 struct pvo_entry* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct pvo_entry* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__ aim ; 
 scalar_t__ hw_direct_map ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qmap_addr ; 
 int /*<<< orphan*/  FUNC10 () ; 

vm_offset_t
FUNC11(mmu_t mmu, vm_page_t m)
{
	struct pvo_entry *pvo;
	vm_paddr_t pa = FUNC4(m);

	if (hw_direct_map)
		return (FUNC3(pa));

	/*
 	 * MOEA64_PTE_REPLACE does some locking, so we can't just grab
	 * a critical section and access the PCPU data like on i386.
	 * Instead, pin the thread and grab the PCPU lock to prevent
	 * a preempting thread from using the same PCPU data.
	 */
	FUNC10();

	FUNC7(FUNC2(aim.qmap_lock), MA_NOTOWNED);
	pvo = FUNC1(aim.qmap_pvo);

	FUNC8(FUNC2(aim.qmap_lock));
	pvo->pvo_pte.pa = FUNC6(pa, FUNC9(m)) |
	    (uint64_t)pa;
	FUNC0(mmu, pvo, MOEA64_PTE_INVALIDATE);
	FUNC5();

	return (FUNC1(qmap_addr));
}