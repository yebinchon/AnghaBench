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
struct fuse_release_in {int /*<<< orphan*/  lock_owner; int /*<<< orphan*/  flags; int /*<<< orphan*/  fh; } ;
struct fuse_filehandle {int /*<<< orphan*/  fufh_type; int /*<<< orphan*/  fh_id; } ;
struct fuse_dispatcher {struct fuse_release_in* indata; } ;
struct TYPE_2__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int FUSE_RELEASE ; 
 int FUSE_RELEASEDIR ; 
 int /*<<< orphan*/  FUNC0 (struct fuse_filehandle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_FUSE_FILEHANDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_dispatcher*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_dispatcher*,int,struct vnode*,struct thread*,struct ucred*) ; 
 int FUNC5 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_filehandle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fuse_fh_count ; 
 scalar_t__ FUNC8 (struct vnode*) ; 
 int /*<<< orphan*/  next ; 
 scalar_t__ FUNC9 (struct vnode*) ; 

int
FUNC10(struct vnode *vp, struct fuse_filehandle *fufh,
    struct thread *td, struct ucred *cred)
{
	struct fuse_dispatcher fdi;
	struct fuse_release_in *fri;

	int err = 0;
	int op = FUSE_RELEASE;

	if (FUNC8(vp)) {
		goto out;
	}
	if (FUNC9(vp))
		op = FUSE_RELEASEDIR;
	FUNC3(&fdi, sizeof(*fri));
	FUNC4(&fdi, op, vp, td, cred);
	fri = fdi.indata;
	fri->fh = fufh->fh_id;
	fri->flags = FUNC7(fufh->fufh_type);
	/* 
	 * If the file has a POSIX lock then we're supposed to set lock_owner.
	 * If not, then lock_owner is undefined.  So we may as well always set
	 * it.
	 */
	fri->lock_owner = td->td_proc->p_pid;

	err = FUNC5(&fdi);
	FUNC2(&fdi);

out:
	FUNC1(fuse_fh_count, -1);
	FUNC0(fufh, next);
	FUNC6(fufh, M_FUSE_FILEHANDLE);

	return err;
}