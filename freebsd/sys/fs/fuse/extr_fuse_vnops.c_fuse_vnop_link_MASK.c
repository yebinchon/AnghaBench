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
struct vop_link_args {struct componentname* a_cnp; struct vnode* a_tdvp; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct vattr {scalar_t__ va_nlink; } ;
struct fuse_link_in {int /*<<< orphan*/  oldnodeid; } ;
struct fuse_entry_out {int /*<<< orphan*/  attr_valid_nsec; int /*<<< orphan*/  attr_valid; int /*<<< orphan*/  attr; } ;
struct fuse_dispatcher {struct fuse_entry_out* answ; } ;
struct componentname {int dummy; } ;
typedef  int /*<<< orphan*/  fli ;

/* Variables and functions */
 int EMLINK ; 
 int ENXIO ; 
 int EXDEV ; 
 int /*<<< orphan*/  FUSE_LINK ; 
 scalar_t__ FUSE_LINK_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 struct vattr* FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_dispatcher*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct fuse_dispatcher*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct fuse_entry_out*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,struct componentname*,int /*<<< orphan*/ ,struct fuse_link_in*,int,struct fuse_dispatcher*) ; 
 scalar_t__ FUNC8 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*) ; 
 scalar_t__ FUNC10 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 

__attribute__((used)) static int
FUNC12(struct vop_link_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct vnode *tdvp = ap->a_tdvp;
	struct componentname *cnp = ap->a_cnp;

	struct vattr *vap = FUNC1(vp);

	struct fuse_dispatcher fdi;
	struct fuse_entry_out *feo;
	struct fuse_link_in fli;

	int err;

	if (FUNC8(vp)) {
		return ENXIO;
	}
	if (FUNC10(tdvp) != FUNC10(vp)) {
		return EXDEV;
	}

	/*
	 * This is a seatbelt check to protect naive userspace filesystems from
	 * themselves and the limitations of the FUSE IPC protocol.  If a
	 * filesystem does not allow attribute caching, assume it is capable of
	 * validating that nlink does not overflow.
	 */
	if (vap != NULL && vap->va_nlink >= FUSE_LINK_MAX)
		return EMLINK;
	fli.oldnodeid = FUNC0(vp);

	FUNC3(&fdi, 0);
	FUNC7(FUNC10(tdvp), FUNC0(tdvp), cnp,
	    FUSE_LINK, &fli, sizeof(fli), &fdi);
	if ((err = FUNC4(&fdi))) {
		goto out;
	}
	feo = fdi.answ;

	err = FUNC6(feo, FUNC11(vp));
	if (!err) {
		/* 
		 * Purge the parent's attribute cache because the daemon
		 * should've updated its mtime and ctime
		 */
		FUNC9(tdvp);
		FUNC5(vp, &feo->attr, feo->attr_valid,
			feo->attr_valid_nsec, NULL);
	}
out:
	FUNC2(&fdi);
	return err;
}