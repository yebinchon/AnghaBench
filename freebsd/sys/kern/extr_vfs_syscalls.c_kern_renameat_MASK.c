#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vnode {scalar_t__ v_type; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct TYPE_7__ {int /*<<< orphan*/  cn_flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  fc_rights; } ;
struct nameidata {int ni_resflags; struct vnode* ni_startdir; struct vnode* ni_dvp; TYPE_2__ ni_cnd; struct vnode* ni_vp; TYPE_1__ ni_filecaps; } ;
struct mount {int dummy; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int AT_FDCWD ; 
 int AUDITVNODE1 ; 
 int AUDITVNODE2 ; 
 int /*<<< orphan*/  DELETE ; 
 int EINVAL ; 
 int EISDIR ; 
 int ENOTDIR ; 
 int LOCKLEAF ; 
 int LOCKPARENT ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int,char const*,int,int /*<<< orphan*/ *,struct thread*) ; 
 int NIRES_ABS ; 
 int NOCACHE ; 
 int PCATCH ; 
 int /*<<< orphan*/  RENAME ; 
 int SAVESTART ; 
 scalar_t__ VDIR ; 
 int FUNC2 (struct vnode*,struct vnode*,TYPE_2__*,struct vnode*,struct vnode*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int V_NOWAIT ; 
 int V_XSLEEP ; 
 int WANTPARENT ; 
 int /*<<< orphan*/  WILLBEDIR ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cap_renameat_source_rights ; 
 int /*<<< orphan*/  cap_renameat_target_rights ; 
 int /*<<< orphan*/  cap_unlinkat_rights ; 
 int FUNC6 (int /*<<< orphan*/ ,struct vnode*,struct vnode*,TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct vnode*,struct vnode*,int,TYPE_2__*) ; 
 int FUNC8 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC9 (struct mount*) ; 
 int FUNC10 (struct vnode*,struct mount**,int) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 

int
FUNC13(struct thread *td, int oldfd, const char *old, int newfd,
    const char *new, enum uio_seg pathseg)
{
	struct mount *mp = NULL;
	struct vnode *tvp, *fvp, *tdvp;
	struct nameidata fromnd, tond;
	int error;

again:
	FUNC4();
#ifdef MAC
	NDINIT_ATRIGHTS(&fromnd, DELETE, LOCKPARENT | LOCKLEAF | SAVESTART |
	    AUDITVNODE1, pathseg, old, oldfd,
	    &cap_renameat_source_rights, td);
#else
	FUNC1(&fromnd, DELETE, WANTPARENT | SAVESTART | AUDITVNODE1,
	    pathseg, old, oldfd,
	    &cap_renameat_source_rights, td);
#endif

	if ((error = FUNC8(&fromnd)) != 0)
		return (error);
#ifdef MAC
	error = mac_vnode_check_rename_from(td->td_ucred, fromnd.ni_dvp,
	    fromnd.ni_vp, &fromnd.ni_cnd);
	VOP_UNLOCK(fromnd.ni_dvp, 0);
	if (fromnd.ni_dvp != fromnd.ni_vp)
		VOP_UNLOCK(fromnd.ni_vp, 0);
#endif
	fvp = fromnd.ni_vp;
	FUNC1(&tond, RENAME, LOCKPARENT | LOCKLEAF | NOCACHE |
	    SAVESTART | AUDITVNODE2, pathseg, new, newfd,
	    &cap_renameat_target_rights, td);
	if (fromnd.ni_vp->v_type == VDIR)
		tond.ni_cnd.cn_flags |= WILLBEDIR;
	if ((error = FUNC8(&tond)) != 0) {
		/* Translate error code for rename("dir1", "dir2/."). */
		if (error == EISDIR && fvp->v_type == VDIR)
			error = EINVAL;
		FUNC0(&fromnd, NDF_ONLY_PNBUF);
		FUNC12(fromnd.ni_dvp);
		FUNC12(fvp);
		goto out1;
	}
	tdvp = tond.ni_dvp;
	tvp = tond.ni_vp;
	error = FUNC10(fvp, &mp, V_NOWAIT);
	if (error != 0) {
		FUNC0(&fromnd, NDF_ONLY_PNBUF);
		FUNC0(&tond, NDF_ONLY_PNBUF);
		if (tvp != NULL)
			FUNC11(tvp);
		if (tdvp == tvp)
			FUNC12(tdvp);
		else
			FUNC11(tdvp);
		FUNC12(fromnd.ni_dvp);
		FUNC12(fvp);
		FUNC12(tond.ni_startdir);
		if (fromnd.ni_startdir != NULL)
			FUNC12(fromnd.ni_startdir);
		error = FUNC10(NULL, &mp, V_XSLEEP | PCATCH);
		if (error != 0)
			return (error);
		goto again;
	}
	if (tvp != NULL) {
		if (fvp->v_type == VDIR && tvp->v_type != VDIR) {
			error = ENOTDIR;
			goto out;
		} else if (fvp->v_type != VDIR && tvp->v_type == VDIR) {
			error = EISDIR;
			goto out;
		}
#ifdef CAPABILITIES
		if (newfd != AT_FDCWD && (tond.ni_resflags & NIRES_ABS) == 0) {
			/*
			 * If the target already exists we require CAP_UNLINKAT
			 * from 'newfd', when newfd was used for the lookup.
			 */
			error = cap_check(&tond.ni_filecaps.fc_rights,
			    &cap_unlinkat_rights);
			if (error != 0)
				goto out;
		}
#endif
	}
	if (fvp == tdvp) {
		error = EINVAL;
		goto out;
	}
	/*
	 * If the source is the same as the destination (that is, if they
	 * are links to the same vnode), then there is nothing to do.
	 */
	if (fvp == tvp)
		error = -1;
#ifdef MAC
	else
		error = mac_vnode_check_rename_to(td->td_ucred, tdvp,
		    tond.ni_vp, fromnd.ni_dvp == tdvp, &tond.ni_cnd);
#endif
out:
	if (error == 0) {
		error = FUNC2(fromnd.ni_dvp, fromnd.ni_vp, &fromnd.ni_cnd,
		    tond.ni_dvp, tond.ni_vp, &tond.ni_cnd);
		FUNC0(&fromnd, NDF_ONLY_PNBUF);
		FUNC0(&tond, NDF_ONLY_PNBUF);
	} else {
		FUNC0(&fromnd, NDF_ONLY_PNBUF);
		FUNC0(&tond, NDF_ONLY_PNBUF);
		if (tvp != NULL)
			FUNC11(tvp);
		if (tdvp == tvp)
			FUNC12(tdvp);
		else
			FUNC11(tdvp);
		FUNC12(fromnd.ni_dvp);
		FUNC12(fvp);
	}
	FUNC12(tond.ni_startdir);
	FUNC9(mp);
out1:
	if (fromnd.ni_startdir)
		FUNC12(fromnd.ni_startdir);
	if (error == -1)
		return (0);
	return (error);
}