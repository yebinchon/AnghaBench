#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vop_open_args {int a_mode; int /*<<< orphan*/  a_td; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
struct TYPE_4__ {TYPE_1__* tn_aobj; } ;
struct tmpfs_node {int tn_links; int tn_flags; int /*<<< orphan*/  tn_size; TYPE_2__ tn_reg; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int APPEND ; 
 int ENOENT ; 
 int EPERM ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int OBJ_DEAD ; 
 int O_APPEND ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 struct tmpfs_node* FUNC3 (struct vnode*) ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct vop_open_args *v)
{
	struct vnode *vp = v->a_vp;
	int mode = v->a_mode;

	int error;
	struct tmpfs_node *node;

	FUNC1(FUNC2(vp));

	node = FUNC3(vp);

	/* The file is still active but all its names have been removed
	 * (e.g. by a "rmdir $(pwd)").  It cannot be opened any more as
	 * it is about to die. */
	if (node->tn_links < 1)
		return (ENOENT);

	/* If the file is marked append-only, deny write requests. */
	if (node->tn_flags & APPEND && (mode & (FWRITE | O_APPEND)) == FWRITE)
		error = EPERM;
	else {
		error = 0;
		/* For regular files, the call below is nop. */
		FUNC0(vp->v_type != VREG || (node->tn_reg.tn_aobj->flags &
		    OBJ_DEAD) == 0, ("dead object"));
		FUNC4(vp, node->tn_size, v->a_td);
	}

	FUNC1(FUNC2(vp));
	return error;
}