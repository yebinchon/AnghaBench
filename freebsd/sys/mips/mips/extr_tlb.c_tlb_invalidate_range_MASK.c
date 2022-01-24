#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  int register_t ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int TLBHI_ASID_MASK ; 
 int FUNC1 (scalar_t__,int) ; 
 int TLBMASK_SHIFT ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ num_tlbentries ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 

void
FUNC16(pmap_t pmap, vm_offset_t start, vm_offset_t end)
{
	register_t asid, end_hi, hi, hi_pagemask, s, save_asid, start_hi;
	int i;

	FUNC0(start < end || (end == 0 && start > 0),
	    ("tlb_invalidate_range: invalid range"));

	/*
	 * Truncate the virtual address "start" to an even page frame number,
	 * and round the virtual address "end" to an even page frame number.
	 */
	start &= ~((1 << TLBMASK_SHIFT) - 1);
	end = FUNC12(end, 1 << TLBMASK_SHIFT);

	s = FUNC2();
	save_asid = FUNC4() & TLBHI_ASID_MASK;

	asid = FUNC11(pmap);
	start_hi = FUNC1(start, asid);
	end_hi = FUNC1(end, asid);

	/*
	 * Select the fastest method for invalidating the TLB entries.
	 */
	if (end - start < num_tlbentries << TLBMASK_SHIFT || (end == 0 &&
	    start >= -(num_tlbentries << TLBMASK_SHIFT))) {
		/*
		 * The virtual address range is small compared to the size of
		 * the TLB.  Probe the TLB for each even numbered page frame
		 * within the virtual address range.
		 */
		for (hi = start_hi; hi != end_hi; hi += 1 << TLBMASK_SHIFT) {
			FUNC10(0);
			FUNC8(hi);
			FUNC14();
			i = FUNC5();
			if (i >= 0)
				FUNC13(i);
		}
	} else {
		/*
		 * The virtual address range is large compared to the size of
		 * the TLB.  Test every non-wired TLB entry.
		 */
		for (i = FUNC7(); i < num_tlbentries; i++) {
			FUNC9(i);
			FUNC15();
			hi = FUNC4();
			if ((hi & TLBHI_ASID_MASK) == asid && (hi < end_hi ||
			    end == 0)) {
				/*
				 * If "hi" is a large page that spans
				 * "start_hi", then it must be invalidated.
				 */
				hi_pagemask = FUNC6();
				if (hi >= (start_hi & ~(hi_pagemask <<
				    TLBMASK_SHIFT)))
					FUNC13(i);
			}
		}
	}

	FUNC8(save_asid);
	FUNC3(s);
}