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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int vm_offset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int L2_SIZE ; 
 int PAGE_MASK ; 
 int VM_MAX_KERNEL_ADDRESS ; 
 int akva_devmap_vaddr ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ early_boot ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int) ; 

void *
FUNC7(vm_offset_t pa, vm_size_t size)
{
	vm_offset_t va, offset;
	void * rva;

	/* First look in the static mapping table. */
	if ((rva = FUNC1(pa, size)) != NULL)
		return (rva);

	offset = pa & PAGE_MASK;
	pa = FUNC6(pa);
	size = FUNC5(size + offset);

#if defined(__aarch64__) || defined(__riscv)
	if (early_boot) {
		akva_devmap_vaddr = trunc_page(akva_devmap_vaddr - size);
		va = akva_devmap_vaddr;
		KASSERT(va >= VM_MAX_KERNEL_ADDRESS - L2_SIZE,
		    ("Too many early devmap mappings"));
	} else
#endif
		va = FUNC2(size);
	if (!va)
		FUNC3("pmap_mapdev: Couldn't alloc kernel virtual memory");

	FUNC4(va, size, pa);

	return ((void *)(va + offset));
}