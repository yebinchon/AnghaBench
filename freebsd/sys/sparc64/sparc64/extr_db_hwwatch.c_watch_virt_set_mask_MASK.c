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
typedef  unsigned long vm_offset_t ;
typedef  unsigned long u_long ;

/* Variables and functions */
 int /*<<< orphan*/  AA_DMMU_VWPR ; 
 int /*<<< orphan*/  ASI_DMMU ; 
 int /*<<< orphan*/  ASI_LSU_CTL_REG ; 
 unsigned long LSU_VM_MASK ; 
 unsigned long LSU_VM_SHIFT ; 
 unsigned long LSU_VW ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

int
FUNC2(vm_offset_t va, u_long mask)
{
	u_long lsucr;

	FUNC1(AA_DMMU_VWPR, ASI_DMMU, va & (((2UL << 41) - 1) << 3));
	lsucr = FUNC0(0, ASI_LSU_CTL_REG);
	lsucr = ((lsucr | LSU_VW) & ~LSU_VM_MASK) |
	    (mask << LSU_VM_SHIFT);
	FUNC1(0, ASI_LSU_CTL_REG, lsucr);
	return (0);
}