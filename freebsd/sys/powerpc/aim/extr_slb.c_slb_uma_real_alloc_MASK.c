#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  uma_zone_t ;
typedef  int /*<<< orphan*/  u_int8_t ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int DMAP_BASE_ADDRESS ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PG_ZERO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  UMA_SLAB_PRIV ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_WIRED ; 
 int /*<<< orphan*/  VM_MEMATTR_DEFAULT ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ hw_direct_map ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC7(uma_zone_t zone, vm_size_t bytes, int domain,
    u_int8_t *flags, int wait)
{
	static vm_offset_t realmax = 0;
	void *va;
	vm_page_t m;

	if (realmax == 0)
		realmax = FUNC4();

	*flags = UMA_SLAB_PRIV;
	m = FUNC6(NULL, 0, domain,
	    FUNC3(wait) | VM_ALLOC_NOOBJ | VM_ALLOC_WIRED,
	    1, 0, realmax, PAGE_SIZE, PAGE_SIZE, VM_MEMATTR_DEFAULT);
	if (m == NULL)
		return (NULL);

	if (hw_direct_map)
		va = (void *)FUNC0(FUNC1(m));
	else {
		va = (void *)(FUNC1(m) | DMAP_BASE_ADDRESS);
		FUNC5((vm_offset_t)va, FUNC1(m));
	}

	if ((wait & M_ZERO) && (m->flags & PG_ZERO) == 0)
		FUNC2(va, PAGE_SIZE);

	return (va);
}