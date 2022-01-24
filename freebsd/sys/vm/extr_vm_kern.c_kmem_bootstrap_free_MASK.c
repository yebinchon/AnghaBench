#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
struct vm_domain {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  v_page_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_PROT_RW ; 
 int /*<<< orphan*/  kernel_arena ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 TYPE_1__ vm_cnt ; 
 int /*<<< orphan*/  FUNC6 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC8 (struct vm_domain*,int) ; 
 struct vm_domain* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC12(vm_offset_t start, vm_size_t size)
{
#if defined(__i386__) || defined(__amd64__)
	struct vm_domain *vmd;
	vm_offset_t end, va;
	vm_paddr_t pa;
	vm_page_t m;

	end = FUNC5(start + size);
	start = FUNC4(start);

#ifdef __amd64__
	/*
	 * Preloaded files do not have execute permissions by default on amd64.
	 * Restore the default permissions to ensure that the direct map alias
	 * is updated.
	 */
	FUNC1(start, end - start, VM_PROT_RW);
#endif
	for (va = start; va < end; va += PAGE_SIZE) {
		pa = FUNC2(va);
		m = FUNC0(pa);

		vmd = FUNC9(m);
		FUNC6(vmd);
		FUNC10(m, 0);
		FUNC7(vmd);

		FUNC8(vmd, 1);
		vm_cnt.v_page_count++;
	}
	FUNC3(kernel_pmap, start, end);
	(void)FUNC11(kernel_arena, start, end - start, M_WAITOK);
#endif
}