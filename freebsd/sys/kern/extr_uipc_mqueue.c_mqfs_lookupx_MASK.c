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
struct vop_cachedlookup_args {struct vnode* a_dvp; struct vnode** a_vpp; struct componentname* a_cnp; } ;
struct vnode {scalar_t__ v_type; int v_vflag; int /*<<< orphan*/  v_mount; } ;
struct thread {int dummy; } ;
struct mqfs_node {struct mqfs_node* mn_parent; struct mqfs_info* mn_info; } ;
struct mqfs_info {int /*<<< orphan*/  mi_lock; } ;
struct componentname {char* cn_nameptr; int cn_namelen; int cn_flags; int cn_nameiop; int /*<<< orphan*/  cn_cred; struct thread* cn_thread; } ;

/* Variables and functions */
 int CREATE ; 
 int DELETE ; 
 int EINVAL ; 
 int EIO ; 
 int EJUSTRETURN ; 
 int ENOENT ; 
 int ENOTDIR ; 
 int ISDOTDOT ; 
 int ISLASTCN ; 
 int /*<<< orphan*/  FUNC0 (struct mqfs_node*,char*) ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int LOCKPARENT ; 
 int LOOKUP ; 
 int MAKEENTRY ; 
 int MQFS_NAMELEN ; 
 struct vnode* NULLVP ; 
 int RENAME ; 
 int SAVENAME ; 
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  VEXEC ; 
 int FUNC1 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 struct mqfs_node* FUNC4 (struct vnode*) ; 
 int VV_ROOT ; 
 int /*<<< orphan*/  VWRITE ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,struct vnode*,struct componentname*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct vnode**,struct mqfs_node*) ; 
 struct mqfs_node* FUNC7 (struct mqfs_node*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mqfs_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct mqfs_node*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC13(struct vop_cachedlookup_args *ap)
{
	struct componentname *cnp;
	struct vnode *dvp, **vpp;
	struct mqfs_node *pd;
	struct mqfs_node *pn;
	struct mqfs_info *mqfs;
	int nameiop, flags, error, namelen;
	char *pname;
	struct thread *td;

	cnp = ap->a_cnp;
	vpp = ap->a_vpp;
	dvp = ap->a_dvp;
	pname = cnp->cn_nameptr;
	namelen = cnp->cn_namelen;
	td = cnp->cn_thread;
	flags = cnp->cn_flags;
	nameiop = cnp->cn_nameiop;
	pd = FUNC4(dvp);
	pn = NULL;
	mqfs = pd->mn_info;
	*vpp = NULLVP;

	if (dvp->v_type != VDIR)
		return (ENOTDIR);

	error = FUNC1(dvp, VEXEC, cnp->cn_cred, cnp->cn_thread);
	if (error)
		return (error);

	/* shortcut: check if the name is too long */
	if (cnp->cn_namelen >= MQFS_NAMELEN)
		return (ENOENT);

	/* self */
	if (namelen == 1 && pname[0] == '.') {
		if ((flags & ISLASTCN) && nameiop != LOOKUP)
			return (EINVAL);
		pn = pd;
		*vpp = dvp;
		FUNC3(dvp);
		return (0);
	}

	/* parent */
	if (cnp->cn_flags & ISDOTDOT) {
		if (dvp->v_vflag & VV_ROOT)
			return (EIO);
		if ((flags & ISLASTCN) && nameiop != LOOKUP)
			return (EINVAL);
		FUNC2(dvp, 0);
		FUNC0(pd->mn_parent, ("non-root directory has no parent"));
		pn = pd->mn_parent;
		error = FUNC6(dvp->v_mount, vpp, pn);
		FUNC12(dvp, LK_EXCLUSIVE | LK_RETRY);
		return (error);
	}

	/* named node */
	FUNC10(&mqfs->mi_lock);
	pn = FUNC7(pd, pname, namelen, cnp->cn_cred);
	if (pn != NULL)
		FUNC8(pn);
	FUNC11(&mqfs->mi_lock);
	
	/* found */
	if (pn != NULL) {
		/* DELETE */
		if (nameiop == DELETE && (flags & ISLASTCN)) {
			error = FUNC1(dvp, VWRITE, cnp->cn_cred, td);
			if (error) {
				FUNC9(pn);
				return (error);
			}
			if (*vpp == dvp) {
				FUNC3(dvp);
				*vpp = dvp;
				FUNC9(pn);
				return (0);
			}
		}

		/* allocate vnode */
		error = FUNC6(dvp->v_mount, vpp, pn);
		FUNC9(pn);
		if (error == 0 && cnp->cn_flags & MAKEENTRY)
			FUNC5(dvp, *vpp, cnp);
		return (error);
	}
	
	/* not found */

	/* will create a new entry in the directory ? */
	if ((nameiop == CREATE || nameiop == RENAME) && (flags & LOCKPARENT)
	    && (flags & ISLASTCN)) {
		error = FUNC1(dvp, VWRITE, cnp->cn_cred, td);
		if (error)
			return (error);
		cnp->cn_flags |= SAVENAME;
		return (EJUSTRETURN);
	}
	return (ENOENT);
}