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
typedef  int /*<<< orphan*/  vmem_t ;
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct TYPE_2__ {int /*<<< orphan*/ * vmd_kernel_arena; int /*<<< orphan*/ * vmd_kernel_rwx_arena; } ;

/* Variables and functions */
 int KERN_SUCCESS ; 
 int M_BESTFIT ; 
 int M_EXEC ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  kernel_object ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* vm_dom ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_offset_t
FUNC5(int domain, vm_size_t size, int flags)
{
	vmem_t *arena;
	vm_offset_t addr;
	int rv;

#if VM_NRESERVLEVEL > 0
	if (__predict_true((flags & M_EXEC) == 0))
		arena = vm_dom[domain].vmd_kernel_arena;
	else
		arena = vm_dom[domain].vmd_kernel_rwx_arena;
#else
	arena = vm_dom[domain].vmd_kernel_arena;
#endif
	size = FUNC2(size);
	if (FUNC3(arena, size, flags | M_BESTFIT, &addr))
		return (0);

	rv = FUNC1(domain, kernel_object, addr, size, flags);
	if (rv != KERN_SUCCESS) {
		FUNC4(arena, addr, size);
		return (0);
	}
	return (addr);
}