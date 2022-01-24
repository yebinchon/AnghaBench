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
struct vop_vector {int dummy; } ;
struct vnode {scalar_t__ v_type; int /*<<< orphan*/  v_vflag; struct vop_vector* v_op; } ;
struct mount {int dummy; } ;
struct inode {scalar_t__ i_mode; scalar_t__ i_number; int /*<<< orphan*/  i_modrev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ EXT2_ROOTINO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ VFIFO ; 
 scalar_t__ VNON ; 
 struct inode* FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  VV_ROOT ; 
 int /*<<< orphan*/  FUNC2 () ; 

int
FUNC3(struct mount *mntp, struct vop_vector *fifoops, struct vnode **vpp)
{
	struct inode *ip;
	struct vnode *vp;

	vp = *vpp;
	ip = FUNC1(vp);
	vp->v_type = FUNC0(ip->i_mode);
	/*
	 * Only unallocated inodes should be of type VNON.
	 */
	if (ip->i_mode != 0 && vp->v_type == VNON)
		return (EINVAL);
	if (vp->v_type == VFIFO)
		vp->v_op = fifoops;

	if (ip->i_number == EXT2_ROOTINO)
		vp->v_vflag |= VV_ROOT;
	ip->i_modrev = FUNC2();
	*vpp = vp;
	return (0);
}