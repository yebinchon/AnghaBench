#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/  uma_zone_t ;
typedef  int /*<<< orphan*/  u_int8_t ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  phys_addr; } ;

/* Variables and functions */
 int M_NODUMP ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PG_ZERO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UMA_SLAB_PRIV ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_WIRED ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

void *
FUNC5(uma_zone_t zone, vm_size_t bytes, int domain, u_int8_t *flags,
    int wait)
{
	vm_page_t m;
	vm_paddr_t pa;
	void *va;

	*flags = UMA_SLAB_PRIV;
	m = FUNC4(NULL, 0, domain,
	    FUNC3(wait) | VM_ALLOC_NOOBJ | VM_ALLOC_WIRED);
	if (m == NULL)
		return (NULL);
	pa = m->phys_addr;
	if ((wait & M_NODUMP) == 0)
		FUNC2(pa);
	va = (void *)FUNC0(pa);
	if ((wait & M_ZERO) && (m->flags & PG_ZERO) == 0)
		FUNC1(va, PAGE_SIZE);
	return (va);
}