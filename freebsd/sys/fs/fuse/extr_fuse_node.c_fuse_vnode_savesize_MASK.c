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
struct thread {struct ucred* td_ucred; } ;
struct TYPE_2__ {int /*<<< orphan*/  va_size; } ;
struct fuse_vnode_data {int flag; TYPE_1__ cached_attrs; } ;
struct fuse_setattr_in {int /*<<< orphan*/  valid; int /*<<< orphan*/  fh; int /*<<< orphan*/  size; } ;
struct fuse_filehandle {int /*<<< orphan*/  fh_id; } ;
struct fuse_dispatcher {struct fuse_setattr_in* indata; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int EBADF ; 
 int EISDIR ; 
 int EROFS ; 
 int /*<<< orphan*/  FATTR_FH ; 
 int /*<<< orphan*/  FATTR_SIZE ; 
 int FN_SIZECHANGE ; 
 int /*<<< orphan*/  FUSE_SETATTR ; 
 int /*<<< orphan*/  FWRITE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ VDIR ; 
 struct fuse_vnode_data* FUNC2 (struct vnode*) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_dispatcher*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_dispatcher*,int /*<<< orphan*/ ,struct vnode*,struct thread*,struct ucred*) ; 
 int FUNC6 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,int /*<<< orphan*/ ,struct fuse_filehandle**,struct ucred*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct vnode*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*) ; 
 scalar_t__ FUNC11 (struct vnode*) ; 

int
FUNC12(struct vnode *vp, struct ucred *cred, pid_t pid)
{
	struct fuse_vnode_data *fvdat = FUNC2(vp);
	struct thread *td = curthread;
	struct fuse_filehandle *fufh = NULL;
	struct fuse_dispatcher fdi;
	struct fuse_setattr_in *fsai;
	int err = 0;

	FUNC0(vp, "fuse_io_extend");

	if (FUNC8(vp)) {
		return EBADF;
	}
	if (FUNC11(vp) == VDIR) {
		return EISDIR;
	}
	if (FUNC9(FUNC10(vp))) {
		return EROFS;
	}
	if (cred == NULL) {
		cred = td->td_ucred;
	}
	FUNC4(&fdi, sizeof(*fsai));
	FUNC5(&fdi, FUSE_SETATTR, vp, td, cred);
	fsai = fdi.indata;
	fsai->valid = 0;

	/* Truncate to a new value. */
	FUNC1((fvdat->flag & FN_SIZECHANGE) != 0);
	fsai->size = fvdat->cached_attrs.va_size;
	fsai->valid |= FATTR_SIZE;

	FUNC7(vp, FWRITE, &fufh, cred, pid);
	if (fufh) {
		fsai->fh = fufh->fh_id;
		fsai->valid |= FATTR_FH;
	}
	err = FUNC6(&fdi);
	FUNC3(&fdi);
	if (err == 0)
		fvdat->flag &= ~FN_SIZECHANGE;

	return err;
}