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
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct mount {int dummy; } ;
struct fuse_flush_in {int /*<<< orphan*/  lock_owner; int /*<<< orphan*/  fh; } ;
struct fuse_filehandle {int /*<<< orphan*/  fh_id; } ;
struct fuse_dispatcher {struct fuse_flush_in* indata; } ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_2__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUSE_FLUSH ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC0 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_dispatcher*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_dispatcher*,int /*<<< orphan*/ ,struct vnode*,struct thread*,struct ucred*) ; 
 int FUNC3 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct vnode*,int,struct fuse_filehandle**,struct ucred*,int /*<<< orphan*/ ) ; 
 struct mount* FUNC7 (struct vnode*) ; 

__attribute__((used)) static int
FUNC8(struct vnode *vp, struct ucred *cred, pid_t pid, int fflag)
{
	struct fuse_flush_in *ffi;
	struct fuse_filehandle *fufh;
	struct fuse_dispatcher fdi;
	struct thread *td = curthread;
	struct mount *mp = FUNC7(vp);
	int err;

	if (!FUNC4(FUNC7(vp), FUSE_FLUSH))
		return 0;

	err = FUNC6(vp, fflag, &fufh, cred, pid);
	if (err)
		return err;

	FUNC1(&fdi, sizeof(*ffi));
	FUNC2(&fdi, FUSE_FLUSH, vp, td, cred);
	ffi = fdi.indata;
	ffi->fh = fufh->fh_id;
	/* 
	 * If the file has a POSIX lock then we're supposed to set lock_owner.
	 * If not, then lock_owner is undefined.  So we may as well always set
	 * it.
	 */
	ffi->lock_owner = td->td_proc->p_pid;

	err = FUNC3(&fdi);
	if (err == ENOSYS) {
		FUNC5(mp, FUSE_FLUSH);
		err = 0;
	}
	FUNC0(&fdi);
	return err;
}