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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_2__ {scalar_t__ bo_bsize; int /*<<< orphan*/ * bo_ops; } ;
struct vnode {scalar_t__ v_type; int /*<<< orphan*/  v_vflag; int /*<<< orphan*/  v_vnlock; struct nfsnode* v_data; TYPE_1__ v_bufobj; } ;
struct thread {int dummy; } ;
struct nfsnode {struct nfsfh* n_fhp; int /*<<< orphan*/  n_excl; int /*<<< orphan*/  n_mtx; struct vnode* n_vnode; } ;
struct nfsmount {int nm_fhsize; int /*<<< orphan*/  nm_fh; } ;
struct nfsfh {int nfh_len; int /*<<< orphan*/ * nfh_fh; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FNV1_32_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int LK_CANRECURSE ; 
 int LK_EXCLUSIVE ; 
 int LK_NOSHARE ; 
 int LK_NOWITNESS ; 
 int MTX_DEF ; 
 int MTX_DUPOK ; 
 int /*<<< orphan*/  M_NFSFH ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PVFS ; 
 scalar_t__ VDIR ; 
 struct nfsmount* FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  VLKTIMEOUT ; 
 scalar_t__ VNON ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 struct nfsnode* FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  VV_ROOT ; 
 int /*<<< orphan*/  VV_VMSIZEVNLOCK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  buf_ops_newnfs ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfsfh*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct mount*,int /*<<< orphan*/ *,struct vnode**) ; 
 int FUNC10 (struct vnode*,struct mount*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 void* FUNC14 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  newnfs_vncmpf ; 
 int /*<<< orphan*/  newnfs_vnodeops ; 
 int /*<<< orphan*/  newnfsnode_zone ; 
 int /*<<< orphan*/  nfs_vnode_tag ; 
 struct nfsnode* FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct nfsnode*) ; 
 int FUNC19 (struct mount*,int /*<<< orphan*/ ,int,struct thread*,struct vnode**,int /*<<< orphan*/ ,struct nfsfh*) ; 
 int FUNC20 (struct vnode*,int /*<<< orphan*/ ,int,struct thread*,struct vnode**,int /*<<< orphan*/ ,struct nfsfh*) ; 

int
FUNC21(struct mount *mntp, u_int8_t *fhp, int fhsize, struct nfsnode **npp,
    int lkflags)
{
	struct thread *td = curthread;	/* XXX */
	struct nfsnode *np;
	struct vnode *vp;
	struct vnode *nvp;
	int error;
	u_int hash;
	struct nfsmount *nmp;
	struct nfsfh *nfhp;

	nmp = FUNC1(mntp);
	*npp = NULL;

	hash = FUNC7(fhp, fhsize, FNV1_32_INIT);

	nfhp = FUNC14(sizeof (struct nfsfh) + fhsize,
	    M_NFSFH, M_WAITOK);
	FUNC6(fhp, &nfhp->nfh_fh[0], fhsize);
	nfhp->nfh_len = fhsize;
	error = FUNC19(mntp, hash, lkflags,
	    td, &nvp, newnfs_vncmpf, nfhp);
	FUNC8(nfhp, M_NFSFH);
	if (error)
		return (error);
	if (nvp != NULL) {
		*npp = FUNC4(nvp);
		return (0);
	}
	np = FUNC17(newnfsnode_zone, M_WAITOK | M_ZERO);

	error = FUNC9(nfs_vnode_tag, mntp, &newnfs_vnodeops, &nvp);
	if (error) {
		FUNC18(newnfsnode_zone, np);
		return (error);
	}
	vp = nvp;
	FUNC0(vp->v_bufobj.bo_bsize != 0, ("ncl_nget: bo_bsize == 0"));
	vp->v_bufobj.bo_ops = &buf_ops_newnfs;
	vp->v_data = np;
	np->n_vnode = vp;
	/* 
	 * Initialize the mutex even if the vnode is going to be a loser.
	 * This simplifies the logic in reclaim, which can then unconditionally
	 * destroy the mutex (in the case of the loser, or if hash_insert
	 * happened to return an error no special casing is needed).
	 */
	FUNC16(&np->n_mtx, "NEWNFSnode lock", NULL, MTX_DEF | MTX_DUPOK);
	FUNC12(&np->n_excl, PVFS, "nfsupg", VLKTIMEOUT, LK_NOSHARE |
	    LK_CANRECURSE);

	/*
	 * NFS supports recursive and shared locking.
	 */
	FUNC13(vp->v_vnlock, LK_EXCLUSIVE | LK_NOWITNESS, NULL);
	FUNC2(vp);
	FUNC3(vp);
	/* 
	 * Are we getting the root? If so, make sure the vnode flags
	 * are correct 
	 */
	if ((fhsize == nmp->nm_fhsize) &&
	    !FUNC5(fhp, nmp->nm_fh, fhsize)) {
		if (vp->v_type == VNON)
			vp->v_type = VDIR;
		vp->v_vflag |= VV_ROOT;
	}

	vp->v_vflag |= VV_VMSIZEVNLOCK;
	
	np->n_fhp = FUNC14(sizeof (struct nfsfh) + fhsize,
	    M_NFSFH, M_WAITOK);
	FUNC6(fhp, np->n_fhp->nfh_fh, fhsize);
	np->n_fhp->nfh_len = fhsize;
	error = FUNC10(vp, mntp);
	if (error != 0) {
		*npp = NULL;
		FUNC8(np->n_fhp, M_NFSFH);
		FUNC15(&np->n_mtx);
		FUNC11(&np->n_excl);
		FUNC18(newnfsnode_zone, np);
		return (error);
	}
	error = FUNC20(vp, hash, lkflags, 
	    td, &nvp, newnfs_vncmpf, np->n_fhp);
	if (error)
		return (error);
	if (nvp != NULL) {
		*npp = FUNC4(nvp);
		/* vfs_hash_insert() vput()'s the losing vnode */
		return (0);
	}
	*npp = np;

	return (0);
}