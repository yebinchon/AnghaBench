#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vnode {int v_vflag; TYPE_1__* v_mount; } ;
struct inode {scalar_t__ i_nlink; } ;
struct TYPE_2__ {int /*<<< orphan*/ * mnt_gjprovider; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct vnode*) ; 
 int VV_DELETED ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int) ; 

void
FUNC2(struct vnode *vp)
{
	struct inode *ip;

	if (vp->v_mount->mnt_gjprovider == NULL)
		return;
	if (!(vp->v_vflag & VV_DELETED))
		return;
	ip = FUNC0(vp);
	if (ip->i_nlink > 0)
		return;
	FUNC1(vp, -1);
}