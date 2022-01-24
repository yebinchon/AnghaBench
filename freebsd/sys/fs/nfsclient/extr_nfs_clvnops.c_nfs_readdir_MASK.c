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
struct vop_readdir_args {int* a_eofflag; int /*<<< orphan*/  a_cred; struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
struct vattr {scalar_t__ va_filerev; int /*<<< orphan*/  va_mtime; } ;
struct uio {scalar_t__ uio_offset; int uio_resid; } ;
struct nfsnode {scalar_t__ n_direofoffset; int n_flag; scalar_t__ n_change; int /*<<< orphan*/  n_mtime; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  direofcache_misses; int /*<<< orphan*/  direofcache_hits; } ;

/* Variables and functions */
 int DIRBLKSIZ ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsnode*) ; 
 scalar_t__ FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int NMODIFIED ; 
 scalar_t__ VDIR ; 
 scalar_t__ FUNC5 (struct vnode*,struct vattr*,int /*<<< orphan*/ ) ; 
 struct nfsnode* FUNC6 (struct vnode*) ; 
 int FUNC7 (struct vnode*,struct uio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ nfsstatsv1 ; 

__attribute__((used)) static int
FUNC8(struct vop_readdir_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct nfsnode *np = FUNC6(vp);
	struct uio *uio = ap->a_uio;
	ssize_t tresid, left;
	int error = 0;
	struct vattr vattr;
	
	if (ap->a_eofflag != NULL)
		*ap->a_eofflag = 0;
	if (vp->v_type != VDIR) 
		return(EPERM);

	/*
	 * First, check for hit on the EOF offset cache
	 */
	if (np->n_direofoffset > 0 && uio->uio_offset >= np->n_direofoffset &&
	    (np->n_flag & NMODIFIED) == 0) {
		if (FUNC5(vp, &vattr, ap->a_cred) == 0) {
			FUNC1(np);
			if ((FUNC3(vp) && np->n_change == vattr.va_filerev) ||
			    !FUNC4(&np->n_mtime, &vattr.va_mtime)) {
				FUNC2(np);
				FUNC0(nfsstatsv1.direofcache_hits);
				if (ap->a_eofflag != NULL)
					*ap->a_eofflag = 1;
				return (0);
			} else
				FUNC2(np);
		}
	}

	/*
	 * NFS always guarantees that directory entries don't straddle
	 * DIRBLKSIZ boundaries.  As such, we need to limit the size
	 * to an exact multiple of DIRBLKSIZ, to avoid copying a partial
	 * directory entry.
	 */
	left = uio->uio_resid % DIRBLKSIZ;
	if (left == uio->uio_resid)
		return (EINVAL);
	uio->uio_resid -= left;

	/*
	 * Call ncl_bioread() to do the real work.
	 */
	tresid = uio->uio_resid;
	error = FUNC7(vp, uio, 0, ap->a_cred);

	if (!error && uio->uio_resid == tresid) {
		FUNC0(nfsstatsv1.direofcache_misses);
		if (ap->a_eofflag != NULL)
			*ap->a_eofflag = 1;
	}
	
	/* Add the partial DIRBLKSIZ (left) back in. */
	uio->uio_resid += left;
	return (error);
}