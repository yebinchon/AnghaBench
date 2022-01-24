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
struct vnode {int /*<<< orphan*/ * v_object; struct mount* v_mount; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct file {struct vnode* f_vnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 scalar_t__ FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int PCATCH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct vnode*,struct thread*) ; 
 int FUNC6 (struct vnode*,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,int /*<<< orphan*/ ) ; 
 int V_WAIT ; 
 int /*<<< orphan*/  cap_fsync_rights ; 
 int /*<<< orphan*/  FUNC8 (struct file*,struct thread*) ; 
 int FUNC9 (struct thread*,int,int /*<<< orphan*/ *,struct file**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mount*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*,int) ; 
 int FUNC13 (struct vnode*,struct mount**,int) ; 

int
FUNC14(struct thread *td, int fd, bool fullsync)
{
	struct vnode *vp;
	struct mount *mp;
	struct file *fp;
	int error, lock_flags;

	FUNC0(fd);
	error = FUNC9(td, fd, &cap_fsync_rights, &fp);
	if (error != 0)
		return (error);
	vp = fp->f_vnode;
#if 0
	if (!fullsync)
		/* XXXKIB: compete outstanding aio writes */;
#endif
	error = FUNC13(vp, &mp, V_WAIT | PCATCH);
	if (error != 0)
		goto drop;
	if (FUNC2(mp) ||
	    ((mp == NULL) && FUNC2(vp->v_mount))) {
		lock_flags = LK_SHARED;
	} else {
		lock_flags = LK_EXCLUSIVE;
	}
	FUNC12(vp, lock_flags | LK_RETRY);
	FUNC1(vp);
	if (vp->v_object != NULL) {
		FUNC3(vp->v_object);
		FUNC10(vp->v_object, 0, 0, 0);
		FUNC4(vp->v_object);
	}
	error = fullsync ? FUNC6(vp, MNT_WAIT, td) : FUNC5(vp, td);
	FUNC7(vp, 0);
	FUNC11(mp);
drop:
	FUNC8(fp, td);
	return (error);
}