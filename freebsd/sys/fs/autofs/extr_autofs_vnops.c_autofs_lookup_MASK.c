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
struct vop_lookup_args {struct componentname* a_cnp; struct vnode** a_vpp; struct vnode* a_dvp; } ;
struct vnode {struct autofs_node* v_data; struct mount* v_mount; } ;
struct mount {int dummy; } ;
struct componentname {int cn_flags; int cn_namelen; char* cn_nameptr; scalar_t__ cn_nameiop; int /*<<< orphan*/  cn_lkflags; int /*<<< orphan*/  cn_thread; } ;
struct autofs_node {int /*<<< orphan*/ * an_parent; } ;
struct autofs_mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct autofs_mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct autofs_mount*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ CREATE ; 
 int EJUSTRETURN ; 
 int ENOENT ; 
 int ERELOOKUP ; 
 int ISDOTDOT ; 
 int ISLASTCN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct autofs_mount* FUNC4 (struct mount*) ; 
 int FUNC5 (struct autofs_node*,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct autofs_node*,char*,int,struct autofs_node**) ; 
 int FUNC8 (struct autofs_node*,struct mount*,int /*<<< orphan*/ ,struct vnode**) ; 
 int FUNC9 (struct vnode*,char*,int,struct vnode**) ; 
 int /*<<< orphan*/  autofs_vget_callback ; 
 int FUNC10 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vnode**) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 

__attribute__((used)) static int
FUNC13(struct vop_lookup_args *ap)
{
	struct vnode *dvp, *newvp, **vpp;
	struct mount *mp;
	struct autofs_mount *amp;
	struct autofs_node *anp, *child;
	struct componentname *cnp;
	int error;

	dvp = ap->a_dvp;
	vpp = ap->a_vpp;
	mp = dvp->v_mount;
	amp = FUNC4(mp);
	anp = dvp->v_data;
	cnp = ap->a_cnp;

	if (cnp->cn_flags & ISDOTDOT) {
		FUNC3(anp->an_parent != NULL, ("NULL parent"));
		/*
		 * Note that in this case, dvp is the child vnode, and we
		 * are looking up the parent vnode - exactly reverse from
		 * normal operation.  Unlocking dvp requires some rather
		 * tricky unlock/relock dance to prevent mp from being freed;
		 * use vn_vget_ino_gen() which takes care of all that.
		 */
		error = FUNC10(dvp, autofs_vget_callback,
		    anp->an_parent, cnp->cn_lkflags, vpp);
		if (error != 0) {
			FUNC2("vn_vget_ino_gen() failed with error %d",
			    error);
			return (error);
		}
		return (error);
	}

	if (cnp->cn_namelen == 1 && cnp->cn_nameptr[0] == '.') {
		FUNC12(dvp);
		*vpp = dvp;

		return (0);
	}

	if (FUNC5(anp, cnp->cn_nameptr, cnp->cn_namelen) == false &&
	    FUNC6(cnp->cn_thread) == false) {
		error = FUNC9(dvp,
		    cnp->cn_nameptr, cnp->cn_namelen, &newvp);
		if (error != 0)
			return (error);

		if (newvp != NULL) {
			/*
			 * The target filesystem got automounted.
			 * Let the lookup(9) go around with the same
			 * path component.
			 */
			FUNC11(newvp);
			return (ERELOOKUP);
		}
	}

	FUNC0(amp);
	error = FUNC7(anp, cnp->cn_nameptr, cnp->cn_namelen, &child);
	if (error != 0) {
		if ((cnp->cn_flags & ISLASTCN) && cnp->cn_nameiop == CREATE) {
			FUNC1(amp);
			return (EJUSTRETURN);
		}

		FUNC1(amp);
		return (ENOENT);
	}

	/*
	 * XXX: Dropping the node here is ok, because we never remove nodes.
	 */
	FUNC1(amp);

	error = FUNC8(child, mp, cnp->cn_lkflags, vpp);
	if (error != 0) {
		if ((cnp->cn_flags & ISLASTCN) && cnp->cn_nameiop == CREATE)
			return (EJUSTRETURN);

		return (error);
	}

	return (0);
}