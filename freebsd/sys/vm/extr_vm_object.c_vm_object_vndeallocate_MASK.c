#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_object_t ;
struct vnode {int dummy; } ;
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/  ref_count; scalar_t__ handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ OBJT_VNODE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  umtx_shm_vnobj_persistent ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 

__attribute__((used)) static void
FUNC5(vm_object_t object)
{
	struct vnode *vp = (struct vnode *) object->handle;

	FUNC0(object->type == OBJT_VNODE,
	    ("vm_object_vndeallocate: not a vnode object"));
	FUNC0(vp != NULL, ("vm_object_vndeallocate: missing vp"));

	if (FUNC2(&object->ref_count) &&
	    !umtx_shm_vnobj_persistent)
		FUNC3(object);

	FUNC1(object);
	/* vrele may need the vnode lock. */
	FUNC4(vp);
}