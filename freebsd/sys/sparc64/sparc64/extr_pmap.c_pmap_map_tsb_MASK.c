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
typedef  scalar_t__ vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int u_long ;

/* Variables and functions */
 int /*<<< orphan*/  AA_DMMU_TAR ; 
 int /*<<< orphan*/  ASI_DMMU ; 
 int /*<<< orphan*/  ASI_DTLB_DATA_IN_REG ; 
 scalar_t__ PAGE_SIZE_4M ; 
 int TD_4M ; 
 int TD_CP ; 
 int TD_CV ; 
 int TD_L ; 
 int TD_P ; 
 int FUNC0 (scalar_t__) ; 
 int TD_V ; 
 int TD_W ; 
 int /*<<< orphan*/  TLB_CTX_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ tsb_kernel ; 
 scalar_t__ tsb_kernel_phys ; 
 int tsb_kernel_size ; 

void
FUNC5(void)
{
	vm_offset_t va;
	vm_paddr_t pa;
	u_long data;
	int i;

	for (i = 0; i < tsb_kernel_size; i += PAGE_SIZE_4M) {
		va = (vm_offset_t)tsb_kernel + i;
		pa = tsb_kernel_phys + i;
		data = TD_V | TD_4M | FUNC0(pa) | TD_L | TD_CP | TD_CV |
		    TD_P | TD_W;
		FUNC3(AA_DMMU_TAR, ASI_DMMU, FUNC2(va) |
		    FUNC1(TLB_CTX_KERNEL));
		FUNC4(0, ASI_DTLB_DATA_IN_REG, data);
	}
}