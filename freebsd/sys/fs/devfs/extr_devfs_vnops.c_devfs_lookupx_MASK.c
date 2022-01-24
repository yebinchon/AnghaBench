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
struct vop_lookup_args {struct vnode* a_dvp; struct vnode** a_vpp; struct componentname* a_cnp; } ;
struct vnode {scalar_t__ v_type; int v_vflag; struct devfs_dirent* v_data; struct mount* v_mount; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct mount {int dummy; } ;
struct devfs_mount {size_t dm_idx; int /*<<< orphan*/  dm_lock; } ;
struct devfs_dirent {int de_flags; } ;
struct componentname {char* cn_nameptr; int cn_flags; int cn_nameiop; int cn_namelen; int cn_lkflags; int /*<<< orphan*/  cn_cred; struct thread* cn_thread; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {struct devfs_dirent** cdp_dirents; } ;

/* Variables and functions */
 int CREATE ; 
 int DELETE ; 
 scalar_t__ FUNC0 (struct devfs_mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct devfs_mount*) ; 
 int DE_WHITEOUT ; 
 int EINVAL ; 
 int EIO ; 
 int EJUSTRETURN ; 
 int ENOENT ; 
 int ENOTDIR ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct cdev**) ; 
 int ISDOTDOT ; 
 int ISLASTCN ; 
 int LK_RETRY ; 
 int LK_TYPE_MASK ; 
 int LOCKPARENT ; 
 int LOOKUP ; 
 struct vnode* NULLVP ; 
 int RENAME ; 
 int SAVENAME ; 
 int /*<<< orphan*/  SPECNAMELEN ; 
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  VEXEC ; 
 struct devfs_mount* FUNC3 (struct mount*) ; 
 int FUNC4 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 
 int VV_ROOT ; 
 int /*<<< orphan*/  VWRITE ; 
 int WANTPARENT ; 
 TYPE_1__* FUNC8 (struct cdev*) ; 
 int /*<<< orphan*/  clone_drain_lock ; 
 int /*<<< orphan*/  dev_clone ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (struct devfs_dirent*,struct mount*,int,struct vnode**) ; 
 struct devfs_dirent* FUNC13 (struct devfs_dirent*,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC14 (char*,struct devfs_mount*,struct devfs_dirent*,struct componentname*) ; 
 struct devfs_dirent* FUNC15 (struct devfs_dirent*) ; 
 scalar_t__ FUNC16 (struct vnode*) ; 
 scalar_t__ FUNC17 (struct devfs_dirent*,struct thread*) ; 
 int /*<<< orphan*/  FUNC18 (struct devfs_mount*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC25(struct vop_lookup_args *ap, int *dm_unlock)
{
	struct componentname *cnp;
	struct vnode *dvp, **vpp;
	struct thread *td;
	struct devfs_dirent *de, *dd;
	struct devfs_dirent **dde;
	struct devfs_mount *dmp;
	struct mount *mp;
	struct cdev *cdev;
	int error, flags, nameiop, dvplocked;
	char specname[SPECNAMELEN + 1], *pname;

	cnp = ap->a_cnp;
	vpp = ap->a_vpp;
	dvp = ap->a_dvp;
	pname = cnp->cn_nameptr;
	td = cnp->cn_thread;
	flags = cnp->cn_flags;
	nameiop = cnp->cn_nameiop;
	mp = dvp->v_mount;
	dmp = FUNC3(mp);
	dd = dvp->v_data;
	*vpp = NULLVP;

	if ((flags & ISLASTCN) && nameiop == RENAME)
		return (EOPNOTSUPP);

	if (dvp->v_type != VDIR)
		return (ENOTDIR);

	if ((flags & ISDOTDOT) && (dvp->v_vflag & VV_ROOT))
		return (EIO);

	error = FUNC4(dvp, VEXEC, cnp->cn_cred, td);
	if (error)
		return (error);

	if (cnp->cn_namelen == 1 && *pname == '.') {
		if ((flags & ISLASTCN) && nameiop != LOOKUP)
			return (EINVAL);
		*vpp = dvp;
		FUNC7(dvp);
		return (0);
	}

	if (flags & ISDOTDOT) {
		if ((flags & ISLASTCN) && nameiop != LOOKUP)
			return (EINVAL);
		de = FUNC15(dd);
		if (de == NULL)
			return (ENOENT);
		dvplocked = FUNC5(dvp);
		FUNC6(dvp, 0);
		error = FUNC12(de, mp, cnp->cn_lkflags & LK_TYPE_MASK,
		    vpp);
		*dm_unlock = 0;
		FUNC24(dvp, dvplocked | LK_RETRY);
		return (error);
	}

	dd = dvp->v_data;
	de = FUNC13(dd, cnp->cn_nameptr, cnp->cn_namelen, 0);
	while (de == NULL) {	/* While(...) so we can use break */

		if (nameiop == DELETE)
			return (ENOENT);

		/*
		 * OK, we didn't have an entry for the name we were asked for
		 * so we try to see if anybody can create it on demand.
		 */
		pname = FUNC14(specname, dmp, dd, cnp);
		if (pname == NULL)
			break;

		cdev = NULL;
		FUNC1(dmp);
		FUNC23(&dmp->dm_lock);
		FUNC20(&clone_drain_lock);
		FUNC2(dev_clone,
		    td->td_ucred, pname, FUNC19(pname), &cdev);
		FUNC21(&clone_drain_lock);

		if (cdev == NULL)
			FUNC22(&dmp->dm_lock);
		else if (FUNC16(dvp) != 0) {
			*dm_unlock = 0;
			FUNC22(&dmp->dm_lock);
			if (FUNC0(dmp)) {
				FUNC23(&dmp->dm_lock);
				FUNC18(dmp);
			} else
				FUNC23(&dmp->dm_lock);
			FUNC10(cdev);
			return (ENOENT);
		}
		if (FUNC0(dmp)) {
			*dm_unlock = 0;
			FUNC23(&dmp->dm_lock);
			FUNC18(dmp);
			if (cdev != NULL)
				FUNC10(cdev);
			return (ENOENT);
		}

		if (cdev == NULL)
			break;

		FUNC9();
		dde = &FUNC8(cdev)->cdp_dirents[dmp->dm_idx];
		if (dde != NULL && *dde != NULL)
			de = *dde;
		FUNC11();
		FUNC10(cdev);
		break;
	}

	if (de == NULL || de->de_flags & DE_WHITEOUT) {
		if ((nameiop == CREATE || nameiop == RENAME) &&
		    (flags & (LOCKPARENT | WANTPARENT)) && (flags & ISLASTCN)) {
			cnp->cn_flags |= SAVENAME;
			return (EJUSTRETURN);
		}
		return (ENOENT);
	}

	if (FUNC17(de, td))
		return (ENOENT);

	if ((cnp->cn_nameiop == DELETE) && (flags & ISLASTCN)) {
		error = FUNC4(dvp, VWRITE, cnp->cn_cred, td);
		if (error)
			return (error);
		if (*vpp == dvp) {
			FUNC7(dvp);
			*vpp = dvp;
			return (0);
		}
	}
	error = FUNC12(de, mp, cnp->cn_lkflags & LK_TYPE_MASK, vpp);
	*dm_unlock = 0;
	return (error);
}