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
typedef  scalar_t__ vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  pd_entry_t ;
struct TYPE_5__ {int /*<<< orphan*/  pm_active; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pm_l1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int DPCPU_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ KERNBASE ; 
 scalar_t__ L1_SHIFT ; 
 int L2_SIZE ; 
 scalar_t__ Ln_ADDR_MASK ; 
 scalar_t__ Maxmem ; 
 scalar_t__ PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ VM_MAX_KERNEL_ADDRESS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__* dump_avail ; 
 TYPE_2__* kernel_pmap ; 
 TYPE_1__ kernel_pmap_store ; 
 void* kernel_vm_end ; 
 void* msgbufp ; 
 int /*<<< orphan*/  msgbufsize ; 
 scalar_t__* phys_avail ; 
 scalar_t__* physmap ; 
 int physmap_idx ; 
 scalar_t__ physmem ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  realmem ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 void* virtual_avail ; 
 scalar_t__ virtual_end ; 

void
FUNC15(vm_offset_t l1pt, vm_paddr_t kernstart, vm_size_t kernlen)
{
	u_int l1_slot, l2_slot, avail_slot, map_slot;
	vm_offset_t freemempos;
	vm_offset_t dpcpu, msgbufpv;
	vm_paddr_t end, max_pa, min_pa, pa, start;
	int i;

	FUNC10("pmap_bootstrap %lx %lx %lx\n", l1pt, kernstart, kernlen);
	FUNC10("%lx\n", l1pt);
	FUNC10("%lx\n", (KERNBASE >> L1_SHIFT) & Ln_ADDR_MASK);

	/* Set this early so we can use the pagetable walking functions */
	kernel_pmap_store.pm_l1 = (pd_entry_t *)l1pt;
	FUNC2(kernel_pmap);

	FUNC13(&pvh_global_lock, "pmap pv global");

	FUNC0(&kernel_pmap->pm_active);

	/* Assume the address we were loaded to is a valid physical address. */
	min_pa = max_pa = kernstart;

	/*
	 * Find the minimum physical address. physmap is sorted,
	 * but may contain empty ranges.
	 */
	for (i = 0; i < physmap_idx * 2; i += 2) {
		if (physmap[i] == physmap[i + 1])
			continue;
		if (physmap[i] <= min_pa)
			min_pa = physmap[i];
		if (physmap[i + 1] > max_pa)
			max_pa = physmap[i + 1];
	}
	FUNC10("physmap_idx %lx\n", physmap_idx);
	FUNC10("min_pa %lx\n", min_pa);
	FUNC10("max_pa %lx\n", max_pa);

	/* Create a direct map region early so we can use it for pa -> va */
	FUNC6(l1pt, min_pa, max_pa);

	/*
	 * Read the page table to find out what is already mapped.
	 * This assumes we have mapped a block of memory from KERNBASE
	 * using a single L1 entry.
	 */
	(void)FUNC8(l1pt, KERNBASE, &l1_slot, &l2_slot);

	/* Sanity check the index, KERNBASE should be the first VA */
	FUNC1(l2_slot == 0, ("The L2 index is non-zero"));

	freemempos = FUNC12(KERNBASE + kernlen, PAGE_SIZE);

	/* Create the l3 tables for the early devmap */
	freemempos = FUNC7(l1pt,
	    VM_MAX_KERNEL_ADDRESS - L2_SIZE, freemempos);

	FUNC14();

#define alloc_pages(var, np)						\
	(var) = freemempos;						\
	freemempos += (np * PAGE_SIZE);					\
	memset((char *)(var), 0, ((np) * PAGE_SIZE));

	/* Allocate dynamic per-cpu area. */
	alloc_pages(dpcpu, DPCPU_SIZE / PAGE_SIZE);
	FUNC5((void *)dpcpu, 0);

	/* Allocate memory for the msgbuf, e.g. for /sbin/dmesg */
	alloc_pages(msgbufpv, FUNC11(msgbufsize) / PAGE_SIZE);
	msgbufp = (void *)msgbufpv;

	virtual_avail = FUNC12(freemempos, L2_SIZE);
	virtual_end = VM_MAX_KERNEL_ADDRESS - L2_SIZE;
	kernel_vm_end = virtual_avail;
	
	pa = FUNC9(l1pt, freemempos);

	/* Initialize phys_avail and dump_avail. */
	for (avail_slot = map_slot = physmem = 0; map_slot < physmap_idx * 2;
	    map_slot += 2) {
		start = physmap[map_slot];
		end = physmap[map_slot + 1];

		if (start == end)
			continue;
		dump_avail[map_slot] = start;
		dump_avail[map_slot + 1] = end;
		realmem += FUNC4((vm_offset_t)(end - start));

		if (start >= kernstart && end <= pa)
			continue;

		if (start < kernstart && end > kernstart)
			end = kernstart;
		else if (start < pa && end > pa)
			start = pa;
		phys_avail[avail_slot] = start;
		phys_avail[avail_slot + 1] = end;
		physmem += (end - start) >> PAGE_SHIFT;
		avail_slot += 2;

		if (end != physmap[map_slot + 1] && end > pa) {
			phys_avail[avail_slot] = pa;
			phys_avail[avail_slot + 1] = physmap[map_slot + 1];
			physmem += (physmap[map_slot + 1] - pa) >> PAGE_SHIFT;
			avail_slot += 2;
		}
	}
	phys_avail[avail_slot] = 0;
	phys_avail[avail_slot + 1] = 0;

	/*
	 * Maxmem isn't the "maximum memory", it's one larger than the
	 * highest page of the physical address space.  It should be
	 * called something like "Maxphyspage".
	 */
	Maxmem = FUNC4(phys_avail[avail_slot - 1]);
}