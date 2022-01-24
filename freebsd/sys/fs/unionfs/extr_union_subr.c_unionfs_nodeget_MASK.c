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
struct vnode {int v_type; int /*<<< orphan*/  v_vflag; struct unionfs_node* v_data; int /*<<< orphan*/  v_vnlock; } ;
struct unionfs_node {char* un_path; struct vnode* un_dvp; struct vnode* un_lowervp; struct vnode* un_uppervp; struct vnode* un_vnode; int /*<<< orphan*/  un_hashmask; int /*<<< orphan*/  un_hashtbl; } ;
struct unionfs_mount {struct vnode* um_lowervp; struct vnode* um_uppervp; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct componentname {int cn_lkflags; char* cn_nameptr; int cn_flags; int cn_namelen; } ;
typedef  enum vtype { ____Placeholder_vtype } vtype ;

/* Variables and functions */
 int EINVAL ; 
 int ISLASTCN ; 
 int LK_RETRY ; 
 int LK_TYPE_MASK ; 
 struct unionfs_mount* FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  M_UNIONFSHASH ; 
 int /*<<< orphan*/  M_UNIONFSNODE ; 
 int /*<<< orphan*/  M_UNIONFSPATH ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct vnode* NULLVP ; 
 int /*<<< orphan*/  NUNIONFSNODECACHE ; 
 int VDIR ; 
 int /*<<< orphan*/  VV_ROOT ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct unionfs_node*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,struct mount*,int /*<<< orphan*/ *,struct vnode**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct vnode*,struct mount*) ; 
 struct unionfs_node* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 struct vnode* FUNC8 (struct vnode*,struct vnode*,struct vnode*,char*) ; 
 struct vnode* FUNC9 (struct unionfs_node*,struct vnode*,char*) ; 
 int /*<<< orphan*/  unionfs_vnodeops ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 

int
FUNC13(struct mount *mp, struct vnode *uppervp,
		struct vnode *lowervp, struct vnode *dvp,
		struct vnode **vpp, struct componentname *cnp,
		struct thread *td)
{
	struct unionfs_mount *ump;
	struct unionfs_node *unp;
	struct vnode   *vp;
	int		error;
	int		lkflags;
	enum vtype	vt;
	char	       *path;

	ump = FUNC0(mp);
	lkflags = (cnp ? cnp->cn_lkflags : 0);
	path = (cnp ? cnp->cn_nameptr : NULL);
	*vpp = NULLVP;

	if (uppervp == NULLVP && lowervp == NULLVP)
		FUNC7("unionfs_nodeget: upper and lower is null");

	vt = (uppervp != NULLVP ? uppervp->v_type : lowervp->v_type);

	/* If it has no ISLASTCN flag, path check is skipped. */
	if (cnp && !(cnp->cn_flags & ISLASTCN))
		path = NULL;

	/* check the cache */
	if (path != NULL && dvp != NULLVP && vt == VDIR) {
		vp = FUNC8(uppervp, lowervp, dvp, path);
		if (vp != NULLVP) {
			FUNC11(vp);
			*vpp = vp;
			goto unionfs_nodeget_out;
		}
	}

	if ((uppervp == NULLVP || ump->um_uppervp != uppervp) ||
	    (lowervp == NULLVP || ump->um_lowervp != lowervp)) {
		/* dvp will be NULLVP only in case of root vnode. */
		if (dvp == NULLVP)
			return (EINVAL);
	}
	unp = FUNC6(sizeof(struct unionfs_node),
	    M_UNIONFSNODE, M_WAITOK | M_ZERO);

	error = FUNC3("unionfs", mp, &unionfs_vnodeops, &vp);
	if (error != 0) {
		FUNC2(unp, M_UNIONFSNODE);
		return (error);
	}
	error = FUNC5(vp, mp);	/* XXX: Too early for mpsafe fs */
	if (error != 0) {
		FUNC2(unp, M_UNIONFSNODE);
		return (error);
	}
	if (dvp != NULLVP)
		FUNC11(dvp);
	if (uppervp != NULLVP)
		FUNC11(uppervp);
	if (lowervp != NULLVP)
		FUNC11(lowervp);

	if (vt == VDIR)
		unp->un_hashtbl = FUNC4(NUNIONFSNODECACHE, M_UNIONFSHASH,
		    &(unp->un_hashmask));

	unp->un_vnode = vp;
	unp->un_uppervp = uppervp;
	unp->un_lowervp = lowervp;
	unp->un_dvp = dvp;
	if (uppervp != NULLVP)
		vp->v_vnlock = uppervp->v_vnlock;
	else
		vp->v_vnlock = lowervp->v_vnlock;

	if (path != NULL) {
		unp->un_path = (char *)
		    FUNC6(cnp->cn_namelen +1, M_UNIONFSPATH, M_WAITOK|M_ZERO);
		FUNC1(cnp->cn_nameptr, unp->un_path, cnp->cn_namelen);
		unp->un_path[cnp->cn_namelen] = '\0';
	}
	vp->v_type = vt;
	vp->v_data = unp;

	if ((uppervp != NULLVP && ump->um_uppervp == uppervp) &&
	    (lowervp != NULLVP && ump->um_lowervp == lowervp))
		vp->v_vflag |= VV_ROOT;

	if (path != NULL && dvp != NULLVP && vt == VDIR)
		*vpp = FUNC9(unp, dvp, path);
	if ((*vpp) != NULLVP) {
		if (dvp != NULLVP)
			FUNC12(dvp);
		if (uppervp != NULLVP)
			FUNC12(uppervp);
		if (lowervp != NULLVP)
			FUNC12(lowervp);

		unp->un_uppervp = NULLVP;
		unp->un_lowervp = NULLVP;
		unp->un_dvp = NULLVP;
		FUNC12(vp);
		vp = *vpp;
		FUNC11(vp);
	} else
		*vpp = vp;

unionfs_nodeget_out:
	if (lkflags & LK_TYPE_MASK)
		FUNC10(vp, lkflags | LK_RETRY);

	return (0);
}