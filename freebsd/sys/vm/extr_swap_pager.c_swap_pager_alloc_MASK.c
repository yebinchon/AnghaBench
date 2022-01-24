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
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  int /*<<< orphan*/  vm_ooffset_t ;
typedef  TYPE_1__* vm_object_t ;
struct ucred {int dummy; } ;
struct TYPE_6__ {void* handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pager_object_list ; 
 int /*<<< orphan*/  sw_alloc_sx ; 
 TYPE_1__* FUNC2 (void*,struct ucred*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static vm_object_t
FUNC6(void *handle, vm_ooffset_t size, vm_prot_t prot,
    vm_ooffset_t offset, struct ucred *cred)
{
	vm_object_t object;

	if (handle != NULL) {
		/*
		 * Reference existing named region or allocate new one.  There
		 * should not be a race here against swp_pager_meta_build()
		 * as called from vm_page_remove() in regards to the lookup
		 * of the handle.
		 */
		FUNC3(&sw_alloc_sx);
		object = FUNC5(FUNC0(handle), handle);
		if (object == NULL) {
			object = FUNC2(handle, cred, size,
			    offset);
			if (object != NULL) {
				FUNC1(FUNC0(object->handle),
				    object, pager_object_list);
			}
		}
		FUNC4(&sw_alloc_sx);
	} else {
		object = FUNC2(handle, cred, size, offset);
	}
	return (object);
}