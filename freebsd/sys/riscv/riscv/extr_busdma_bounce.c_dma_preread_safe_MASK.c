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
typedef  int vm_size_t ;
typedef  int vm_offset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int dcache_line_size ; 

__attribute__((used)) static void
FUNC2(vm_offset_t va, vm_size_t size)
{
	/*
	 * Write back any partial cachelines immediately before and
	 * after the DMA region.
	 */
	if (va & (dcache_line_size - 1))
		FUNC1(va, 1);
	if ((va + size) & (dcache_line_size - 1))
		FUNC1(va + size, 1);

	FUNC0(va, size);
}