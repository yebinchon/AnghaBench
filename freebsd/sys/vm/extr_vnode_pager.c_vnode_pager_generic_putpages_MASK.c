#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
typedef  TYPE_3__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_page_bits_t ;
typedef  int vm_ooffset_t ;
typedef  TYPE_4__* vm_object_t ;
typedef  int uintmax_t ;
typedef  int /*<<< orphan*/  u_long ;
struct vnode {TYPE_4__* v_object; } ;
struct uio {int uio_iovcnt; int uio_offset; int uio_resid; int /*<<< orphan*/ * uio_td; int /*<<< orphan*/  uio_rw; int /*<<< orphan*/  uio_segflg; struct iovec* uio_iov; } ;
struct timeval {int dummy; } ;
struct iovec {int iov_len; int /*<<< orphan*/ * iov_base; } ;
typedef  int off_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_17__ {int vnp_size; } ;
struct TYPE_18__ {TYPE_1__ vnp; } ;
struct TYPE_20__ {TYPE_2__ un_pager; } ;
struct TYPE_19__ {scalar_t__ dirty; scalar_t__ pindex; } ;
struct TYPE_16__ {int /*<<< orphan*/  td_ucred; } ;

/* Variables and functions */
 scalar_t__ DEV_BSIZE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int NBBY ; 
 int FUNC3 (int) ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  UIO_NOCOPY ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int VM_PAGER_BAD ; 
 int VM_PAGER_ERROR ; 
 int VM_PAGER_OK ; 
 int FUNC11 (struct vnode*,struct uio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 
 TYPE_10__* curthread ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int FUNC14 (struct timeval*,int*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC16 (int,scalar_t__) ; 
 int /*<<< orphan*/  v_vnodeout ; 
 int /*<<< orphan*/  v_vnodepgsout ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int,int) ; 
 scalar_t__ FUNC19 (TYPE_3__*,int) ; 
 int FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (struct vnode*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 

int
FUNC23(struct vnode *vp, vm_page_t *ma, int bytecount,
    int flags, int *rtvals)
{
	vm_object_t object;
	vm_page_t m;
	vm_ooffset_t maxblksz, next_offset, poffset, prev_offset;
	struct uio auio;
	struct iovec aiov;
	off_t prev_resid, wrsz;
	int count, error, i, maxsize, ncount, pgoff, ppscheck;
	bool in_hole;
	static struct timeval lastfail;
	static int curfail;

	object = vp->v_object;
	count = bytecount / PAGE_SIZE;

	for (i = 0; i < count; i++)
		rtvals[i] = VM_PAGER_ERROR;

	if ((int64_t)ma[0]->pindex < 0) {
		FUNC15("vnode_pager_generic_putpages: "
		    "attempt to write meta-data 0x%jx(%lx)\n",
		    (uintmax_t)ma[0]->pindex, (u_long)ma[0]->dirty);
		rtvals[0] = VM_PAGER_BAD;
		return (VM_PAGER_BAD);
	}

	maxsize = count * PAGE_SIZE;
	ncount = count;

	poffset = FUNC0(ma[0]->pindex);

	/*
	 * If the page-aligned write is larger then the actual file we
	 * have to invalidate pages occurring beyond the file EOF.  However,
	 * there is an edge case where a file may not be page-aligned where
	 * the last page is partially invalid.  In this case the filesystem
	 * may not properly clear the dirty bits for the entire page (which
	 * could be VM_PAGE_BITS_ALL due to the page having been mmap()d).
	 * With the page locked we are free to fix-up the dirty bits here.
	 *
	 * We do not under any circumstances truncate the valid bits, as
	 * this will screw up bogus page replacement.
	 */
	FUNC7(object);
	if (maxsize + poffset > object->un_pager.vnp.vnp_size) {
		if (!FUNC9(object)) {
			FUNC8(object);
			FUNC10(object);
			if (maxsize + poffset <= object->un_pager.vnp.vnp_size)
				goto downgrade;
		}
		if (object->un_pager.vnp.vnp_size > poffset) {
			maxsize = object->un_pager.vnp.vnp_size - poffset;
			ncount = FUNC12(maxsize);
			if ((pgoff = (int)maxsize & PAGE_MASK) != 0) {
				pgoff = FUNC16(pgoff, DEV_BSIZE);

				/*
				 * If the object is locked and the following
				 * conditions hold, then the page's dirty
				 * field cannot be concurrently changed by a
				 * pmap operation.
				 */
				m = ma[ncount - 1];
				FUNC17(m);
				FUNC1(!FUNC13(m),
		("vnode_pager_generic_putpages: page %p is not read-only", m));
				FUNC2(m->dirty != 0);
				FUNC18(m, pgoff, PAGE_SIZE -
				    pgoff);
			}
		} else {
			maxsize = 0;
			ncount = 0;
		}
		for (i = ncount; i < count; i++)
			rtvals[i] = VM_PAGER_BAD;
downgrade:
		FUNC6(object);
	}

	auio.uio_iov = &aiov;
	auio.uio_segflg = UIO_NOCOPY;
	auio.uio_rw = UIO_WRITE;
	auio.uio_td = NULL;
	maxblksz = FUNC16(poffset + maxsize, DEV_BSIZE);

	for (prev_offset = poffset; prev_offset < maxblksz;) {
		/* Skip clean blocks. */
		for (in_hole = true; in_hole && prev_offset < maxblksz;) {
			m = ma[FUNC3(prev_offset - poffset)];
			for (i = FUNC20(prev_offset);
			    i < sizeof(vm_page_bits_t) * NBBY &&
			    prev_offset < maxblksz; i++) {
				if (FUNC19(m, prev_offset)) {
					in_hole = false;
					break;
				}
				prev_offset += DEV_BSIZE;
			}
		}
		if (in_hole)
			goto write_done;

		/* Find longest run of dirty blocks. */
		for (next_offset = prev_offset; next_offset < maxblksz;) {
			m = ma[FUNC3(next_offset - poffset)];
			for (i = FUNC20(next_offset);
			    i < sizeof(vm_page_bits_t) * NBBY &&
			    next_offset < maxblksz; i++) {
				if (!FUNC19(m, next_offset))
					goto start_write;
				next_offset += DEV_BSIZE;
			}
		}
start_write:
		if (next_offset > poffset + maxsize)
			next_offset = poffset + maxsize;

		/*
		 * Getting here requires finding a dirty block in the
		 * 'skip clean blocks' loop.
		 */
		FUNC2(prev_offset < next_offset);

		FUNC8(object);
		aiov.iov_base = NULL;
		auio.uio_iovcnt = 1;
		auio.uio_offset = prev_offset;
		prev_resid = auio.uio_resid = aiov.iov_len = next_offset -
		    prev_offset;
		error = FUNC11(vp, &auio,
		    FUNC22(flags), curthread->td_ucred);

		wrsz = prev_resid - auio.uio_resid;
		if (wrsz == 0) {
			if (FUNC14(&lastfail, &curfail, 1) != 0) {
				FUNC21(vp, "vnode_pager_putpages: "
				    "zero-length write at %ju resid %zd\n",
				    auio.uio_offset, auio.uio_resid);
			}
			FUNC7(object);
			break;
		}

		/* Adjust the starting offset for next iteration. */
		prev_offset += wrsz;
		FUNC2(auio.uio_offset == prev_offset);

		ppscheck = 0;
		if (error != 0 && (ppscheck = FUNC14(&lastfail,
		    &curfail, 1)) != 0)
			FUNC21(vp, "vnode_pager_putpages: I/O error %d\n",
			    error);
		if (auio.uio_resid != 0 && (ppscheck != 0 ||
		    FUNC14(&lastfail, &curfail, 1) != 0))
			FUNC21(vp, "vnode_pager_putpages: residual I/O %zd "
			    "at %ju\n", auio.uio_resid,
			    (uintmax_t)ma[0]->pindex);
		FUNC7(object);
		if (error != 0 || auio.uio_resid != 0)
			break;
	}
write_done:
	/* Mark completely processed pages. */
	for (i = 0; i < FUNC3(prev_offset - poffset); i++)
		rtvals[i] = VM_PAGER_OK;
	/* Mark partial EOF page. */
	if (prev_offset == poffset + maxsize && (prev_offset & PAGE_MASK) != 0)
		rtvals[i++] = VM_PAGER_OK;
	/* Unwritten pages in range, free bonus if the page is clean. */
	for (; i < ncount; i++)
		rtvals[i] = ma[i]->dirty == 0 ? VM_PAGER_OK : VM_PAGER_ERROR;
	FUNC8(object);
	FUNC4(v_vnodepgsout, i);
	FUNC5(v_vnodeout);
	return (rtvals[0]);
}