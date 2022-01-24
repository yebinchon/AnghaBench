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
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  int uint64_t ;
struct TYPE_3__ {int prot; int pa; } ;
struct pvo_entry {int pvo_vaddr; TYPE_1__ pvo_pte; } ;
typedef  int /*<<< orphan*/  register_t ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_4__ {int mr_start; int mr_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DMAP_BASE_ADDRESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EXC_LAST ; 
 int EXC_RSVD ; 
 int LPTE_G ; 
 int LPTE_M ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int PVO_LARGE ; 
 int PVO_WIRED ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__*) ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 struct pvo_entry* FUNC6 (int) ; 
 scalar_t__ hw_direct_map ; 
 int /*<<< orphan*/  FUNC7 (struct pvo_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 scalar_t__ moea64_bpvo_pool ; 
 int moea64_bpvo_pool_size ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int moea64_large_page_mask ; 
 scalar_t__ moea64_large_page_size ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct pvo_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* pregions ; 
 int pregions_sz ; 
 scalar_t__ unmapped_buf_allowed ; 

__attribute__((used)) static void
FUNC10(mmu_t mmup, vm_offset_t kernelstart,
    vm_offset_t kernelend)
{
	struct pvo_entry *pvo;
	register_t msr;
	vm_paddr_t pa, pkernelstart, pkernelend;
	vm_offset_t size, off;
	uint64_t pte_lo;
	int i;

	if (moea64_large_page_size == 0) 
		hw_direct_map = 0;

	FUNC0(msr);
	if (hw_direct_map) {
		FUNC3(kernel_pmap);
		for (i = 0; i < pregions_sz; i++) {
		  for (pa = pregions[i].mr_start; pa < pregions[i].mr_start +
		     pregions[i].mr_size; pa += moea64_large_page_size) {
			pte_lo = LPTE_M;

			pvo = FUNC6(1 /* bootstrap */);
			pvo->pvo_vaddr |= PVO_WIRED | PVO_LARGE;
			FUNC7(pvo, kernel_pmap, FUNC2(pa));

			/*
			 * Set memory access as guarded if prefetch within
			 * the page could exit the available physmem area.
			 */
			if (pa & moea64_large_page_mask) {
				pa &= moea64_large_page_mask;
				pte_lo |= LPTE_G;
			}
			if (pa + moea64_large_page_size >
			    pregions[i].mr_start + pregions[i].mr_size)
				pte_lo |= LPTE_G;

			pvo->pvo_pte.prot = VM_PROT_READ | VM_PROT_WRITE |
			    VM_PROT_EXECUTE;
			pvo->pvo_pte.pa = pa | pte_lo;
			FUNC9(mmup, pvo, NULL, NULL);
		  }
		}
		FUNC4(kernel_pmap);
	}

	/*
	 * Make sure the kernel and BPVO pool stay mapped on systems either
	 * without a direct map or on which the kernel is not already executing
	 * out of the direct-mapped region.
	 */
	if (kernelstart < DMAP_BASE_ADDRESS) {
		/*
		 * For pre-dmap execution, we need to use identity mapping
		 * because we will be operating with the mmu on but in the
		 * wrong address configuration until we __restartkernel().
		 */
		for (pa = kernelstart & ~PAGE_MASK; pa < kernelend;
		    pa += PAGE_SIZE)
			FUNC8(mmup, pa, pa);
	} else if (!hw_direct_map) {
		pkernelstart = kernelstart & ~DMAP_BASE_ADDRESS;
		pkernelend = kernelend & ~DMAP_BASE_ADDRESS;
		for (pa = pkernelstart & ~PAGE_MASK; pa < pkernelend;
		    pa += PAGE_SIZE)
			FUNC8(mmup, pa | DMAP_BASE_ADDRESS, pa);
	}

	if (!hw_direct_map) {
		size = moea64_bpvo_pool_size*sizeof(struct pvo_entry);
		off = (vm_offset_t)(moea64_bpvo_pool);
		for (pa = off; pa < off + size; pa += PAGE_SIZE)
			FUNC8(mmup, pa, pa);

		/* Map exception vectors */
		for (pa = EXC_RSVD; pa < EXC_LAST; pa += PAGE_SIZE)
			FUNC8(mmup, pa | DMAP_BASE_ADDRESS, pa);
	}
	FUNC1(msr);

	/*
	 * Allow user to override unmapped_buf_allowed for testing.
	 * XXXKIB Only direct map implementation was tested.
	 */
	if (!FUNC5("vfs.unmapped_buf_allowed",
	    &unmapped_buf_allowed))
		unmapped_buf_allowed = hw_direct_map;
}