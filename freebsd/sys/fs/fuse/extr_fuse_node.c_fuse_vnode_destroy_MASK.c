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
struct vnode {struct fuse_vnode_data* v_data; } ;
struct fuse_vnode_data {int /*<<< orphan*/  handles; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_FUSEVN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_vnode_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fuse_node_count ; 

void
FUNC4(struct vnode *vp)
{
	struct fuse_vnode_data *fvdat = vp->v_data;

	vp->v_data = NULL;
	FUNC0(FUNC1(&fvdat->handles),
		("Destroying fuse vnode with open files!"));
	FUNC3(fvdat, M_FUSEVN);

	FUNC2(fuse_node_count, -1);
}