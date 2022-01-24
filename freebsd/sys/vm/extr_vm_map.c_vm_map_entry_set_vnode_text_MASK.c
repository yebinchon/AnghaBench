#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_4__* vm_object_t ;
typedef  TYPE_5__* vm_map_entry_t ;
struct vnode {int dummy; } ;
struct TYPE_9__ {TYPE_4__* vm_object; } ;
struct TYPE_13__ {int eflags; TYPE_1__ object; } ;
struct TYPE_10__ {struct vnode* swp_tmpfs; } ;
struct TYPE_11__ {TYPE_2__ swp; } ;
struct TYPE_12__ {scalar_t__ type; int flags; TYPE_3__ un_pager; struct vnode* handle; struct TYPE_12__* backing_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int MAP_ENTRY_IS_SUB_MAP ; 
 int MAP_ENTRY_VN_EXEC ; 
 scalar_t__ OBJT_DEAD ; 
 scalar_t__ OBJT_SWAP ; 
 scalar_t__ OBJT_VNODE ; 
 int OBJ_TMPFS ; 
 int OBJ_TMPFS_NODE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,int) ; 

void
FUNC9(vm_map_entry_t entry, bool add)
{
	vm_object_t object, object1;
	struct vnode *vp;

	if ((entry->eflags & MAP_ENTRY_VN_EXEC) == 0)
		return;
	FUNC0((entry->eflags & MAP_ENTRY_IS_SUB_MAP) == 0,
	    ("Submap with execs"));
	object = entry->object.vm_object;
	FUNC0(object != NULL, ("No object for text, entry %p", entry));
	FUNC1(object);
	while ((object1 = object->backing_object) != NULL) {
		FUNC1(object1);
		FUNC2(object);
		object = object1;
	}

	vp = NULL;
	if (object->type == OBJT_DEAD) {
		/*
		 * For OBJT_DEAD objects, v_writecount was handled in
		 * vnode_pager_dealloc().
		 */
	} else if (object->type == OBJT_VNODE) {
		vp = object->handle;
	} else if (object->type == OBJT_SWAP) {
		FUNC0((object->flags & OBJ_TMPFS_NODE) != 0,
		    ("vm_map_entry_set_vnode_text: swap and !TMPFS "
		    "entry %p, object %p, add %d", entry, object, add));
		/*
		 * Tmpfs VREG node, which was reclaimed, has
		 * OBJ_TMPFS_NODE flag set, but not OBJ_TMPFS.  In
		 * this case there is no v_writecount to adjust.
		 */
		if ((object->flags & OBJ_TMPFS) != 0)
			vp = object->un_pager.swp.swp_tmpfs;
	} else {
		FUNC0(0,
		    ("vm_map_entry_set_vnode_text: wrong object type, "
		    "entry %p, object %p, add %d", entry, object, add));
	}
	if (vp != NULL) {
		if (add) {
			FUNC3(vp);
			FUNC2(object);
		} else {
			FUNC7(vp);
			FUNC2(object);
			FUNC8(vp, LK_SHARED | LK_RETRY);
			FUNC5(vp);
			FUNC4(vp, 0);
			FUNC6(vp);
		}
	} else {
		FUNC2(object);
	}
}