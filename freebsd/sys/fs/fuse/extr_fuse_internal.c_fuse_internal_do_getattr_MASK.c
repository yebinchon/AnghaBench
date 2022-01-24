#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
struct vattr {int dummy; } ;
struct ucred {int dummy; } ;
struct timespec {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct thread {int dummy; } ;
struct TYPE_3__ {struct timespec va_mtime; struct timespec va_ctime; int /*<<< orphan*/  va_size; } ;
struct fuse_vnode_data {int flag; TYPE_1__ cached_attrs; } ;
struct fuse_getattr_in {scalar_t__ getattr_flags; } ;
struct fuse_dispatcher {scalar_t__ answ; struct fuse_getattr_in* indata; } ;
struct TYPE_4__ {int /*<<< orphan*/  mtimensec; int /*<<< orphan*/  mtime; int /*<<< orphan*/  ctimensec; int /*<<< orphan*/  ctime; int /*<<< orphan*/  size; int /*<<< orphan*/  mode; } ;
struct fuse_attr_out {int /*<<< orphan*/  attr_valid_nsec; int /*<<< orphan*/  attr_valid; TYPE_2__ attr; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  enum vtype { ____Placeholder_vtype } vtype ;

/* Variables and functions */
 int ENOENT ; 
 int FN_CTIMECHANGE ; 
 int FN_MTIMECHANGE ; 
 int FN_SIZECHANGE ; 
 int /*<<< orphan*/  FUSE_GETATTR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct fuse_vnode_data* FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_dispatcher*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_dispatcher*,int /*<<< orphan*/ ,struct vnode*,struct thread*,struct ucred*) ; 
 int FUNC5 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vattr*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 
 int FUNC8 (struct vnode*) ; 

int
FUNC9(struct vnode *vp, struct vattr *vap,
	struct ucred *cred, struct thread *td)
{
	struct fuse_dispatcher fdi;
	struct fuse_vnode_data *fvdat = FUNC1(vp);
	struct fuse_getattr_in *fgai;
	struct fuse_attr_out *fao;
	off_t old_filesize = fvdat->cached_attrs.va_size;
	struct timespec old_ctime = fvdat->cached_attrs.va_ctime;
	struct timespec old_mtime = fvdat->cached_attrs.va_mtime;
	enum vtype vtyp;
	int err;

	FUNC3(&fdi, sizeof(*fgai));
	FUNC4(&fdi, FUSE_GETATTR, vp, td, cred);
	fgai = fdi.indata;
	/* 
	 * We could look up a file handle and set it in fgai->fh, but that
	 * involves extra runtime work and I'm unaware of any file systems that
	 * care.
	 */
	fgai->getattr_flags = 0;
	if ((err = FUNC5(&fdi))) {
		if (err == ENOENT)
			FUNC7(vp);
		goto out;
	}

	fao = (struct fuse_attr_out *)fdi.answ;
	vtyp = FUNC0(fao->attr.mode);
	if (fvdat->flag & FN_SIZECHANGE)
		fao->attr.size = old_filesize;
	if (fvdat->flag & FN_CTIMECHANGE) {
		fao->attr.ctime = old_ctime.tv_sec;
		fao->attr.ctimensec = old_ctime.tv_nsec;
	}
	if (fvdat->flag & FN_MTIMECHANGE) {
		fao->attr.mtime = old_mtime.tv_sec;
		fao->attr.mtimensec = old_mtime.tv_nsec;
	}
	FUNC6(vp, &fao->attr, fao->attr_valid,
		fao->attr_valid_nsec, vap);
	if (vtyp != FUNC8(vp)) {
		FUNC7(vp);
		err = ENOENT;
	}

out:
	FUNC2(&fdi);
	return err;
}