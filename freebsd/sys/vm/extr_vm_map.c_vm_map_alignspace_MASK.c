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
typedef  int /*<<< orphan*/  vm_ooffset_t ;
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  int /*<<< orphan*/  uintmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int KERN_NO_SPACE ; 
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(vm_map_t map, vm_object_t object, vm_ooffset_t offset,
    vm_offset_t *addr, vm_size_t length, vm_offset_t max_addr,
    vm_offset_t alignment)
{
	vm_offset_t aligned_addr, free_addr;

	FUNC1(map);
	free_addr = *addr;
	FUNC0(free_addr == FUNC3(map, free_addr, length),
	    ("caller failed to provide space %#jx at address %p",
	     (uintmax_t)length, (void *)free_addr));
	for (;;) {
		/*
		 * At the start of every iteration, the free space at address
		 * "*addr" is at least "length" bytes.
		 */
		if (alignment == 0)
			FUNC2(object, offset, addr, length);
		else if ((*addr & (alignment - 1)) != 0) {
			*addr &= ~(alignment - 1);
			*addr += alignment;
		}
		aligned_addr = *addr;
		if (aligned_addr == free_addr) {
			/*
			 * Alignment did not change "*addr", so "*addr" must
			 * still provide sufficient free space.
			 */
			return (KERN_SUCCESS);
		}

		/*
		 * Test for address wrap on "*addr".  A wrapped "*addr" could
		 * be a valid address, in which case vm_map_findspace() cannot
		 * be relied upon to fail.
		 */
		if (aligned_addr < free_addr)
			return (KERN_NO_SPACE);
		*addr = FUNC3(map, aligned_addr, length);
		if (*addr + length > FUNC4(map) ||
		    (max_addr != 0 && *addr + length > max_addr))
			return (KERN_NO_SPACE);
		free_addr = *addr;
		if (free_addr == aligned_addr) {
			/*
			 * If a successful call to vm_map_findspace() did not
			 * change "*addr", then "*addr" must still be aligned
			 * and provide sufficient free space.
			 */
			return (KERN_SUCCESS);
		}
	}
}