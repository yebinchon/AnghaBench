#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
struct vop_putpages_args {int a_count; int* a_rtvals; int /*<<< orphan*/  a_sync; TYPE_1__** a_m; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int /*<<< orphan*/  v_mount; } ;
struct uio {int uio_iovcnt; int uio_resid; struct thread* uio_td; int /*<<< orphan*/  uio_rw; int /*<<< orphan*/  uio_segflg; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct ucred {int dummy; } ;
struct thread {int /*<<< orphan*/ * td_ucred; } ;
struct nfsnode {int n_flag; scalar_t__ n_size; int /*<<< orphan*/ * n_writecred; } ;
struct nfsmount {int nm_flag; int nm_state; int /*<<< orphan*/  nm_mtx; } ;
struct iovec {int iov_len; int /*<<< orphan*/  iov_base; } ;
typedef  scalar_t__ off_t ;
struct TYPE_3__ {int /*<<< orphan*/  pindex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 int NFSMNT_NFSV3 ; 
 int NFSSTA_GOTFSINFO ; 
 int /*<<< orphan*/  FUNC2 (struct nfsnode*) ; 
 int NNONCACHE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  UIO_NOCOPY ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 struct nfsmount* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int VM_PAGER_ERROR ; 
 int FUNC6 (struct vnode*,struct uio*,int /*<<< orphan*/ ,struct ucred*) ; 
 scalar_t__ VREG ; 
 struct nfsnode* FUNC7 (struct vnode*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ucred*) ; 
 struct ucred* FUNC10 (int /*<<< orphan*/ *) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct nfsmount*,struct vnode*,struct ucred*,struct thread*) ; 
 int /*<<< orphan*/  newnfs_directio_allow_mmap ; 
 scalar_t__ newnfs_directio_enable ; 
 int /*<<< orphan*/  nfs_keep_dirty_on_error ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  unmapped_buf ; 
 int /*<<< orphan*/  v_vnodeout ; 
 int /*<<< orphan*/  v_vnodepgsout ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__**,int*,int,scalar_t__,int) ; 

int
FUNC17(struct vop_putpages_args *ap)
{
	struct uio uio;
	struct iovec iov;
	int i, error, npages, count;
	off_t offset;
	int *rtvals;
	struct vnode *vp;
	struct thread *td;
	struct ucred *cred;
	struct nfsmount *nmp;
	struct nfsnode *np;
	vm_page_t *pages;

	vp = ap->a_vp;
	np = FUNC7(vp);
	td = curthread;				/* XXX */
	/* Set the cred to n_writecred for the write rpcs. */
	if (np->n_writecred != NULL)
		cred = FUNC10(np->n_writecred);
	else
		cred = FUNC10(curthread->td_ucred);	/* XXX */
	nmp = FUNC3(vp->v_mount);
	pages = ap->a_m;
	count = ap->a_count;
	rtvals = ap->a_rtvals;
	npages = FUNC8(count);
	offset = FUNC0(pages[0]->pindex);

	FUNC11(&nmp->nm_mtx);
	if ((nmp->nm_flag & NFSMNT_NFSV3) != 0 &&
	    (nmp->nm_state & NFSSTA_GOTFSINFO) == 0) {
		FUNC12(&nmp->nm_mtx);
		(void)FUNC13(nmp, vp, cred, td);
	} else
		FUNC12(&nmp->nm_mtx);

	FUNC1(np);
	if (newnfs_directio_enable && !newnfs_directio_allow_mmap &&
	    (np->n_flag & NNONCACHE) && (vp->v_type == VREG)) {
		FUNC2(np);
		FUNC14("ncl_putpages: called on noncache-able vnode\n");
		FUNC1(np);
	}
	/*
	 * When putting pages, do not extend file past EOF.
	 */
	if (offset + count > np->n_size) {
		count = np->n_size - offset;
		if (count < 0)
			count = 0;
	}
	FUNC2(np);

	for (i = 0; i < npages; i++)
		rtvals[i] = VM_PAGER_ERROR;

	FUNC5(v_vnodeout);
	FUNC4(v_vnodepgsout, count);

	iov.iov_base = unmapped_buf;
	iov.iov_len = count;
	uio.uio_iov = &iov;
	uio.uio_iovcnt = 1;
	uio.uio_offset = offset;
	uio.uio_resid = count;
	uio.uio_segflg = UIO_NOCOPY;
	uio.uio_rw = UIO_WRITE;
	uio.uio_td = td;

	error = FUNC6(vp, &uio, FUNC15(ap->a_sync),
	    cred);
	FUNC9(cred);

	if (error == 0 || !nfs_keep_dirty_on_error) {
		FUNC16(pages, rtvals, count - uio.uio_resid,
		    np->n_size - offset, npages * PAGE_SIZE);
	}
	return (rtvals[0]);
}