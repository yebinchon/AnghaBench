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
typedef  int /*<<< orphan*/  u_int ;
struct vnode {scalar_t__ v_type; TYPE_1__* v_mount; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct inode {scalar_t__ i_size; int i_flag; int /*<<< orphan*/  i_shortlink; } ;
typedef  scalar_t__ off_t ;
struct TYPE_2__ {scalar_t__ mnt_maxsymlinklen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int EINVAL ; 
 int IN_CHANGE ; 
 int IN_E4EXTENTS ; 
 int IN_UPDATE ; 
 scalar_t__ VLNK ; 
 struct inode* FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vnode*,scalar_t__,int,struct ucred*,struct thread*) ; 
 int FUNC4 (struct vnode*,scalar_t__,int,struct ucred*,struct thread*) ; 
 int FUNC5 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7(struct vnode *vp, off_t length, int flags, struct ucred *cred,
    struct thread *td)
{
	struct inode *ip;
	int error;

	FUNC0(vp, "ext2_truncate");

	if (length < 0)
		return (EINVAL);

	ip = FUNC1(vp);
	if (vp->v_type == VLNK &&
	    ip->i_size < vp->v_mount->mnt_maxsymlinklen) {
#ifdef INVARIANTS
		if (length != 0)
			panic("ext2_truncate: partial truncate of symlink");
#endif
		FUNC2((char *)&ip->i_shortlink, (u_int)ip->i_size);
		ip->i_size = 0;
		ip->i_flag |= IN_CHANGE | IN_UPDATE;
		return (FUNC5(vp, 1));
	}
	if (ip->i_size == length) {
		ip->i_flag |= IN_CHANGE | IN_UPDATE;
		return (FUNC5(vp, 0));
	}

	if (ip->i_flag & IN_E4EXTENTS)
		error = FUNC3(vp, length, flags, cred, td);
	else
		error = FUNC4(vp, length, flags, cred, td);

	return (error);
}