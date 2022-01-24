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
struct vnode {int dummy; } ;
struct fuse_vnode_data {int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FN_REVOKED ; 
 struct fuse_vnode_data* FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 

void
FUNC3(struct vnode *vp)
{
	struct fuse_vnode_data *fvdat = FUNC1(vp);

	FUNC0(vp, "fuse_internal_vnode_disappear");
	fvdat->flag |= FN_REVOKED;
	FUNC2(vp);
}