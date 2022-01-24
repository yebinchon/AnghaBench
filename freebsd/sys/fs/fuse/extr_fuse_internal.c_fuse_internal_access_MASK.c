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
typedef  int /*<<< orphan*/  uint32_t ;
struct vnode {int v_type; } ;
struct vattr {int /*<<< orphan*/  va_gid; int /*<<< orphan*/  va_uid; int /*<<< orphan*/  va_mode; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct fuse_dispatcher {struct fuse_access_in* indata; } ;
struct fuse_data {int dataflags; int /*<<< orphan*/  daemoncred; } ;
struct fuse_access_in {int /*<<< orphan*/  mask; } ;
typedef  int accmode_t ;

/* Variables and functions */
 int ENOSYS ; 
 int EPERM ; 
 int EROFS ; 
 int FSESS_DAEMON_CAN_SPY ; 
 int FSESS_DEFAULT_PERMISSIONS ; 
 int /*<<< orphan*/  FUSE_ACCESS ; 
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/  R_OK ; 
 int VADMIN ; 
 int VAPPEND ; 
#define  VDIR 130 
 int VEXEC ; 
#define  VLNK 129 
 int VMODIFY_PERMS ; 
 int VREAD ; 
#define  VREG 128 
 int VWRITE ; 
 int /*<<< orphan*/  W_OK ; 
 int /*<<< orphan*/  X_OK ; 
 int /*<<< orphan*/  FUNC0 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_dispatcher*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_dispatcher*,int /*<<< orphan*/ ,struct vnode*,struct thread*,struct ucred*) ; 
 int FUNC3 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*,int /*<<< orphan*/ ) ; 
 struct fuse_data* FUNC6 (struct mount*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,struct vattr*,struct ucred*,struct thread*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct ucred*) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ucred*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct mount*) ; 
 struct mount* FUNC11 (struct vnode*) ; 
 int FUNC12 (struct vnode*) ; 

int
FUNC13(struct vnode *vp,
    accmode_t mode,
    struct thread *td,
    struct ucred *cred)
{
	int err = 0;
	uint32_t mask = F_OK;
	int dataflags;
	int vtype;
	struct mount *mp;
	struct fuse_dispatcher fdi;
	struct fuse_access_in *fai;
	struct fuse_data *data;

	mp = FUNC11(vp);
	vtype = FUNC12(vp);

	data = FUNC6(mp);
	dataflags = data->dataflags;

	if (mode == 0)
		return 0;

	if (mode & VMODIFY_PERMS && FUNC10(mp)) {
		switch (vp->v_type) {
		case VDIR:
			/* FALLTHROUGH */
		case VLNK:
			/* FALLTHROUGH */
		case VREG:
			return EROFS;
		default:
			break;
		}
	}

	/* Unless explicitly permitted, deny everyone except the fs owner. */
	if (!(dataflags & FSESS_DAEMON_CAN_SPY)) {
		if (FUNC8(data->daemoncred, cred))
			return EPERM;
	}

	if (dataflags & FSESS_DEFAULT_PERMISSIONS) {
		struct vattr va;

		FUNC7(vp, &va, cred, td);
		return FUNC9(vp->v_type, va.va_mode, va.va_uid,
		    va.va_gid, mode, cred, NULL);
	}

	if (!FUNC4(mp, FUSE_ACCESS))
		return 0;

	if ((mode & (VWRITE | VAPPEND | VADMIN)) != 0)
		mask |= W_OK;
	if ((mode & VREAD) != 0)
		mask |= R_OK;
	if ((mode & VEXEC) != 0)
		mask |= X_OK;

	FUNC1(&fdi, sizeof(*fai));
	FUNC2(&fdi, FUSE_ACCESS, vp, td, cred);

	fai = fdi.indata;
	fai->mask = mask;

	err = FUNC3(&fdi);
	FUNC0(&fdi);

	if (err == ENOSYS) {
		FUNC5(mp, FUSE_ACCESS);
		err = 0;
	}
	return err;
}