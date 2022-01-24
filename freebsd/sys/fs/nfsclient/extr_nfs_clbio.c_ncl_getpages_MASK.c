#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/ * vm_object_t ;
struct vop_getpages_args {int a_count; scalar_t__* a_rahead; scalar_t__* a_rbehind; TYPE_1__** a_m; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int /*<<< orphan*/ * v_object; int /*<<< orphan*/  v_mount; } ;
struct uio {int uio_iovcnt; int uio_resid; struct thread* uio_td; int /*<<< orphan*/  uio_rw; int /*<<< orphan*/  uio_segflg; int /*<<< orphan*/  uio_offset; struct iovec* uio_iov; } ;
struct ucred {int dummy; } ;
struct thread {struct ucred* td_ucred; } ;
struct nfsnode {int n_flag; } ;
struct nfsmount {int nm_flag; int nm_state; int /*<<< orphan*/  nm_mtx; } ;
struct iovec {int iov_len; scalar_t__ iov_base; } ;
struct buf {scalar_t__ b_data; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_8__ {scalar_t__ dirty; int /*<<< orphan*/  pindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC2 (struct nfsnode*) ; 
 int NFSMNT_NFSV3 ; 
 int NFSSTA_GOTFSINFO ; 
 int /*<<< orphan*/  FUNC3 (struct nfsnode*) ; 
 int NNONCACHE ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 struct nfsmount* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int VM_PAGER_ERROR ; 
 int VM_PAGER_OK ; 
 scalar_t__ VREG ; 
 struct nfsnode* FUNC9 (struct vnode*) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct nfsmount*,struct vnode*,struct ucred*,struct thread*) ; 
 int /*<<< orphan*/  ncl_gbp_getblkno ; 
 int /*<<< orphan*/  ncl_gbp_getblksz ; 
 int /*<<< orphan*/  ncl_pbuf_zone ; 
 int FUNC13 (struct vnode*,struct uio*,struct ucred*) ; 
 int /*<<< orphan*/  newnfs_directio_allow_mmap ; 
 scalar_t__ newnfs_directio_enable ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 struct buf* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct buf*) ; 
 scalar_t__ use_buf_pager ; 
 int /*<<< orphan*/  v_vnodein ; 
 int /*<<< orphan*/  v_vnodepgsin ; 
 int FUNC19 (struct vnode*,TYPE_1__**,int,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 

int
FUNC24(struct vop_getpages_args *ap)
{
	int i, error, nextoff, size, toff, count, npages;
	struct uio uio;
	struct iovec iov;
	vm_offset_t kva;
	struct buf *bp;
	struct vnode *vp;
	struct thread *td;
	struct ucred *cred;
	struct nfsmount *nmp;
	vm_object_t object;
	vm_page_t *pages;
	struct nfsnode *np;

	vp = ap->a_vp;
	np = FUNC9(vp);
	td = curthread;
	cred = curthread->td_ucred;
	nmp = FUNC4(vp->v_mount);
	pages = ap->a_m;
	npages = ap->a_count;

	if ((object = vp->v_object) == NULL) {
		FUNC16("ncl_getpages: called with non-merged cache vnode\n");
		return (VM_PAGER_ERROR);
	}

	if (newnfs_directio_enable && !newnfs_directio_allow_mmap) {
		FUNC2(np);
		if ((np->n_flag & NNONCACHE) && (vp->v_type == VREG)) {
			FUNC3(np);
			FUNC16("ncl_getpages: called on non-cacheable vnode\n");
			return (VM_PAGER_ERROR);
		} else
			FUNC3(np);
	}

	FUNC10(&nmp->nm_mtx);
	if ((nmp->nm_flag & NFSMNT_NFSV3) != 0 &&
	    (nmp->nm_state & NFSSTA_GOTFSINFO) == 0) {
		FUNC11(&nmp->nm_mtx);
		/* We'll never get here for v4, because we always have fsinfo */
		(void)FUNC12(nmp, vp, cred, td);
	} else
		FUNC11(&nmp->nm_mtx);

	if (use_buf_pager)
		return (FUNC19(vp, pages, npages, ap->a_rbehind,
		    ap->a_rahead, ncl_gbp_getblkno, ncl_gbp_getblksz));

	/*
	 * If the requested page is partially valid, just return it and
	 * allow the pager to zero-out the blanks.  Partially valid pages
	 * can only occur at the file EOF.
	 *
	 * XXXGL: is that true for NFS, where short read can occur???
	 */
	FUNC7(object);
	if (!FUNC21(pages[npages - 1]) && --npages == 0)
		goto out;
	FUNC8(object);

	/*
	 * We use only the kva address for the buffer, but this is extremely
	 * convenient and fast.
	 */
	bp = FUNC17(ncl_pbuf_zone, M_WAITOK);

	kva = (vm_offset_t) bp->b_data;
	FUNC14(kva, pages, npages);
	FUNC6(v_vnodein);
	FUNC5(v_vnodepgsin, npages);

	count = npages << PAGE_SHIFT;
	iov.iov_base = (caddr_t) kva;
	iov.iov_len = count;
	uio.uio_iov = &iov;
	uio.uio_iovcnt = 1;
	uio.uio_offset = FUNC0(pages[0]->pindex);
	uio.uio_resid = count;
	uio.uio_segflg = UIO_SYSSPACE;
	uio.uio_rw = UIO_READ;
	uio.uio_td = td;

	error = FUNC13(vp, &uio, cred);
	FUNC15(kva, npages);

	FUNC18(ncl_pbuf_zone, bp);

	if (error && (uio.uio_resid == count)) {
		FUNC16("ncl_getpages: error %d\n", error);
		return (VM_PAGER_ERROR);
	}

	/*
	 * Calculate the number of bytes read and validate only that number
	 * of bytes.  Note that due to pending writes, size may be 0.  This
	 * does not mean that the remaining data is invalid!
	 */

	size = count - uio.uio_resid;
	FUNC7(object);
	for (i = 0, toff = 0; i < npages; i++, toff = nextoff) {
		vm_page_t m;
		nextoff = toff + PAGE_SIZE;
		m = pages[i];

		if (nextoff <= size) {
			/*
			 * Read operation filled an entire page
			 */
			FUNC23(m);
			FUNC1(m->dirty == 0,
			    ("nfs_getpages: page %p is dirty", m));
		} else if (size > toff) {
			/*
			 * Read operation filled a partial page.
			 */
			FUNC20(m);
			FUNC22(m, 0, size - toff);
			FUNC1(m->dirty == 0,
			    ("nfs_getpages: page %p is dirty", m));
		} else {
			/*
			 * Read operation was short.  If no error
			 * occurred we may have hit a zero-fill
			 * section.  We leave valid set to 0, and page
			 * is freed by vm_page_readahead_finish() if
			 * its index is not equal to requested, or
			 * page is zeroed and set valid by
			 * vm_pager_get_pages() for requested page.
			 */
			;
		}
	}
out:
	FUNC8(object);
	if (ap->a_rbehind)
		*ap->a_rbehind = 0;
	if (ap->a_rahead)
		*ap->a_rahead = 0;
	return (VM_PAGER_OK);
}