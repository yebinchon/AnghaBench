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
struct vop_close_args {int a_fflag; int /*<<< orphan*/  a_td; struct ucred* a_cred; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int /*<<< orphan*/  v_mount; scalar_t__ v_object; } ;
struct ucred {int dummy; } ;
struct nfsvattr {int /*<<< orphan*/  na_filerev; } ;
struct nfsnode {int n_flag; int n_error; scalar_t__ n_directio_asyncwr; scalar_t__ n_directio_opens; int /*<<< orphan*/  n_change; scalar_t__ n_attrstamp; } ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_2__ {scalar_t__ nm_negnametimeo; int nm_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsnode*) ; 
 int NFSMNT_NOCTO ; 
 int /*<<< orphan*/  FUNC5 (struct nfsnode*) ; 
 scalar_t__ FUNC6 (struct vnode*) ; 
 scalar_t__ FUNC7 (struct vnode*) ; 
 int NMODIFIED ; 
 int NNONCACHE ; 
 struct ucred* NOCRED ; 
 int NWRITEERR ; 
 int O_DIRECT ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ VREG ; 
 struct nfsnode* FUNC11 (struct vnode*) ; 
 int /*<<< orphan*/  V_SAVE ; 
 int FUNC12 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ newnfs_commit_on_close ; 
 scalar_t__ newnfs_directio_enable ; 
 struct ucred* FUNC14 () ; 
 scalar_t__ nfs_clean_pages_on_close ; 
 int /*<<< orphan*/  FUNC15 (struct vnode**,struct nfsvattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct vnode*) ; 
 int FUNC18 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct vnode*,struct ucred*,int /*<<< orphan*/ ,struct nfsvattr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(struct vop_close_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct nfsnode *np = FUNC11(vp);
	struct nfsvattr nfsva;
	struct ucred *cred;
	int error = 0, ret, localcred = 0;
	int fmode = ap->a_fflag;

	if (FUNC2(vp->v_mount))
		return (0);
	/*
	 * During shutdown, a_cred isn't valid, so just use root.
	 */
	if (ap->a_cred == NOCRED) {
		cred = FUNC14();
		localcred = 1;
	} else {
		cred = ap->a_cred;
	}
	if (vp->v_type == VREG) {
	    /*
	     * Examine and clean dirty pages, regardless of NMODIFIED.
	     * This closes a major hole in close-to-open consistency.
	     * We want to push out all dirty pages (and buffers) on
	     * close, regardless of whether they were dirtied by
	     * mmap'ed writes or via write().
	     */
	    if (nfs_clean_pages_on_close && vp->v_object) {
		FUNC9(vp->v_object);
		FUNC20(vp->v_object, 0, 0, 0);
		FUNC10(vp->v_object);
	    }
	    FUNC4(np);
	    if (np->n_flag & NMODIFIED) {
		FUNC5(np);
		if (FUNC6(vp)) {
		    /*
		     * Under NFSv3 we have dirty buffers to dispose of.  We
		     * must flush them to the NFS server.  We have the option
		     * of waiting all the way through the commit rpc or just
		     * waiting for the initial write.  The default is to only
		     * wait through the initial write so the data is in the
		     * server's cache, which is roughly similar to the state
		     * a standard disk subsystem leaves the file in on close().
		     *
		     * We cannot clear the NMODIFIED bit in np->n_flag due to
		     * potential races with other processes, and certainly
		     * cannot clear it if we don't commit.
		     * These races occur when there is no longer the old
		     * traditional vnode locking implemented for Vnode Ops.
		     */
		    int cm = newnfs_commit_on_close ? 1 : 0;
		    error = FUNC12(vp, MNT_WAIT, ap->a_td, cm, 0);
		    /* np->n_flag &= ~NMODIFIED; */
		} else if (FUNC7(vp)) { 
			if (FUNC17(vp) != 0) {
				int cm = newnfs_commit_on_close ? 1 : 0;
				error = FUNC12(vp, MNT_WAIT, ap->a_td,
				    cm, 0);
				/*
				 * as above w.r.t races when clearing
				 * NMODIFIED.
				 * np->n_flag &= ~NMODIFIED;
				 */
			}
		} else {
			error = FUNC13(vp, V_SAVE, ap->a_td, 1);
		}
		FUNC4(np);
	    }
 	    /* 
 	     * Invalidate the attribute cache in all cases.
 	     * An open is going to fetch fresh attrs any way, other procs
 	     * on this node that have file open will be forced to do an 
 	     * otw attr fetch, but this is safe.
	     * --> A user found that their RPC count dropped by 20% when
	     *     this was commented out and I can't see any requirement
	     *     for it, so I've disabled it when negative lookups are
	     *     enabled. (What does this have to do with negative lookup
	     *     caching? Well nothing, except it was reported by the
	     *     same user that needed negative lookup caching and I wanted
	     *     there to be a way to disable it to see if it
	     *     is the cause of some caching/coherency issue that might
	     *     crop up.)
 	     */
	    if (FUNC8(vp->v_mount)->nm_negnametimeo == 0) {
		    np->n_attrstamp = 0;
		    FUNC1(vp);
	    }
	    if (np->n_flag & NWRITEERR) {
		np->n_flag &= ~NWRITEERR;
		error = np->n_error;
	    }
	    FUNC5(np);
	}

	if (FUNC7(vp)) {
		/*
		 * Get attributes so "change" is up to date.
		 */
		if (error == 0 && FUNC17(vp) != 0 &&
		    vp->v_type == VREG &&
		    (FUNC8(vp->v_mount)->nm_flag & NFSMNT_NOCTO) == 0) {
			ret = FUNC19(vp, cred, ap->a_td, &nfsva,
			    NULL);
			if (!ret) {
				np->n_change = nfsva.na_filerev;
				(void) FUNC15(&vp, &nfsva, NULL,
				    NULL, 0, 0);
			}
		}

		/*
		 * and do the close.
		 */
		ret = FUNC18(vp, 0, ap->a_td);
		if (!error && ret)
			error = ret;
		if (error)
			error = FUNC16(ap->a_td, error, (uid_t)0,
			    (gid_t)0);
	}
	if (newnfs_directio_enable)
		FUNC0((np->n_directio_asyncwr == 0),
			("nfs_close: dirty unflushed (%d) directio buffers\n",
			 np->n_directio_asyncwr));
	if (newnfs_directio_enable && (fmode & O_DIRECT) && (vp->v_type == VREG)) {
		FUNC4(np);
		FUNC0((np->n_directio_opens > 0), 
			("nfs_close: unexpectedly value (0) of n_directio_opens\n"));
		np->n_directio_opens--;
		if (np->n_directio_opens == 0)
			np->n_flag &= ~NNONCACHE;
		FUNC5(np);
	}
	if (localcred)
		FUNC3(cred);
	return (error);
}