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
typedef  void* vm_paddr_t ;
typedef  int u_long ;

/* Variables and functions */
 int /*<<< orphan*/  AA_DMMU_PWPR ; 
 int /*<<< orphan*/  ASI_DMMU ; 
 int /*<<< orphan*/  ASI_LSU_CTL_REG ; 
 int LSU_PM_MASK ; 
 int LSU_PM_SHIFT ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

vm_paddr_t
FUNC2(int *bm)
{
	vm_paddr_t pa;
	u_long lsucr;
	
	if (!FUNC1())
		return (0);

	pa = FUNC0(AA_DMMU_PWPR, ASI_DMMU);
	lsucr = FUNC0(0, ASI_LSU_CTL_REG);
	*bm = (lsucr & LSU_PM_MASK) >> LSU_PM_SHIFT;
	
	return (pa);
}