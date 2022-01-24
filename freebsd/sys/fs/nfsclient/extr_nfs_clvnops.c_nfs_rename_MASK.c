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
struct vop_rename_args {struct vnode* a_tdvp; struct vnode* a_fvp; struct componentname* a_fcnp; struct componentname* a_tcnp; struct vnode* a_fdvp; struct vnode* a_tvp; } ;
struct vnode {scalar_t__ v_mount; scalar_t__ v_type; } ;
struct nfsv4node {int n4_namelen; scalar_t__ n4_fhlen; int /*<<< orphan*/  n4_data; } ;
struct nfsnode {struct nfsv4node* n_v4; TYPE_1__* n_fhp; int /*<<< orphan*/  n_sillyrename; } ;
struct componentname {int cn_flags; int cn_namelen; int /*<<< orphan*/  cn_nameptr; int /*<<< orphan*/  cn_thread; int /*<<< orphan*/  cn_cred; } ;
struct TYPE_2__ {int nfh_len; int /*<<< orphan*/  nfh_fh; } ;

/* Variables and functions */
 int ENOENT ; 
 int EXDEV ; 
 int HASBUF ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int /*<<< orphan*/  M_NFSV4NODE ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (struct nfsv4node*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfsnode*) ; 
 int FUNC6 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct vnode*) ; 
 scalar_t__ VDIR ; 
 int FUNC9 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ VREG ; 
 struct nfsnode* FUNC10 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC13 (struct nfsv4node*,int /*<<< orphan*/ ) ; 
 struct nfsv4node* FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct vnode*,struct vnode*,int /*<<< orphan*/ ,int,struct vnode*,struct vnode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct vnode*,struct vnode*,struct componentname*) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  FUNC18 (struct vnode*) ; 
 int FUNC19 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC20 (struct vnode*) ; 

__attribute__((used)) static int
FUNC21(struct vop_rename_args *ap)
{
	struct vnode *fvp = ap->a_fvp;
	struct vnode *tvp = ap->a_tvp;
	struct vnode *fdvp = ap->a_fdvp;
	struct vnode *tdvp = ap->a_tdvp;
	struct componentname *tcnp = ap->a_tcnp;
	struct componentname *fcnp = ap->a_fcnp;
	struct nfsnode *fnp = FUNC10(ap->a_fvp);
	struct nfsnode *tdnp = FUNC10(ap->a_tdvp);
	struct nfsv4node *newv4 = NULL;
	int error;

	FUNC0((tcnp->cn_flags & HASBUF) != 0 &&
	    (fcnp->cn_flags & HASBUF) != 0, ("nfs_rename: no name"));
	/* Check for cross-device rename */
	if ((fvp->v_mount != tdvp->v_mount) ||
	    (tvp && (fvp->v_mount != tvp->v_mount))) {
		error = EXDEV;
		goto out;
	}

	if (fvp == tvp) {
		FUNC17("nfs_rename: fvp == tvp (can't happen)\n");
		error = 0;
		goto out;
	}
	if ((error = FUNC6(fvp, LK_EXCLUSIVE)) != 0)
		goto out;

	/*
	 * We have to flush B_DELWRI data prior to renaming
	 * the file.  If we don't, the delayed-write buffers
	 * can be flushed out later after the file has gone stale
	 * under NFSV3.  NFSV2 does not have this problem because
	 * ( as far as I can tell ) it flushes dirty buffers more
	 * often.
	 * 
	 * Skip the rename operation if the fsync fails, this can happen
	 * due to the server's volume being full, when we pushed out data
	 * that was written back to our cache earlier. Not checking for
	 * this condition can result in potential (silent) data loss.
	 */
	error = FUNC9(fvp, MNT_WAIT, fcnp->cn_thread);
	FUNC7(fvp, 0);
	if (!error && tvp)
		error = FUNC9(tvp, MNT_WAIT, tcnp->cn_thread);
	if (error)
		goto out;

	/*
	 * If the tvp exists and is in use, sillyrename it before doing the
	 * rename of the new file over it.
	 * XXX Can't sillyrename a directory.
	 */
	if (tvp && FUNC19(tvp) > 1 && !FUNC10(tvp)->n_sillyrename &&
		tvp->v_type != VDIR && !FUNC16(tdvp, tvp, tcnp)) {
		FUNC18(tvp);
		tvp = NULL;
	}

	error = FUNC15(fdvp, fvp, fcnp->cn_nameptr, fcnp->cn_namelen,
	    tdvp, tvp, tcnp->cn_nameptr, tcnp->cn_namelen, tcnp->cn_cred,
	    tcnp->cn_thread);

	if (error == 0 && FUNC8(tdvp)) {
		/*
		 * For NFSv4, check to see if it is the same name and
		 * replace the name, if it is different.
		 */
		newv4 = FUNC14(
		    sizeof (struct nfsv4node) +
		    tdnp->n_fhp->nfh_len + tcnp->cn_namelen - 1,
		    M_NFSV4NODE, M_WAITOK);
		FUNC4(tdnp);
		FUNC4(fnp);
		if (fnp->n_v4 != NULL && fvp->v_type == VREG &&
		    (fnp->n_v4->n4_namelen != tcnp->cn_namelen ||
		      FUNC2(tcnp->cn_nameptr, FUNC1(fnp->n_v4),
		      tcnp->cn_namelen) ||
		      tdnp->n_fhp->nfh_len != fnp->n_v4->n4_fhlen ||
		      FUNC2(tdnp->n_fhp->nfh_fh, fnp->n_v4->n4_data,
			tdnp->n_fhp->nfh_len))) {
#ifdef notdef
{ char nnn[100]; int nnnl;
nnnl = (tcnp->cn_namelen < 100) ? tcnp->cn_namelen : 99;
bcopy(tcnp->cn_nameptr, nnn, nnnl);
nnn[nnnl] = '\0';
printf("ren replace=%s\n",nnn);
}
#endif
			FUNC13(fnp->n_v4, M_NFSV4NODE);
			fnp->n_v4 = newv4;
			newv4 = NULL;
			fnp->n_v4->n4_fhlen = tdnp->n_fhp->nfh_len;
			fnp->n_v4->n4_namelen = tcnp->cn_namelen;
			FUNC3(tdnp->n_fhp->nfh_fh, fnp->n_v4->n4_data,
			    tdnp->n_fhp->nfh_len);
			FUNC3(tcnp->cn_nameptr,
			    FUNC1(fnp->n_v4), tcnp->cn_namelen);
		}
		FUNC5(tdnp);
		FUNC5(fnp);
		if (newv4 != NULL)
			FUNC13(newv4, M_NFSV4NODE);
	}

	if (fvp->v_type == VDIR) {
		if (tvp != NULL && tvp->v_type == VDIR)
			FUNC12(tdvp);
		FUNC12(fdvp);
	}

out:
	if (tdvp == tvp)
		FUNC20(tdvp);
	else
		FUNC18(tdvp);
	if (tvp)
		FUNC18(tvp);
	FUNC20(fdvp);
	FUNC20(fvp);
	/*
	 * Kludge: Map ENOENT => 0 assuming that it is a reply to a retry.
	 */
	if (error == ENOENT)
		error = 0;
	return (error);
}