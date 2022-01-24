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
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int* vm_offset_t ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ ) ; 
 int PTE_C_CACHE ; 
 int PTE_D ; 
 int PTE_G ; 
 int PTE_V ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmap1_addr ; 
 int /*<<< orphan*/  cmap1_ptep ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static __inline vm_offset_t
FUNC3(vm_paddr_t phys)
{
	FUNC2();
	*FUNC0(cmap1_ptep) =
	    FUNC1(phys) | PTE_C_CACHE | PTE_D | PTE_V | PTE_G;
	return (FUNC0(cmap1_addr));
}