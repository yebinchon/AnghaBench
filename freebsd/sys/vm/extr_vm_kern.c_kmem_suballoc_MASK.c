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
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/ * vm_map_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  MAP_ACC_NO_CHARGE ; 
 int /*<<< orphan*/  VMFS_ANY_SPACE ; 
 int /*<<< orphan*/  VMFS_SUPER_SPACE ; 
 int /*<<< orphan*/  VM_PROT_ALL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 

vm_map_t
FUNC7(vm_map_t parent, vm_offset_t *min, vm_offset_t *max,
    vm_size_t size, boolean_t superpage_align)
{
	int ret;
	vm_map_t result;

	size = FUNC1(size);

	*min = FUNC4(parent);
	ret = FUNC3(parent, NULL, 0, min, size, 0, superpage_align ?
	    VMFS_SUPER_SPACE : VMFS_ANY_SPACE, VM_PROT_ALL, VM_PROT_ALL,
	    MAP_ACC_NO_CHARGE);
	if (ret != KERN_SUCCESS)
		FUNC0("kmem_suballoc: bad status return of %d", ret);
	*max = *min + size;
	result = FUNC2(FUNC5(parent), *min, *max);
	if (result == NULL)
		FUNC0("kmem_suballoc: cannot create submap");
	if (FUNC6(parent, *min, *max, result) != KERN_SUCCESS)
		FUNC0("kmem_suballoc: unable to change range to submap");
	return (result);
}