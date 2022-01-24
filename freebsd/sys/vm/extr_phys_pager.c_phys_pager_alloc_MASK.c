#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  scalar_t__ vm_pindex_t ;
typedef  int vm_ooffset_t ;
typedef  TYPE_1__* vm_object_t ;
struct ucred {int dummy; } ;
struct TYPE_8__ {scalar_t__ size; void* handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJT_PHYS ; 
 int /*<<< orphan*/  OBJ_POPULATE ; 
 scalar_t__ FUNC0 (int) ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pager_object_list ; 
 int /*<<< orphan*/  phys_pager_mtx ; 
 int /*<<< orphan*/  phys_pager_object_list ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static vm_object_t
FUNC8(void *handle, vm_ooffset_t size, vm_prot_t prot,
    vm_ooffset_t foff, struct ucred *cred)
{
	vm_object_t object, object1;
	vm_pindex_t pindex;

	/*
	 * Offset should be page aligned.
	 */
	if (foff & PAGE_MASK)
		return (NULL);

	pindex = FUNC0(foff + PAGE_MASK + size);

	if (handle != NULL) {
		FUNC2(&phys_pager_mtx);
		/*
		 * Look up pager, creating as necessary.
		 */
		object1 = NULL;
		object = FUNC7(&phys_pager_object_list, handle);
		if (object == NULL) {
			/*
			 * Allocate object and associate it with the pager.
			 */
			FUNC3(&phys_pager_mtx);
			object1 = FUNC4(OBJT_PHYS, pindex);
			FUNC2(&phys_pager_mtx);
			object = FUNC7(&phys_pager_object_list,
			    handle);
			if (object != NULL) {
				/*
				 * We raced with other thread while
				 * allocating object.
				 */
				if (pindex > object->size)
					object->size = pindex;
			} else {
				object = object1;
				object1 = NULL;
				object->handle = handle;
				FUNC6(object, OBJ_POPULATE);
				FUNC1(&phys_pager_object_list,
				    object, pager_object_list);
			}
		} else {
			if (pindex > object->size)
				object->size = pindex;
		}
		FUNC3(&phys_pager_mtx);
		FUNC5(object1);
	} else {
		object = FUNC4(OBJT_PHYS, pindex);
		FUNC6(object, OBJ_POPULATE);
	}

	return (object);
}