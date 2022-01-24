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
struct vop_reclaim_args {int /*<<< orphan*/  a_td; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int /*<<< orphan*/ * v_data; } ;
struct nfsnode {int /*<<< orphan*/  n_excl; int /*<<< orphan*/  n_mtx; struct nfsdmap* n_v4; struct nfsdmap* n_fhp; int /*<<< orphan*/ * n_writecred; int /*<<< orphan*/  n_cookies; } ;
struct nfsdmap {int dummy; } ;

/* Variables and functions */
 struct nfsdmap* FUNC0 (int /*<<< orphan*/ *) ; 
 struct nfsdmap* FUNC1 (struct nfsdmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NFSDIROFF ; 
 int /*<<< orphan*/  M_NFSFH ; 
 int /*<<< orphan*/  M_NFSV4NODE ; 
 int /*<<< orphan*/  FUNC2 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsnode*) ; 
 scalar_t__ FUNC4 (struct vnode*) ; 
 scalar_t__ VDIR ; 
 scalar_t__ VREG ; 
 struct nfsnode* FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nfsdmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ndm_list ; 
 int /*<<< orphan*/  newnfsnode_zone ; 
 int /*<<< orphan*/  FUNC11 (struct vop_reclaim_args*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC13 (struct vnode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct vnode*) ; 

int
FUNC16(struct vop_reclaim_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct nfsnode *np = FUNC5(vp);
	struct nfsdmap *dp, *dp2;

	/*
	 * If the NLM is running, give it a chance to abort pending
	 * locks.
	 */
	if (&nfs_reclaim_p != NULL)
		FUNC11(ap);

	FUNC2(np);
	FUNC10(vp, ap->a_td);
	FUNC3(np);

	if (FUNC4(vp) && vp->v_type == VREG)
		/*
		 * We can now safely close any remaining NFSv4 Opens for
		 * this file. Most opens will have already been closed by
		 * ncl_inactive(), but there are cases where it is not
		 * called, so we need to do it again here.
		 */
		(void) FUNC13(vp, 1, ap->a_td);

	FUNC15(vp);

	/*
	 * Call nfscl_reclaimnode() to save attributes in the delegation,
	 * as required.
	 */
	if (vp->v_type == VREG)
		FUNC12(vp);

	/*
	 * Free up any directory cookie structures and
	 * large file handle structures that might be associated with
	 * this nfs node.
	 */
	if (vp->v_type == VDIR) {
		dp = FUNC0(&np->n_cookies);
		while (dp) {
			dp2 = dp;
			dp = FUNC1(dp, ndm_list);
			FUNC7(dp2, M_NFSDIROFF);
		}
	}
	if (np->n_writecred != NULL)
		FUNC6(np->n_writecred);
	FUNC7(np->n_fhp, M_NFSFH);
	if (np->n_v4 != NULL)
		FUNC7(np->n_v4, M_NFSV4NODE);
	FUNC9(&np->n_mtx);
	FUNC8(&np->n_excl);
	FUNC14(newnfsnode_zone, vp->v_data);
	vp->v_data = NULL;
	return (0);
}