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
typedef  TYPE_3__* vm_object_t ;
struct vnode {scalar_t__ v_type; scalar_t__ v_writecount; } ;
struct TYPE_8__ {int /*<<< orphan*/ * swp_tmpfs; } ;
struct TYPE_9__ {TYPE_1__ swp; } ;
struct TYPE_10__ {TYPE_2__ un_pager; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  OBJ_TMPFS ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct vnode *vp, vm_object_t obj)
{

	FUNC0(vp, "tmpfs_destroy_vobject");
	if (vp->v_type != VREG || obj == NULL)
		return;

	FUNC3(obj);
	FUNC1(vp);
	FUNC5(obj, OBJ_TMPFS);
	obj->un_pager.swp.swp_tmpfs = NULL;
	if (vp->v_writecount < 0)
		vp->v_writecount = 0;
	FUNC2(vp);
	FUNC4(obj);
}