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
typedef  int vm_paddr_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int BDW_GMCH_GMS_MASK ; 
 int BDW_GMCH_GMS_SHIFT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  SNB_GMCH_CTRL ; 
 int FUNC1 (int,int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static vm_paddr_t
FUNC2(int bus, int slot, int func)
{
	uint32_t ctrl;
	vm_paddr_t val;

	ctrl = FUNC1(bus, slot, func, SNB_GMCH_CTRL, 2);
	val = (ctrl >> BDW_GMCH_GMS_SHIFT) & BDW_GMCH_GMS_MASK;

	/* 0x0  to 0xEF: 32MB increments starting at 0MB */
	/* 0xF0 to 0xFE: 4MB increments starting at 4MB */
	if (val < 0xF0)
		return (val * FUNC0(32));
	return ((val - 0xF0) * FUNC0(4) + FUNC0(4));
}