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
struct pv_entry {int dummy; } ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_2__ {int v_page_count; } ;

/* Variables and functions */
 int PMAP_ROOT_SIZE ; 
 int PMAP_SHPGPERPROC ; 
 int /*<<< orphan*/  PV_ENTRY_ZONE_MIN ; 
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int /*<<< orphan*/  UMA_ALIGN_CACHE ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int UMA_ZONE_NOFREE ; 
 int UMA_ZONE_VM ; 
 int maxproc ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* ptbl_root_zone ; 
 int pv_entry_high_water ; 
 int pv_entry_max ; 
 void* pvzone ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 TYPE_1__ vm_cnt ; 

__attribute__((used)) static void
FUNC5(mmu_t mmu)
{
	int shpgperproc = PMAP_SHPGPERPROC;

	/*
	 * Initialize the address space (zone) for the pv entries.  Set a
	 * high water mark so that the system can recover from excessive
	 * numbers of pv entries.
	 */
	pvzone = FUNC3("PV ENTRY", sizeof(struct pv_entry), NULL, NULL,
	    NULL, NULL, UMA_ALIGN_PTR, UMA_ZONE_VM | UMA_ZONE_NOFREE);

	FUNC0("vm.pmap.shpgperproc", &shpgperproc);
	pv_entry_max = shpgperproc * maxproc + vm_cnt.v_page_count;

	FUNC0("vm.pmap.pv_entries", &pv_entry_max);
	pv_entry_high_water = 9 * (pv_entry_max / 10);

	FUNC4(pvzone, pv_entry_max);

	/* Pre-fill pvzone with initial number of pv entries. */
	FUNC2(pvzone, PV_ENTRY_ZONE_MIN);

	/* Create a UMA zone for page table roots. */
	ptbl_root_zone = FUNC3("pmap root", PMAP_ROOT_SIZE,
	    NULL, NULL, NULL, NULL, UMA_ALIGN_CACHE, UMA_ZONE_VM);

	/* Initialize ptbl allocation. */
	FUNC1();
}