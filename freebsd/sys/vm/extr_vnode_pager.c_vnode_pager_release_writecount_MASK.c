#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_3__* vm_object_t ;
struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct TYPE_8__ {scalar_t__ writemappings; } ;
struct TYPE_9__ {TYPE_1__ vnp; } ;
struct TYPE_10__ {scalar_t__ type; struct vnode* handle; TYPE_2__ un_pager; } ;

/* Variables and functions */
 int LK_RETRY ; 
 int LK_SHARED ; 
 scalar_t__ OBJT_VNODE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_WAIT ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,struct mount**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC9(vm_object_t object, vm_offset_t start,
    vm_offset_t end)
{
	struct vnode *vp;
	struct mount *mp;
	vm_offset_t inc;

	FUNC0(object);

	/*
	 * First, recheck the object type to account for the race when
	 * the vnode is reclaimed.
	 */
	if (object->type != OBJT_VNODE) {
		FUNC1(object);
		return;
	}

	/*
	 * Optimize for the case when writemappings is not going to
	 * zero.
	 */
	inc = end - start;
	if (object->un_pager.vnp.writemappings != inc) {
		object->un_pager.vnp.writemappings -= inc;
		FUNC1(object);
		return;
	}

	vp = object->handle;
	FUNC4(vp);
	FUNC1(object);
	mp = NULL;
	FUNC7(vp, &mp, V_WAIT);
	FUNC6(vp, LK_SHARED | LK_RETRY);

	/*
	 * Decrement the object's writemappings, by swapping the start
	 * and end arguments for vnode_pager_update_writecount().  If
	 * there was not a race with vnode reclaimation, then the
	 * vnode's v_writecount is decremented.
	 */
	FUNC8(object, end, start);
	FUNC2(vp, 0);
	FUNC3(vp);
	if (mp != NULL)
		FUNC5(mp);
}