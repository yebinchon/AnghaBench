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
struct vop_getpages_async_args {int /*<<< orphan*/  a_count; int /*<<< orphan*/  a_m; int /*<<< orphan*/  a_arg; int /*<<< orphan*/  (* a_iodone ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  a_rahead; int /*<<< orphan*/  a_rbehind; struct vnode* a_vp; } ;
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct ufsmount {TYPE_2__* um_devvp; } ;
struct TYPE_3__ {scalar_t__ bo_bsize; } ;
struct TYPE_4__ {TYPE_1__ v_bufobj; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 struct ufsmount* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ffs_gbp_getblkno ; 
 int /*<<< orphan*/  ffs_gbp_getblksz ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int),int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct vop_getpages_async_args *ap)
{
	struct vnode *vp;
	struct ufsmount *um;
	int error;

	vp = ap->a_vp;
	um = FUNC0(vp->v_mount);

	if (um->um_devvp->v_bufobj.bo_bsize <= PAGE_SIZE)
		return (FUNC3(vp, ap->a_m, ap->a_count,
		    ap->a_rbehind, ap->a_rahead, ap->a_iodone, ap->a_arg));

	error = FUNC2(vp, ap->a_m, ap->a_count, ap->a_rbehind,
	    ap->a_rahead, ffs_gbp_getblkno, ffs_gbp_getblksz);
	ap->a_iodone(ap->a_arg, ap->a_m, ap->a_count, error);

	return (error);
}