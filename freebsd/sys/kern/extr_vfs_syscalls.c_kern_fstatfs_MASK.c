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
struct thread {int dummy; } ;
struct statfs {int dummy; } ;
struct mount {int dummy; } ;
struct file {struct vnode* f_vnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cap_fstatfs_rights ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct thread*) ; 
 int FUNC4 (struct thread*,int,int /*<<< orphan*/ *,struct file**) ; 
 int FUNC5 (struct thread*,struct mount*,struct statfs*) ; 
 int /*<<< orphan*/  FUNC6 (struct mount*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,int) ; 

int
FUNC8(struct thread *td, int fd, struct statfs *buf)
{
	struct file *fp;
	struct mount *mp;
	struct vnode *vp;
	int error;

	FUNC0(fd);
	error = FUNC4(td, fd, &cap_fstatfs_rights, &fp);
	if (error != 0)
		return (error);
	vp = fp->f_vnode;
	FUNC7(vp, LK_SHARED | LK_RETRY);
#ifdef AUDIT
	AUDIT_ARG_VNODE1(vp);
#endif
	mp = vp->v_mount;
	if (mp != NULL)
		FUNC6(mp);
	FUNC2(vp, 0);
	FUNC3(fp, td);
	return (FUNC5(td, mp, buf));
}