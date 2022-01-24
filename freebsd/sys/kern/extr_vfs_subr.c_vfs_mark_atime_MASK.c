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
struct vnode {struct mount* v_mount; } ;
struct ucred {int dummy; } ;
struct mount {int mnt_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int MNT_NOATIME ; 
 int MNT_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 

void
FUNC2(struct vnode *vp, struct ucred *cred)
{
	struct mount *mp;

	mp = vp->v_mount;
	FUNC0(vp, "vfs_mark_atime");
	if (mp != NULL && (mp->mnt_flag & (MNT_NOATIME | MNT_RDONLY)) == 0)
		(void)FUNC1(vp);
}