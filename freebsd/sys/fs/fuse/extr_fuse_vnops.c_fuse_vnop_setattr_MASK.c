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
typedef  scalar_t__ uid_t ;
struct vop_setattr_args {struct ucred* a_cred; struct vattr* a_vap; struct vnode* a_vp; } ;
struct vnode {int v_type; } ;
struct TYPE_4__ {scalar_t__ tv_sec; } ;
struct TYPE_3__ {scalar_t__ tv_sec; } ;
struct vattr {scalar_t__ va_uid; scalar_t__ va_gid; scalar_t__ va_size; int va_vaflags; int va_mode; TYPE_2__ va_mtime; TYPE_1__ va_atime; } ;
struct ucred {scalar_t__ cr_ngroups; scalar_t__* cr_groups; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct fuse_data {int dataflags; } ;
typedef  int mode_t ;
typedef  scalar_t__ gid_t ;
typedef  int /*<<< orphan*/  accmode_t ;

/* Variables and functions */
 int EFTYPE ; 
 int EISDIR ; 
 int ENXIO ; 
 int EROFS ; 
 int FSESS_DEFAULT_PERMISSIONS ; 
 int /*<<< orphan*/  PRIV_VFS_CHOWN ; 
 int /*<<< orphan*/  PRIV_VFS_SETGID ; 
 int /*<<< orphan*/  PRIV_VFS_STICKYFILE ; 
 int S_ISGID ; 
 int S_ISTXT ; 
 int S_ISUID ; 
 int /*<<< orphan*/  VADMIN ; 
 int VA_UTIMES_NULL ; 
#define  VDIR 130 
#define  VLNK 129 
 scalar_t__ VNOVAL ; 
#define  VREG 128 
 int /*<<< orphan*/  VWRITE ; 
 struct thread* curthread ; 
 struct fuse_data* FUNC0 (struct mount*) ; 
 int FUNC1 (struct vnode*,int /*<<< orphan*/ ,struct thread*,struct ucred*) ; 
 int FUNC2 (struct vnode*,struct vattr*,struct ucred*,struct thread*) ; 
 int FUNC3 (struct vnode*,struct vattr*,struct thread*,struct ucred*) ; 
 scalar_t__ FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct ucred*) ; 
 int FUNC6 (struct ucred*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct mount*) ; 
 struct mount* FUNC8 (struct vnode*) ; 

__attribute__((used)) static int
FUNC9(struct vop_setattr_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct vattr *vap = ap->a_vap;
	struct ucred *cred = ap->a_cred;
	struct thread *td = curthread;
	struct mount *mp;
	struct fuse_data *data;
	struct vattr old_va;
	int dataflags;
	int err = 0, err2;
	accmode_t accmode = 0;
	bool checkperm;
	bool drop_suid = false;
	gid_t cr_gid;

	mp = FUNC8(vp);
	data = FUNC0(mp);
	dataflags = data->dataflags;
	checkperm = dataflags & FSESS_DEFAULT_PERMISSIONS;
	if (cred->cr_ngroups > 0)
		cr_gid = cred->cr_groups[0];
	else
		cr_gid = 0;

	if (FUNC4(vp)) {
		return ENXIO;
	}

	if (vap->va_uid != (uid_t)VNOVAL) {
		if (checkperm) {
			/* Only root may change a file's owner */
			err = FUNC6(cred, PRIV_VFS_CHOWN);
			if (err) {
				/* As a special case, allow the null chown */
				err2 = FUNC2(vp, &old_va, cred,
					td);
				if (err2)
					return (err2);
				if (vap->va_uid != old_va.va_uid)
					return err;
				else
					accmode |= VADMIN;
				drop_suid = true;
			} else
				accmode |= VADMIN;
		} else
			accmode |= VADMIN;
	}
	if (vap->va_gid != (gid_t)VNOVAL) {
		if (checkperm && FUNC6(cred, PRIV_VFS_CHOWN))
			drop_suid = true;
		if (checkperm && !FUNC5(vap->va_gid, cred))
		{
			/*
			 * Non-root users may only chgrp to one of their own
			 * groups 
			 */
			err = FUNC6(cred, PRIV_VFS_CHOWN);
			if (err) {
				/* As a special case, allow the null chgrp */
				err2 = FUNC2(vp, &old_va, cred,
					td);
				if (err2)
					return (err2);
				if (vap->va_gid != old_va.va_gid)
					return err;
				accmode |= VADMIN;
			} else
				accmode |= VADMIN;
		} else
			accmode |= VADMIN;
	}
	if (vap->va_size != VNOVAL) {
		switch (vp->v_type) {
		case VDIR:
			return (EISDIR);
		case VLNK:
		case VREG:
			if (FUNC7(mp))
				return (EROFS);
			break;
		default:
			/*
			 * According to POSIX, the result is unspecified
			 * for file types other than regular files,
			 * directories and shared memory objects.  We
			 * don't support shared memory objects in the file
			 * system, and have dubious support for truncating
			 * symlinks.  Just ignore the request in other cases.
			 */
			return (0);
		}
		/* Don't set accmode.  Permission to trunc is checked upstack */
	}
	if (vap->va_atime.tv_sec != VNOVAL || vap->va_mtime.tv_sec != VNOVAL) {
		if (vap->va_vaflags & VA_UTIMES_NULL)
			accmode |= VWRITE;
		else
			accmode |= VADMIN;
	}
	if (drop_suid) {
		if (vap->va_mode != (mode_t)VNOVAL)
			vap->va_mode &= ~(S_ISUID | S_ISGID);
		else {
			err = FUNC2(vp, &old_va, cred, td);
			if (err)
				return (err);
			vap->va_mode = old_va.va_mode & ~(S_ISUID | S_ISGID);
		}
	}
	if (vap->va_mode != (mode_t)VNOVAL) {
		/* Only root may set the sticky bit on non-directories */
		if (checkperm && vp->v_type != VDIR && (vap->va_mode & S_ISTXT)
		    && FUNC6(cred, PRIV_VFS_STICKYFILE))
			return EFTYPE;
		if (checkperm && (vap->va_mode & S_ISGID)) {
			err = FUNC2(vp, &old_va, cred, td);
			if (err)
				return (err);
			if (!FUNC5(old_va.va_gid, cred)) {
				err = FUNC6(cred, PRIV_VFS_SETGID);
				if (err)
					return (err);
			}
		}
		accmode |= VADMIN;
	}

	if (FUNC7(mp))
		return EROFS;

	err = FUNC1(vp, accmode, td, cred);
	if (err)
		return err;
	else
		return FUNC3(vp, vap, td, cred);
}