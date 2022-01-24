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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int mp_maxid ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *mem, vm_size_t size, uint8_t flags)
{
	vm_offset_t sva, curva;
	vm_paddr_t paddr;
	vm_page_t m;

	FUNC0(size == (mp_maxid+1)*PAGE_SIZE);
	sva = (vm_offset_t)mem;
	for (curva = sva; curva < sva + size; curva += PAGE_SIZE) {
		paddr = FUNC3(curva);
		m = FUNC1(paddr);
		FUNC6(m);
		FUNC5(m);
	}
	FUNC4(sva, size >> PAGE_SHIFT);
	FUNC2(sva, size);
}