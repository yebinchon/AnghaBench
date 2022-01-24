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
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_2__ {scalar_t__ bo_bsize; int /*<<< orphan*/ * bo_ops; } ;
struct vnode {int v_iflag; scalar_t__ v_type; int /*<<< orphan*/  v_vnlock; int /*<<< orphan*/  v_vflag; struct nfsnode* v_data; TYPE_1__ v_bufobj; } ;
struct thread {int dummy; } ;
struct nfsv4node {scalar_t__ nfh_len; scalar_t__ n4_namelen; scalar_t__ n4_fhlen; int /*<<< orphan*/  n4_data; int /*<<< orphan*/  nfh_fh; } ;
struct nfsnode {struct nfsv4node* n_v4; int /*<<< orphan*/  n_excl; int /*<<< orphan*/  n_mtx; struct nfsv4node* n_fhp; struct vnode* n_vnode; } ;
struct nfsmount {int nm_flag; scalar_t__ nm_fhsize; int /*<<< orphan*/  nm_fh; } ;
struct nfsfh {scalar_t__ nfh_len; scalar_t__ n4_namelen; scalar_t__ n4_fhlen; int /*<<< orphan*/  n4_data; int /*<<< orphan*/  nfh_fh; } ;
struct mount {int dummy; } ;
struct componentname {scalar_t__ cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FNV1_32_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int LK_CANRECURSE ; 
 int LK_EXCLUSIVE ; 
 int LK_NOSHARE ; 
 int LK_NOWITNESS ; 
 int MTX_DEF ; 
 int MTX_DUPOK ; 
 int /*<<< orphan*/  M_NFSFH ; 
 int /*<<< orphan*/  M_NFSV4NODE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct nfsv4node*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsnode*) ; 
 int NFSMNT_NFSV4 ; 
 int /*<<< orphan*/  FUNC5 (struct nfsnode*) ; 
 int /*<<< orphan*/  PVFS ; 
 scalar_t__ VDIR ; 
 struct nfsmount* FUNC6 (struct mount*) ; 
 int VI_DOOMED ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*) ; 
 int /*<<< orphan*/  VLKTIMEOUT ; 
 scalar_t__ VNON ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*) ; 
 scalar_t__ VREG ; 
 struct nfsnode* FUNC11 (struct vnode*) ; 
 int /*<<< orphan*/  VV_ROOT ; 
 int /*<<< orphan*/  VV_VMSIZEVNLOCK ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  buf_ops_newnfs ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct nfsv4node*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct mount*,int /*<<< orphan*/ *,struct vnode**) ; 
 int FUNC16 (struct vnode*,struct mount*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 void* FUNC20 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  newnfs_vncmpf ; 
 int /*<<< orphan*/  newnfs_vnodeops ; 
 int /*<<< orphan*/  newnfsnode_zone ; 
 int /*<<< orphan*/  nfs_vnode_tag ; 
 struct nfsnode* FUNC23 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,struct nfsnode*) ; 
 int FUNC25 (struct mount*,int /*<<< orphan*/ ,int,struct thread*,struct vnode**,int /*<<< orphan*/ ,struct nfsv4node*) ; 
 int FUNC26 (struct vnode*,int /*<<< orphan*/ ,int,struct thread*,struct vnode**,int /*<<< orphan*/ ,struct nfsv4node*) ; 
 int /*<<< orphan*/  FUNC27 (struct vnode*) ; 

