#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_quad_t ;
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct vattr {scalar_t__ va_type; scalar_t__ va_size; int /*<<< orphan*/  va_mtime; int /*<<< orphan*/  va_atime; } ;
struct TYPE_5__ {int tv_sec; } ;
struct TYPE_4__ {struct vattr na_vattr; } ;
struct nfsnode {int n_flag; int n_attrstamp; scalar_t__ n_size; int /*<<< orphan*/  n_mtim; int /*<<< orphan*/  n_atim; TYPE_2__ n_mtime; TYPE_1__ n_vattr; } ;
struct nfsmount {int nm_acdirmin; int nm_acdirmax; int nm_acregmin; int nm_acregmax; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_6__ {int /*<<< orphan*/  attrcache_hits; int /*<<< orphan*/  attrcache_misses; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*,struct vattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int NACC ; 
 int NCHG ; 
 int /*<<< orphan*/  FUNC2 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsnode*) ; 
 int NMODIFIED ; 
 int NUPD ; 
 scalar_t__ VDIR ; 
 struct nfsmount* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ VREG ; 
 struct nfsnode* FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct vnode*,int /*<<< orphan*/ *) ; 
 int nfs_acdebug ; 
 int FUNC8 (struct vnode*) ; 
 TYPE_3__ nfsstatsv1 ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 int time_second ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*,int /*<<< orphan*/ ) ; 

int
FUNC11(struct vnode *vp, struct vattr *vaper)
{
	struct nfsnode *np;
	struct vattr *vap;
	struct nfsmount *nmp;
	int timeo, mustflush;
	u_quad_t nsize;
	bool setnsize;
	
	np = FUNC5(vp);
	vap = &np->n_vattr.na_vattr;
	nmp = FUNC4(vp->v_mount);
	mustflush = FUNC8(vp);	/* must be before mtx_lock() */
	FUNC2(np);
	/* XXX n_mtime doesn't seem to be updated on a miss-and-reload */
	timeo = (time_second - np->n_mtime.tv_sec) / 10;

#ifdef NFS_ACDEBUG
	if (nfs_acdebug>1)
		printf("ncl_getattrcache: initial timeo = %d\n", timeo);
#endif

	if (vap->va_type == VDIR) {
		if ((np->n_flag & NMODIFIED) || timeo < nmp->nm_acdirmin)
			timeo = nmp->nm_acdirmin;
		else if (timeo > nmp->nm_acdirmax)
			timeo = nmp->nm_acdirmax;
	} else {
		if ((np->n_flag & NMODIFIED) || timeo < nmp->nm_acregmin)
			timeo = nmp->nm_acregmin;
		else if (timeo > nmp->nm_acregmax)
			timeo = nmp->nm_acregmax;
	}

#ifdef NFS_ACDEBUG
	if (nfs_acdebug > 2)
		printf("acregmin %d; acregmax %d; acdirmin %d; acdirmax %d\n",
		    nmp->nm_acregmin, nmp->nm_acregmax,
		    nmp->nm_acdirmin, nmp->nm_acdirmax);

	if (nfs_acdebug)
		printf("ncl_getattrcache: age = %d; final timeo = %d\n",
		    (time_second - np->n_attrstamp), timeo);
#endif

	if ((time_second - np->n_attrstamp) >= timeo &&
	    (mustflush != 0 || np->n_attrstamp == 0)) {
		nfsstatsv1.attrcache_misses++;
		FUNC3(np);
		FUNC1(vp);
		return( ENOENT);
	}
	nfsstatsv1.attrcache_hits++;
	setnsize = false;
	if (vap->va_size != np->n_size) {
		if (vap->va_type == VREG) {
			if (np->n_flag & NMODIFIED) {
				if (vap->va_size < np->n_size)
					vap->va_size = np->n_size;
				else
					np->n_size = vap->va_size;
			} else {
				np->n_size = vap->va_size;
			}
			setnsize = FUNC7(vp, &nsize);
		} else {
			np->n_size = vap->va_size;
		}
	}
	FUNC6((caddr_t)vap, (caddr_t)vaper, sizeof(struct vattr));
	if (np->n_flag & NCHG) {
		if (np->n_flag & NACC)
			vaper->va_atime = np->n_atim;
		if (np->n_flag & NUPD)
			vaper->va_mtime = np->n_mtim;
	}
	FUNC3(np);
	if (setnsize)
		FUNC10(vp, nsize);
	FUNC0(vp, vap);
	return (0);
}