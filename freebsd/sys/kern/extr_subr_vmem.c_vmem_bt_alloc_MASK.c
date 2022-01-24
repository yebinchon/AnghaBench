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
typedef  scalar_t__ vmem_addr_t ;
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  uma_zone_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  vmd_kernel_arena; } ;

/* Variables and functions */
 int M_BESTFIT ; 
 int M_NOVM ; 
 int M_NOWAIT ; 
 int M_USE_RESERVE ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  UMA_SLAB_KERNEL ; 
 int /*<<< orphan*/  VMEM_ADDR_MAX ; 
 int /*<<< orphan*/  VMEM_ADDR_MIN ; 
 int /*<<< orphan*/  kernel_object ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 TYPE_1__* vm_dom ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  vmem_bt_lock ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC7(uma_zone_t zone, vm_size_t bytes, int domain, uint8_t *pflag,
    int wait)
{
	vmem_addr_t addr;

	*pflag = UMA_SLAB_KERNEL;

	/*
	 * Single thread boundary tag allocation so that the address space
	 * and memory are added in one atomic operation.
	 */
	FUNC1(&vmem_bt_lock);
	if (FUNC5(vm_dom[domain].vmd_kernel_arena, bytes, 0, 0, 0,
	    VMEM_ADDR_MIN, VMEM_ADDR_MAX,
	    M_NOWAIT | M_NOVM | M_USE_RESERVE | M_BESTFIT, &addr) == 0) {
		if (FUNC0(domain, kernel_object, addr, bytes,
		    M_NOWAIT | M_USE_RESERVE) == 0) {
			FUNC2(&vmem_bt_lock);
			return ((void *)addr);
		}
		FUNC6(vm_dom[domain].vmd_kernel_arena, addr, bytes);
		FUNC2(&vmem_bt_lock);
		/*
		 * Out of memory, not address space.  This may not even be
		 * possible due to M_USE_RESERVE page allocation.
		 */
		if (wait & M_WAITOK)
			FUNC4(domain);
		return (NULL);
	}
	FUNC2(&vmem_bt_lock);
	/*
	 * We're either out of address space or lost a fill race.
	 */
	if (wait & M_WAITOK)
		FUNC3("btalloc", 1);

	return (NULL);
}