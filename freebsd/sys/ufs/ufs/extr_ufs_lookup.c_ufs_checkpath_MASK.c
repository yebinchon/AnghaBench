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
typedef  int /*<<< orphan*/  uintmax_t ;
struct vnode {struct mount* v_mount; } ;
struct ucred {int dummy; } ;
struct mount {int dummy; } ;
struct inode {scalar_t__ i_number; } ;
typedef  scalar_t__ ino_t ;
struct TYPE_2__ {scalar_t__ i_number; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOTDIR ; 
 struct vnode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int LK_NOWAIT ; 
 int LK_SHARED ; 
 scalar_t__ UFS_ROOTINO ; 
 int FUNC2 (struct mount*,scalar_t__,int,struct vnode**) ; 
 TYPE_1__* FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct vnode*,struct ucred*,scalar_t__*,struct vnode**) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*) ; 

int
FUNC7(ino_t source_ino, ino_t parent_ino, struct inode *target, struct ucred *cred, ino_t *wait_ino)
{
	struct mount *mp;
	struct vnode *tvp, *vp, *vp1;
	int error;
	ino_t dd_ino;

	vp = tvp = FUNC0(target);
	mp = vp->v_mount;
	*wait_ino = 0;
	if (target->i_number == source_ino)
		return (EEXIST);
	if (target->i_number == parent_ino)
		return (0);
	if (target->i_number == UFS_ROOTINO)
		return (0);
	for (;;) {
		error = FUNC5(vp, cred, &dd_ino, &vp1);
		if (error != 0)
			break;
		if (dd_ino == source_ino) {
			error = EINVAL;
			break;
		}
		if (dd_ino == UFS_ROOTINO)
			break;
		if (dd_ino == parent_ino)
			break;
		if (vp1 == NULL) {
			error = FUNC2(mp, dd_ino, LK_SHARED | LK_NOWAIT,
			    &vp1);
			if (error != 0) {
				*wait_ino = dd_ino;
				break;
			}
		}
		FUNC1(dd_ino == FUNC3(vp1)->i_number,
		    ("directory %ju reparented\n",
		    (uintmax_t)FUNC3(vp1)->i_number));
		if (vp != tvp)
			FUNC6(vp);
		vp = vp1;
	}

	if (error == ENOTDIR)
		FUNC4("checkpath: .. not a directory\n");
	if (vp1 != NULL)
		FUNC6(vp1);
	if (vp != tvp)
		FUNC6(vp);
	return (error);
}