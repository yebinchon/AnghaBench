#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct vop_create_args {struct vattr* a_vap; struct componentname* a_cnp; struct vnode** a_vpp; struct vnode* a_dvp; } ;
struct vnode {int dummy; } ;
struct vattr {scalar_t__ va_type; int /*<<< orphan*/  va_mode; } ;
struct ucred {int dummy; } ;
struct thread {TYPE_2__* td_proc; } ;
struct mount {int dummy; } ;
struct fuse_release_in {int flags; int /*<<< orphan*/  fh; int /*<<< orphan*/  umask; int /*<<< orphan*/  mode; } ;
struct fuse_open_out {int /*<<< orphan*/  open_flags; int /*<<< orphan*/  attr_valid_nsec; int /*<<< orphan*/  attr_valid; int /*<<< orphan*/  attr; int /*<<< orphan*/  fh; int /*<<< orphan*/  nodeid; } ;
struct fuse_open_in {int flags; int /*<<< orphan*/  fh; int /*<<< orphan*/  umask; int /*<<< orphan*/  mode; } ;
struct fuse_entry_out {int /*<<< orphan*/  open_flags; int /*<<< orphan*/  attr_valid_nsec; int /*<<< orphan*/  attr_valid; int /*<<< orphan*/  attr; int /*<<< orphan*/  fh; int /*<<< orphan*/  nodeid; } ;
struct fuse_dispatcher {int /*<<< orphan*/  tick; struct fuse_release_in* indata; struct fuse_open_out* answ; } ;
struct fuse_data {int dummy; } ;
struct fuse_create_in {int flags; int /*<<< orphan*/  fh; int /*<<< orphan*/  umask; int /*<<< orphan*/  mode; } ;
struct componentname {int cn_namelen; int /*<<< orphan*/  cn_nameptr; struct ucred* cn_cred; struct thread* cn_thread; } ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  fdi ;
typedef  enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;
struct TYPE_6__ {int /*<<< orphan*/  nid; } ;
struct TYPE_5__ {TYPE_1__* p_fd; } ;
struct TYPE_4__ {int /*<<< orphan*/  fd_cmask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int EINVAL ; 
 int ENOSYS ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUFH_RDWR ; 
 int FUSE_CREATE ; 
 int FUSE_OPEN ; 
 int FUSE_RELEASE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int O_CREAT ; 
 int O_RDWR ; 
 scalar_t__ VREG ; 
 scalar_t__ VSOCK ; 
 TYPE_3__* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_dispatcher*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_dispatcher*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fuse_dispatcher*,int,struct mount*,int /*<<< orphan*/ ,struct thread*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC8 (struct fuse_dispatcher*,struct componentname*,struct vnode*,int /*<<< orphan*/ ,struct thread*,struct ucred*,int /*<<< orphan*/ ,int*) ; 
 int FUNC9 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC10 (struct mount*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mount*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct thread*,struct ucred*,struct fuse_open_out*) ; 
 struct fuse_data* FUNC13 (struct mount*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct vnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct fuse_open_out*,scalar_t__) ; 
 int /*<<< orphan*/  fuse_internal_forget_callback ; 
 int FUNC18 (struct vnode*,struct vnode**,struct componentname*,struct vattr*) ; 
 scalar_t__ FUNC19 (struct vnode*) ; 
 scalar_t__ FUNC20 (struct fuse_data*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct vnode*) ; 
 int FUNC22 (struct mount*,struct fuse_open_out*,int /*<<< orphan*/ ,struct vnode*,struct vnode**,struct componentname*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (struct vnode*,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC24 (char*,int /*<<< orphan*/ ,int) ; 
 struct mount* FUNC25 (struct vnode*) ; 

__attribute__((used)) static int
FUNC26(struct vop_create_args *ap)
{
	struct vnode *dvp = ap->a_dvp;
	struct vnode **vpp = ap->a_vpp;
	struct componentname *cnp = ap->a_cnp;
	struct vattr *vap = ap->a_vap;
	struct thread *td = cnp->cn_thread;
	struct ucred *cred = cnp->cn_cred;

	struct fuse_data *data;
	struct fuse_create_in *fci;
	struct fuse_entry_out *feo;
	struct fuse_open_out *foo;
	struct fuse_dispatcher fdi, fdi2;
	struct fuse_dispatcher *fdip = &fdi;
	struct fuse_dispatcher *fdip2 = NULL;

	int err;

	struct mount *mp = FUNC25(dvp);
	data = FUNC13(mp);
	uint64_t parentnid = FUNC2(dvp)->nid;
	mode_t mode = FUNC1(vap->va_type, vap->va_mode);
	enum fuse_opcode op;
	int flags;

	if (FUNC19(dvp))
		return ENXIO;

	/* FUSE expects sockets to be created with FUSE_MKNOD */
	if (vap->va_type == VSOCK)
		return FUNC18(dvp, vpp, cnp, vap);

	/* 
	 * VOP_CREATE doesn't tell us the open(2) flags, so we guess.  Only a
	 * writable mode makes sense, and we might as well include readability
	 * too.
	 */
	flags = O_RDWR;

	FUNC3(&fdi, sizeof(fdi));

	if (vap->va_type != VREG)
		return (EINVAL);

	if (!FUNC10(mp, FUSE_CREATE) || vap->va_type == VSOCK) {
		/* Fallback to FUSE_MKNOD/FUSE_OPEN */
		FUNC8(fdip, cnp, dvp, parentnid, td,
			cred, mode, &op);
	} else {
		/* Use FUSE_CREATE */
		size_t insize;

		op = FUSE_CREATE;
		FUNC6(fdip, sizeof(*fci) + cnp->cn_namelen + 1);
		FUNC7(fdip, op, FUNC25(dvp), parentnid, td, cred);
		fci = fdip->indata;
		fci->mode = mode;
		fci->flags = O_CREAT | flags;
		if (FUNC20(data, 7, 12)) {
			insize = sizeof(*fci);
			fci->umask = td->td_proc->p_fd->fd_cmask;
		} else {
			insize = sizeof(struct fuse_open_in);
		}

		FUNC24((char *)fdip->indata + insize, cnp->cn_nameptr,
		    cnp->cn_namelen);
		((char *)fdip->indata)[insize + cnp->cn_namelen] = '\0';
	}

	err = FUNC9(fdip);

	if (err) {
		if (err == ENOSYS && op == FUSE_CREATE) {
			FUNC11(mp, FUSE_CREATE);
			FUNC5(fdip);
			FUNC8(fdip, cnp, dvp,
				parentnid, td, cred, mode, &op);
			err = FUNC9(fdip);
		}
		if (err)
			goto out;
	}

	feo = fdip->answ;

	if ((err = FUNC17(feo, vap->va_type))) {
		goto out;
	}

	if (op == FUSE_CREATE) {
		foo = (struct fuse_open_out*)(feo + 1);
	} else {
		/* Issue a separate FUSE_OPEN */
		struct fuse_open_in *foi;

		fdip2 = &fdi2;
		FUNC6(fdip2, sizeof(*foi));
		FUNC7(fdip2, FUSE_OPEN, FUNC25(dvp), feo->nodeid, td,
			cred);
		foi = fdip2->indata;
		foi->flags = flags;
		err = FUNC9(fdip2);
		if (err)
			goto out;
		foo = fdip2->answ;
	}
	err = FUNC22(mp, feo, feo->nodeid, dvp, vpp, cnp, vap->va_type);
	if (err) {
		struct fuse_release_in *fri;
		uint64_t nodeid = feo->nodeid;
		uint64_t fh_id = foo->fh;

		FUNC6(fdip, sizeof(*fri));
		FUNC7(fdip, FUSE_RELEASE, mp, nodeid, td, cred);
		fri = fdip->indata;
		fri->fh = fh_id;
		fri->flags = flags;
		FUNC14(fdip->tick, fuse_internal_forget_callback);
		FUNC15(fdip->tick, false);
		goto out;
	}
	FUNC0(*vpp, "fuse_vnop_create");
	FUNC16(*vpp, &feo->attr, feo->attr_valid,
		feo->attr_valid_nsec, NULL);

	FUNC12(*vpp, FUFH_RDWR, NULL, td, cred, foo);
	FUNC23(*vpp, foo->open_flags, td);
	/* 
	 * Purge the parent's attribute cache because the daemon should've
	 * updated its mtime and ctime
	 */
	FUNC21(dvp);
	FUNC4(dvp);

out:
	if (fdip2)
		FUNC5(fdip2);
	FUNC5(fdip);
	return err;
}