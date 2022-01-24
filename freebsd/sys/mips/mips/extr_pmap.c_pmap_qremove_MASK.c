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
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  pt_entry_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PTE_G ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 

void
FUNC3(vm_offset_t va, int count)
{
	pt_entry_t *pte;
	vm_offset_t origva;

	if (count < 1)
		return;
	FUNC0(va, PAGE_SIZE * count);
	origva = va;
	do {
		pte = FUNC2(kernel_pmap, va);
		*pte = PTE_G;
		va += PAGE_SIZE;
	} while (--count > 0);
	FUNC1(kernel_pmap, origva, va);
}