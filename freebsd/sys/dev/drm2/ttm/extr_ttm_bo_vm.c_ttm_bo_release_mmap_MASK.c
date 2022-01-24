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
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int /*<<< orphan*/ * vm_object_t ;
struct ttm_buffer_object {int num_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_ALLOC_WAITFAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 

void
FUNC7(struct ttm_buffer_object *bo)
{
	vm_object_t vm_obj;
	vm_page_t m;
	int i;

	vm_obj = FUNC3(bo);
	if (vm_obj == NULL)
		return;

	FUNC0(vm_obj);
retry:
	for (i = 0; i < bo->num_pages; i++) {
		m = FUNC6(vm_obj, i);
		if (m == NULL)
			continue;
		if (FUNC5(m, VM_ALLOC_WAITFAIL) == 0)
			goto retry;
		FUNC2(vm_obj, m);
	}
	FUNC1(vm_obj);

	FUNC4(vm_obj);
}