#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_ooffset_t ;
typedef  TYPE_3__* vm_object_t ;
struct ucred {int dummy; } ;
struct TYPE_6__ {scalar_t__ writemappings; } ;
struct TYPE_7__ {TYPE_1__ swp; } ;
struct TYPE_8__ {scalar_t__ charge; struct ucred* cred; void* handle; TYPE_2__ un_pager; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJT_SWAP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ PAGE_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct ucred*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_object_t
FUNC4(void *handle, struct ucred *cred, vm_ooffset_t size,
    vm_ooffset_t offset)
{
	vm_object_t object;

	if (cred != NULL) {
		if (!FUNC2(size, cred))
			return (NULL);
		FUNC1(cred);
	}

	/*
	 * The un_pager.swp.swp_blks trie is initialized by
	 * vm_object_allocate() to ensure the correct order of
	 * visibility to other threads.
	 */
	object = FUNC3(OBJT_SWAP, FUNC0(offset +
	    PAGE_MASK + size));

	object->un_pager.swp.writemappings = 0;
	object->handle = handle;
	if (cred != NULL) {
		object->cred = cred;
		object->charge = size;
	}
	return (object);
}