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
struct tte {scalar_t__ tte_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASI_DMMU_DEMAP ; 
 int /*<<< orphan*/  ASI_IMMU_DEMAP ; 
 int DCACHE_COLORS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  KERNBASE ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int TLB_DEMAP_NUCLEUS ; 
 int TLB_DEMAP_PAGE ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct tte*) ; 
 scalar_t__ VM_MIN_DIRECT_ADDRESS ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qmap_addr ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tte* FUNC7 (scalar_t__) ; 

void
FUNC8(vm_offset_t addr)
{
	vm_offset_t qaddr;
	struct tte *tp;

	if (addr >= VM_MIN_DIRECT_ADDRESS)
		return;

	tp = FUNC7(addr);
	qaddr = FUNC1(qmap_addr);
	
	FUNC0((addr >= qaddr) && (addr < (qaddr + (PAGE_SIZE * DCACHE_COLORS))),
	    ("pmap_quick_remove_page: invalid address"));
	FUNC0(tp->tte_data != 0, ("pmap_quick_remove_page: PTE not in use"));
	
	FUNC6(FUNC2(addr) | TLB_DEMAP_NUCLEUS | TLB_DEMAP_PAGE, ASI_DMMU_DEMAP, 0);
	FUNC6(FUNC2(addr) | TLB_DEMAP_NUCLEUS | TLB_DEMAP_PAGE, ASI_IMMU_DEMAP, 0);
	FUNC5(KERNBASE);
	FUNC3(tp);
	FUNC4();
}