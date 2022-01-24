#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ u_int ;
struct vm_page {int dummy; } ;
struct uio {scalar_t__ uio_resid; int uio_iovcnt; scalar_t__ uio_segflg; scalar_t__ uio_rw; int /*<<< orphan*/  uio_offset; TYPE_3__* uio_iov; } ;
struct cdevsw {int /*<<< orphan*/  (* d_strategy ) (struct bio*) ;} ;
struct cdev {scalar_t__ si_iosize_max; int si_flags; struct cdevsw* si_devsw; } ;
struct buf {scalar_t__ b_kvasize; struct vm_page** b_pages; int /*<<< orphan*/ * b_data; } ;
struct bio {int bio_data; scalar_t__ bio_length; scalar_t__ bio_bcount; int bio_ma_n; int bio_flags; scalar_t__ bio_resid; int bio_error; scalar_t__ bio_ma_offset; struct vm_page** bio_ma; struct cdev* bio_dev; int /*<<< orphan*/  bio_offset; int /*<<< orphan*/  bio_cmd; } ;
typedef  int /*<<< orphan*/ * caddr_t ;
struct TYPE_12__ {int /*<<< orphan*/  ru_oublock; int /*<<< orphan*/  ru_inblock; } ;
struct TYPE_15__ {TYPE_2__ td_ru; } ;
struct TYPE_14__ {TYPE_1__* p_vmspace; } ;
struct TYPE_13__ {int iov_len; char* iov_base; } ;
struct TYPE_11__ {int /*<<< orphan*/  vm_map; } ;

/* Variables and functions */
 int BIO_ERROR ; 
 int /*<<< orphan*/  BIO_READ ; 
 int BIO_UNMAPPED ; 
 int /*<<< orphan*/  BIO_WRITE ; 
 int DFLTPHYS ; 
 int EFAULT ; 
 int EFBIG ; 
 int ENXIO ; 
 scalar_t__ MAXPHYS ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  RACCT_READBPS ; 
 int /*<<< orphan*/  RACCT_READIOPS ; 
 int /*<<< orphan*/  RACCT_WRITEBPS ; 
 int /*<<< orphan*/  RACCT_WRITEIOPS ; 
 int SI_NOSPLIT ; 
 int SI_UNMAPPED ; 
 scalar_t__ UIO_READ ; 
 scalar_t__ UIO_USERSPACE ; 
 int /*<<< orphan*/  VM_PROT_READ ; 
 int /*<<< orphan*/  VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,char*) ; 
 int FUNC6 (scalar_t__) ; 
 TYPE_4__* curproc ; 
 TYPE_5__* curthread ; 
 char* FUNC7 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC8 (struct vm_page**,int /*<<< orphan*/ ) ; 
 struct bio* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct bio*) ; 
 int /*<<< orphan*/  FUNC11 (struct bio*) ; 
 struct vm_page** FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pbuf_zone ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,struct vm_page**,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ racct_enable ; 
 int /*<<< orphan*/  FUNC17 (struct bio*) ; 
 struct buf* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct buf*) ; 
 int unmapped_buf ; 
 scalar_t__ unmapped_buf_allowed ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int,...) ; 
 int FUNC21 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct vm_page**,int) ; 
 int /*<<< orphan*/  FUNC22 (struct vm_page**,int) ; 

