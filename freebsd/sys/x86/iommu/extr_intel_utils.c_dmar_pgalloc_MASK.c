#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
struct TYPE_6__ {int flags; } ;

/* Variables and functions */
 int DMAR_PGF_NOALLOC ; 
 int DMAR_PGF_OBJL ; 
 int DMAR_PGF_WAITOK ; 
 int DMAR_PGF_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PG_ZERO ; 
 int VM_ALLOC_NOBUSY ; 
 int VM_ALLOC_NODUMP ; 
 int VM_ALLOC_NOWAIT ; 
 int VM_ALLOC_SYSTEM ; 
 int VM_ALLOC_WAITFAIL ; 
 int VM_ALLOC_ZERO ; 
 int /*<<< orphan*/  VM_MEMATTR_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  dmar_high ; 
 int /*<<< orphan*/  dmar_tbl_pagecnt ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

vm_page_t
FUNC6(vm_object_t obj, vm_pindex_t idx, int flags)
{
	vm_page_t m;
	int zeroed, aflags;

	zeroed = (flags & DMAR_PGF_ZERO) != 0 ? VM_ALLOC_ZERO : 0;
	aflags = zeroed | VM_ALLOC_NOBUSY | VM_ALLOC_SYSTEM | VM_ALLOC_NODUMP |
	    ((flags & DMAR_PGF_WAITOK) != 0 ? VM_ALLOC_WAITFAIL :
	    VM_ALLOC_NOWAIT);
	for (;;) {
		if ((flags & DMAR_PGF_OBJL) == 0)
			FUNC0(obj);
		m = FUNC5(obj, idx);
		if ((flags & DMAR_PGF_NOALLOC) != 0 || m != NULL) {
			if ((flags & DMAR_PGF_OBJL) == 0)
				FUNC1(obj);
			break;
		}
		m = FUNC4(obj, idx, aflags, 1, 0,
		    dmar_high, PAGE_SIZE, 0, VM_MEMATTR_DEFAULT);
		if ((flags & DMAR_PGF_OBJL) == 0)
			FUNC1(obj);
		if (m != NULL) {
			if (zeroed && (m->flags & PG_ZERO) == 0)
				FUNC3(m);
			FUNC2(&dmar_tbl_pagecnt, 1);
			break;
		}
		if ((flags & DMAR_PGF_WAITOK) == 0)
			break;
	}
	return (m);
}