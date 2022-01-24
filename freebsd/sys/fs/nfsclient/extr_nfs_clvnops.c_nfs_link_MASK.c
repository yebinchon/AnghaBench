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
typedef  int /*<<< orphan*/  uid_t ;
struct vop_link_args {struct componentname* a_cnp; struct vnode* a_tdvp; struct vnode* a_vp; } ;
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct nfsvattr {int /*<<< orphan*/  na_ctime; } ;
struct nfsnode {scalar_t__ n_attrstamp; int /*<<< orphan*/  n_flag; } ;
struct componentname {int cn_flags; int /*<<< orphan*/  cn_thread; int /*<<< orphan*/  cn_cred; int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_2__ {scalar_t__ nm_negnametimeo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int MAKEENTRY ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsnode*) ; 
 scalar_t__ FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  NMODIFIED ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfsnode* FUNC6 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,struct vnode*,struct componentname*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode**,struct nfsvattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct vnode*,struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfsvattr*,struct nfsvattr*,int*,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct vop_link_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct vnode *tdvp = ap->a_tdvp;
	struct componentname *cnp = ap->a_cnp;
	struct nfsnode *np, *tdnp;
	struct nfsvattr nfsva, dnfsva;
	int error = 0, attrflag, dattrflag;

	/*
	 * Push all writes to the server, so that the attribute cache
	 * doesn't get "out of sync" with the server.
	 * XXX There should be a better way!
	 */
	FUNC5(vp, MNT_WAIT, cnp->cn_thread);

	error = FUNC10(tdvp, vp, cnp->cn_nameptr, cnp->cn_namelen,
	    cnp->cn_cred, cnp->cn_thread, &dnfsva, &nfsva, &attrflag,
	    &dattrflag, NULL);
	tdnp = FUNC6(tdvp);
	FUNC1(tdnp);
	tdnp->n_flag |= NMODIFIED;
	if (dattrflag != 0) {
		FUNC2(tdnp);
		(void) FUNC8(&tdvp, &dnfsva, NULL, NULL, 0, 1);
	} else {
		tdnp->n_attrstamp = 0;
		FUNC2(tdnp);
		FUNC0(tdvp);
	}
	if (attrflag)
		(void) FUNC8(&vp, &nfsva, NULL, NULL, 0, 1);
	else {
		np = FUNC6(vp);
		FUNC1(np);
		np->n_attrstamp = 0;
		FUNC2(np);
		FUNC0(vp);
	}
	/*
	 * If negative lookup caching is enabled, I might as well
	 * add an entry for this node. Not necessary for correctness,
	 * but if negative caching is enabled, then the system
	 * must care about lookup caching hit rate, so...
	 */
	if (FUNC4(vp->v_mount)->nm_negnametimeo != 0 &&
	    (cnp->cn_flags & MAKEENTRY) && attrflag != 0 && error == 0) {
		FUNC7(tdvp, vp, cnp, &nfsva.na_ctime, NULL);
	}
	if (error && FUNC3(vp))
		error = FUNC9(cnp->cn_thread, error, (uid_t)0,
		    (gid_t)0);
	return (error);
}