int
FUNC28(struct mount *mntp, struct vnode *dvp, struct nfsfh *nfhp,
    struct componentname *cnp, struct thread *td, struct nfsnode **npp,
    void *stuff, int lkflags)
{
	struct nfsnode *np, *dnp;
	struct vnode *vp, *nvp;
	struct nfsv4node *newd, *oldd;
	int error;
	u_int hash;
	struct nfsmount *nmp;

	nmp = FUNC6(mntp);
	dnp = FUNC11(dvp);
	*npp = NULL;

	hash = FUNC13(nfhp->nfh_fh, nfhp->nfh_len, FNV1_32_INIT);

	error = FUNC25(mntp, hash, lkflags,
	    td, &nvp, newnfs_vncmpf, nfhp);
	if (error == 0 && nvp != NULL) {
		/*
		 * I believe there is a slight chance that vgonel() could
		 * get called on this vnode between when NFSVOPLOCK() drops
		 * the VI_LOCK() and vget() acquires it again, so that it
		 * hasn't yet had v_usecount incremented. If this were to
		 * happen, the VI_DOOMED flag would be set, so check for
		 * that here. Since we now have the v_usecount incremented,
		 * we should be ok until we vrele() it, if the VI_DOOMED
		 * flag isn't set now.
		 */
		FUNC7(nvp);
		if ((nvp->v_iflag & VI_DOOMED)) {
			FUNC8(nvp);
			FUNC27(nvp);
			error = ENOENT;
		} else {
			FUNC8(nvp);
		}
	}
	if (error) {
		FUNC14(nfhp, M_NFSFH);
		return (error);
	}
	if (nvp != NULL) {
		np = FUNC11(nvp);
		/*
		 * For NFSv4, check to see if it is the same name and
		 * replace the name, if it is different.
		 */
		oldd = newd = NULL;
		if ((nmp->nm_flag & NFSMNT_NFSV4) && np->n_v4 != NULL &&
		    nvp->v_type == VREG &&
		    (np->n_v4->n4_namelen != cnp->cn_namelen ||
		     FUNC2(cnp->cn_nameptr, FUNC1(np->n_v4),
		     cnp->cn_namelen) ||
		     dnp->n_fhp->nfh_len != np->n_v4->n4_fhlen ||
		     FUNC2(dnp->n_fhp->nfh_fh, np->n_v4->n4_data,
		     dnp->n_fhp->nfh_len))) {
		    newd = FUNC20(
			sizeof (struct nfsv4node) + dnp->n_fhp->nfh_len +
			+ cnp->cn_namelen - 1, M_NFSV4NODE, M_WAITOK);
		    FUNC4(np);
		    if (newd != NULL && np->n_v4 != NULL && nvp->v_type == VREG
			&& (np->n_v4->n4_namelen != cnp->cn_namelen ||
			 FUNC2(cnp->cn_nameptr, FUNC1(np->n_v4),
			 cnp->cn_namelen) ||
			 dnp->n_fhp->nfh_len != np->n_v4->n4_fhlen ||
			 FUNC2(dnp->n_fhp->nfh_fh, np->n_v4->n4_data,
			 dnp->n_fhp->nfh_len))) {
			oldd = np->n_v4;
			np->n_v4 = newd;
			newd = NULL;
			np->n_v4->n4_fhlen = dnp->n_fhp->nfh_len;
			np->n_v4->n4_namelen = cnp->cn_namelen;
			FUNC3(dnp->n_fhp->nfh_fh, np->n_v4->n4_data,
			    dnp->n_fhp->nfh_len);
			FUNC3(cnp->cn_nameptr, FUNC1(np->n_v4),
			    cnp->cn_namelen);
		    }
		    FUNC5(np);
		}
		if (newd != NULL)
			FUNC14(newd, M_NFSV4NODE);
		if (oldd != NULL)
			FUNC14(oldd, M_NFSV4NODE);
		*npp = np;
		FUNC14(nfhp, M_NFSFH);
		return (0);
	}
	np = FUNC23(newnfsnode_zone, M_WAITOK | M_ZERO);

	error = FUNC15(nfs_vnode_tag, mntp, &newnfs_vnodeops, &nvp);
	if (error) {
		FUNC24(newnfsnode_zone, np);
		FUNC14(nfhp, M_NFSFH);
		return (error);
	}
	vp = nvp;
	FUNC0(vp->v_bufobj.bo_bsize != 0, ("nfscl_nget: bo_bsize == 0"));
	vp->v_bufobj.bo_ops = &buf_ops_newnfs;
	vp->v_data = np;
	np->n_vnode = vp;
	/* 
	 * Initialize the mutex even if the vnode is going to be a loser.
	 * This simplifies the logic in reclaim, which can then unconditionally
	 * destroy the mutex (in the case of the loser, or if hash_insert
	 * happened to return an error no special casing is needed).
	 */
	FUNC22(&np->n_mtx, "NEWNFSnode lock", NULL, MTX_DEF | MTX_DUPOK);
	FUNC18(&np->n_excl, PVFS, "nfsupg", VLKTIMEOUT, LK_NOSHARE |
	    LK_CANRECURSE);

	/* 
	 * Are we getting the root? If so, make sure the vnode flags
	 * are correct 
	 */
	if ((nfhp->nfh_len == nmp->nm_fhsize) &&
	    !FUNC12(nfhp->nfh_fh, nmp->nm_fh, nfhp->nfh_len)) {
		if (vp->v_type == VNON)
			vp->v_type = VDIR;
		vp->v_vflag |= VV_ROOT;
	}

	vp->v_vflag |= VV_VMSIZEVNLOCK;
	
	np->n_fhp = nfhp;
	/*
	 * For NFSv4, we have to attach the directory file handle and
	 * file name, so that Open Ops can be done later.
	 */
	if (nmp->nm_flag & NFSMNT_NFSV4) {
		np->n_v4 = FUNC20(sizeof (struct nfsv4node)
		    + dnp->n_fhp->nfh_len + cnp->cn_namelen - 1, M_NFSV4NODE,
		    M_WAITOK);
		np->n_v4->n4_fhlen = dnp->n_fhp->nfh_len;
		np->n_v4->n4_namelen = cnp->cn_namelen;
		FUNC3(dnp->n_fhp->nfh_fh, np->n_v4->n4_data,
		    dnp->n_fhp->nfh_len);
		FUNC3(cnp->cn_nameptr, FUNC1(np->n_v4),
		    cnp->cn_namelen);
	} else {
		np->n_v4 = NULL;
	}

	/*
	 * NFS supports recursive and shared locking.
	 */
	FUNC19(vp->v_vnlock, LK_EXCLUSIVE | LK_NOWITNESS, NULL);
	FUNC9(vp);
	FUNC10(vp);
	error = FUNC16(vp, mntp);
	if (error != 0) {
		*npp = NULL;
		FUNC21(&np->n_mtx);
		FUNC17(&np->n_excl);
		FUNC14(nfhp, M_NFSFH);
		if (np->n_v4 != NULL)
			FUNC14(np->n_v4, M_NFSV4NODE);
		FUNC24(newnfsnode_zone, np);
		return (error);
	}
	error = FUNC26(vp, hash, lkflags, 
	    td, &nvp, newnfs_vncmpf, nfhp);
	if (error)
		return (error);
	if (nvp != NULL) {
		*npp = FUNC11(nvp);
		/* vfs_hash_insert() vput()'s the losing vnode */
		return (0);
	}
	*npp = np;

	return (0);
}