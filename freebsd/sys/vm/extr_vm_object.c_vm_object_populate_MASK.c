#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
typedef  int boolean_t ;
struct TYPE_7__ {scalar_t__ pindex; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_ALLOC_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int VM_PAGER_OK ; 
 int /*<<< orphan*/  listq ; 
 int FUNC2 (TYPE_1__**,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

boolean_t
FUNC5(vm_object_t object, vm_pindex_t start, vm_pindex_t end)
{
	vm_page_t m;
	vm_pindex_t pindex;
	int rv;

	FUNC1(object);
	for (pindex = start; pindex < end; pindex++) {
		rv = FUNC2(&m, object, pindex, VM_ALLOC_NORMAL);
		if (rv != VM_PAGER_OK)
			break;

		/*
		 * Keep "m" busy because a subsequent iteration may unlock
		 * the object.
		 */
	}
	if (pindex > start) {
		m = FUNC3(object, start);
		while (m != NULL && m->pindex < pindex) {
			FUNC4(m);
			m = FUNC0(m, listq);
		}
	}
	return (pindex == end);
}