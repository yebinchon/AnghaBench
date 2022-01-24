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
struct vnode {scalar_t__ v_type; struct vm_object* v_object; } ;
struct vm_object {int flags; scalar_t__ generation; scalar_t__ cleangeneration; } ;
struct tmpfs_node {int tn_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int OBJ_TMPFS ; 
 int OBJ_TMPFS_NODE ; 
 int TMPFS_NODE_CHANGED ; 
 int TMPFS_NODE_MODIFIED ; 
 int /*<<< orphan*/  FUNC2 (struct vm_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_object*) ; 
 struct tmpfs_node* FUNC4 (struct vnode*) ; 
 scalar_t__ VREG ; 

void
FUNC5(struct vnode *vp)
{
	struct tmpfs_node *node;
	struct vm_object *obj;

	FUNC0(vp, "check_mtime");
	if (vp->v_type != VREG)
		return;
	obj = vp->v_object;
	FUNC1((obj->flags & (OBJ_TMPFS_NODE | OBJ_TMPFS)) ==
	    (OBJ_TMPFS_NODE | OBJ_TMPFS), ("non-tmpfs obj"));
	/* unlocked read */
	if (obj->generation != obj->cleangeneration) {
		FUNC2(obj);
		if (obj->generation != obj->cleangeneration) {
			obj->cleangeneration = obj->generation;
			node = FUNC4(vp);
			node->tn_status |= TMPFS_NODE_MODIFIED |
			    TMPFS_NODE_CHANGED;
		}
		FUNC3(obj);
	}
}