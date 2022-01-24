#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_pindex_t ;
typedef  TYPE_1__* vm_object_t ;
struct TYPE_13__ {int /*<<< orphan*/  type; int /*<<< orphan*/  size; int /*<<< orphan*/ * handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBJT_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  pager_object_list ; 
 int /*<<< orphan*/  sw_alloc_sx ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

void
FUNC11(vm_object_t srcobject, vm_object_t dstobject,
    vm_pindex_t offset, int destroysource)
{

	FUNC2(srcobject);
	FUNC2(dstobject);

	/*
	 * If destroysource is set, we remove the source object from the
	 * swap_pager internal queue now.
	 */
	if (destroysource && srcobject->handle != NULL) {
		FUNC9(srcobject, 1);
		FUNC4(srcobject);
		FUNC9(dstobject, 1);
		FUNC4(dstobject);
		FUNC7(&sw_alloc_sx);
		FUNC1(FUNC0(srcobject->handle), srcobject,
		    pager_object_list);
		FUNC8(&sw_alloc_sx);
		FUNC3(dstobject);
		FUNC10(dstobject);
		FUNC3(srcobject);
		FUNC10(srcobject);
	}

	/*
	 * Transfer source to destination.
	 */
	FUNC6(srcobject, dstobject, offset, dstobject->size);

	/*
	 * Free left over swap blocks in source.
	 *
	 * We have to revert the type to OBJT_DEFAULT so we do not accidentally
	 * double-remove the object from the swap queues.
	 */
	if (destroysource) {
		FUNC5(srcobject);
		/*
		 * Reverting the type is not necessary, the caller is going
		 * to destroy srcobject directly, but I'm doing it here
		 * for consistency since we've removed the object from its
		 * queues.
		 */
		srcobject->type = OBJT_DEFAULT;
	}
}