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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int u_long ;

/* Variables and functions */
 int /*<<< orphan*/  AA_DMMU_VWPR ; 
 int /*<<< orphan*/  ASI_DMMU ; 
 int /*<<< orphan*/  ASI_LSU_CTL_REG ; 
 int LSU_VM_MASK ; 
 int LSU_VM_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

vm_offset_t
FUNC2(int *bm)
{
	u_long va;
	u_long lsucr;
	
	if (!FUNC1())
		return (0);

	va = FUNC0(AA_DMMU_VWPR, ASI_DMMU);
	lsucr = FUNC0(0, ASI_LSU_CTL_REG);
	*bm = (lsucr & LSU_VM_MASK) >> LSU_VM_SHIFT;
	
	return ((vm_offset_t)va);
}