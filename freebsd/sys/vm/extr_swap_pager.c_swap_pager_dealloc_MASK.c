#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_object_t ;
struct TYPE_9__ {int flags; int /*<<< orphan*/  type; int /*<<< orphan*/ * handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBJT_DEAD ; 
 int OBJ_DEAD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  pager_object_list ; 
 int /*<<< orphan*/  sw_alloc_sx ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 

__attribute__((used)) static void
FUNC10(vm_object_t object)
{

	FUNC3(object);
	FUNC0((object->flags & OBJ_DEAD) != 0, ("dealloc of reachable obj"));

	/*
	 * Remove from list right away so lookups will fail if we block for
	 * pageout completion.
	 */
	if (object->handle != NULL) {
		FUNC5(object);
		FUNC7(&sw_alloc_sx);
		FUNC2(FUNC1(object->handle), object,
		    pager_object_list);
		FUNC8(&sw_alloc_sx);
		FUNC4(object);
	}

	FUNC9(object, "swpdea");

	/*
	 * Free all remaining metadata.  We only bother to free it from
	 * the swap meta data.  We do not attempt to free swapblk's still
	 * associated with vm_page_t's for this object.  We do not care
	 * if paging is still in progress on some objects.
	 */
	FUNC6(object);
	object->handle = NULL;
	object->type = OBJT_DEAD;
}