int
FUNC23(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct cdevsw *csw;
	struct buf *pbuf;
	struct bio *bp;
	struct vm_page **pages;
	caddr_t sa;
	u_int iolen, poff;
	int error, i, npages, maxpages;
	vm_prot_t prot;

	csw = dev->si_devsw;
	npages = 0;
	sa = NULL;
	/* check if character device is being destroyed */
	if (csw == NULL)
		return (ENXIO);

	/* XXX: sanity check */
	if(dev->si_iosize_max < PAGE_SIZE) {
		FUNC15("WARNING: %s si_iosize_max=%d, using DFLTPHYS.\n",
		    FUNC7(dev), dev->si_iosize_max);
		dev->si_iosize_max = DFLTPHYS;
	}

	/*
	 * If the driver does not want I/O to be split, that means that we
	 * need to reject any requests that will not fit into one buffer.
	 */
	if (dev->si_flags & SI_NOSPLIT &&
	    (uio->uio_resid > dev->si_iosize_max || uio->uio_resid > MAXPHYS ||
	    uio->uio_iovcnt > 1)) {
		/*
		 * Tell the user why his I/O was rejected.
		 */
		if (uio->uio_resid > dev->si_iosize_max)
			FUNC20("%s: request size=%zd > si_iosize_max=%d; "
			    "cannot split request\n", FUNC7(dev),
			    uio->uio_resid, dev->si_iosize_max);
		if (uio->uio_resid > MAXPHYS)
			FUNC20("%s: request size=%zd > MAXPHYS=%d; "
			    "cannot split request\n", FUNC7(dev),
			    uio->uio_resid, MAXPHYS);
		if (uio->uio_iovcnt > 1)
			FUNC20("%s: request vectors=%d > 1; "
			    "cannot split request\n", FUNC7(dev),
			    uio->uio_iovcnt);
		return (EFBIG);
	}

	/*
	 * Keep the process UPAGES from being swapped.  Processes swapped
	 * out while holding pbufs, used by swapper, may lead to deadlock.
	 */
	FUNC1(curproc);

	bp = FUNC9();
	if (uio->uio_segflg != UIO_USERSPACE) {
		pbuf = NULL;
		pages = NULL;
	} else if ((dev->si_flags & SI_UNMAPPED) && unmapped_buf_allowed) {
		pbuf = NULL;
		maxpages = FUNC6(FUNC0(uio->uio_resid, MAXPHYS)) + 1;
		pages = FUNC12(sizeof(*pages) * maxpages, M_DEVBUF, M_WAITOK);
	} else {
		pbuf = FUNC18(pbuf_zone, M_WAITOK);
		sa = pbuf->b_data;
		maxpages = FUNC6(MAXPHYS);
		pages = pbuf->b_pages;
	}
	prot = VM_PROT_READ;
	if (uio->uio_rw == UIO_READ)
		prot |= VM_PROT_WRITE;	/* Less backwards than it looks */
	error = 0;
	for (i = 0; i < uio->uio_iovcnt; i++) {
#ifdef RACCT
		if (racct_enable) {
			PROC_LOCK(curproc);
			if (uio->uio_rw == UIO_READ) {
				racct_add_force(curproc, RACCT_READBPS,
				    uio->uio_iov[i].iov_len);
				racct_add_force(curproc, RACCT_READIOPS, 1);
			} else {
				racct_add_force(curproc, RACCT_WRITEBPS,
				    uio->uio_iov[i].iov_len);
				racct_add_force(curproc, RACCT_WRITEIOPS, 1);
			}
			PROC_UNLOCK(curproc);
		}
#endif /* RACCT */

		while (uio->uio_iov[i].iov_len) {
			FUNC11(bp);
			if (uio->uio_rw == UIO_READ) {
				bp->bio_cmd = BIO_READ;
				curthread->td_ru.ru_inblock++;
			} else {
				bp->bio_cmd = BIO_WRITE;
				curthread->td_ru.ru_oublock++;
			}
			bp->bio_offset = uio->uio_offset;
			bp->bio_data = uio->uio_iov[i].iov_base;
			bp->bio_length = uio->uio_iov[i].iov_len;
			if (bp->bio_length > dev->si_iosize_max)
				bp->bio_length = dev->si_iosize_max;
			if (bp->bio_length > MAXPHYS)
				bp->bio_length = MAXPHYS;

			/*
			 * Make sure the pbuf can map the request.
			 * The pbuf has kvasize = MAXPHYS, so a request
			 * larger than MAXPHYS - PAGE_SIZE must be
			 * page aligned or it will be fragmented.
			 */
			poff = (vm_offset_t)bp->bio_data & PAGE_MASK;
			if (pbuf && bp->bio_length + poff > pbuf->b_kvasize) {
				if (dev->si_flags & SI_NOSPLIT) {
					FUNC20("%s: request ptr %p is not "
					    "on a page boundary; cannot split "
					    "request\n", FUNC7(dev),
					    bp->bio_data);
					error = EFBIG;
					goto doerror;
				}
				bp->bio_length = pbuf->b_kvasize;
				if (poff != 0)
					bp->bio_length -= PAGE_SIZE;
			}

			bp->bio_bcount = bp->bio_length;
			bp->bio_dev = dev;

			if (pages) {
				if ((npages = FUNC21(
				    &curproc->p_vmspace->vm_map,
				    (vm_offset_t)bp->bio_data, bp->bio_length,
				    prot, pages, maxpages)) < 0) {
					error = EFAULT;
					goto doerror;
				}
				if (pbuf && sa) {
					FUNC13((vm_offset_t)sa,
					    pages, npages);
					bp->bio_data = *(sa + poff);
				} else {
					bp->bio_ma = pages;
					bp->bio_ma_n = npages;
					bp->bio_ma_offset = poff;
					bp->bio_data = unmapped_buf;
					bp->bio_flags |= BIO_UNMAPPED;
				}
			}

			csw->d_strategy(bp);
			if (uio->uio_rw == UIO_READ)
				FUNC5(bp, "physrd");
			else
				FUNC5(bp, "physwr");

			if (pages) {
				if (pbuf)
					FUNC14((vm_offset_t)sa, npages);
				FUNC22(pages, npages);
			}

			iolen = bp->bio_length - bp->bio_resid;
			if (iolen == 0 && !(bp->bio_flags & BIO_ERROR))
				goto doerror;	/* EOF */
			uio->uio_iov[i].iov_len -= iolen;
			uio->uio_iov[i].iov_base =
			    (char *)uio->uio_iov[i].iov_base + iolen;
			uio->uio_resid -= iolen;
			uio->uio_offset += iolen;
			if (bp->bio_flags & BIO_ERROR) {
				error = bp->bio_error;
				goto doerror;
			}
		}
	}
doerror:
	if (pbuf)
		FUNC19(pbuf_zone, pbuf);
	else if (pages)
		FUNC8(pages, M_DEVBUF);
	FUNC10(bp);
	FUNC2(curproc);
	return (error);
}