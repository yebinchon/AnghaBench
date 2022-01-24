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

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  VM_MEMATTR_DEFAULT ; 
 scalar_t__ FUNC0 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static inline void *
FUNC3(size_t size, vm_paddr_t *dma_handle)
{
	size_t	align;
	void	*mem;

	align = PAGE_SIZE << FUNC1(size);
	mem = (void *)FUNC0(size, M_WAITOK, 0, ~0ul, align, 0,
	    VM_MEMATTR_DEFAULT);
	if (mem != NULL)
		*dma_handle = FUNC2(mem);
	else
		*dma_handle = 0;

	return (mem);
}