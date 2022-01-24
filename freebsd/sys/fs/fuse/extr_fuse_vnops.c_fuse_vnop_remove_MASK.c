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
struct vop_remove_args {struct componentname* a_cnp; struct vnode* a_vp; struct vnode* a_dvp; } ;
struct vnode {int dummy; } ;
struct componentname {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int EPERM ; 
 int /*<<< orphan*/  FUSE_UNLINK ; 
 int FUNC0 (struct vnode*,struct vnode*,struct componentname*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct vnode*) ; 
 scalar_t__ FUNC2 (struct vnode*) ; 

__attribute__((used)) static int
FUNC3(struct vop_remove_args *ap)
{
	struct vnode *dvp = ap->a_dvp;
	struct vnode *vp = ap->a_vp;
	struct componentname *cnp = ap->a_cnp;

	int err;

	if (FUNC1(vp)) {
		return ENXIO;
	}
	if (FUNC2(vp)) {
		return EPERM;
	}

	err = FUNC0(dvp, vp, cnp, FUSE_UNLINK);

	return err;
}