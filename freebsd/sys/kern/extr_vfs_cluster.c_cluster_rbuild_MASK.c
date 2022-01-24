#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  TYPE_5__* vm_page_t ;
typedef  long vm_offset_t ;
typedef  int u_quad_t ;
struct vnode {TYPE_4__* v_mount; } ;
struct TYPE_13__ {int /*<<< orphan*/  cluster_head; } ;
struct buf {int b_flags; int b_blkno; char* b_data; int b_lblkno; scalar_t__ b_offset; long b_bcount; long b_bufsize; int b_npages; int b_vflags; scalar_t__ b_kvasize; TYPE_5__** b_pages; TYPE_2__ b_cluster; void* b_iocmd; TYPE_3__* b_bufobj; int /*<<< orphan*/  b_iodone; } ;
typedef  long off_t ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int daddr_t ;
struct TYPE_16__ {int valid; } ;
struct TYPE_12__ {long f_iosize; } ;
struct TYPE_15__ {scalar_t__ mnt_iosize_max; TYPE_1__ mnt_stat; } ;
struct TYPE_14__ {int /*<<< orphan*/  bo_object; } ;
struct TYPE_11__ {int /*<<< orphan*/  cluster_entry; } ;

/* Variables and functions */
 void* BIO_READ ; 
 int /*<<< orphan*/  FUNC0 (struct buf*) ; 
 int BV_BKGRDINPROG ; 
 int B_ASYNC ; 
 int B_CACHE ; 
 int B_CLUSTER ; 
 int B_MALLOC ; 
 int B_RAM ; 
 int B_VMIO ; 
 int GB_LOCK_NOWAIT ; 
 int GB_UNMAPPED ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 scalar_t__ NOOFFSET ; 
 long PAGE_MASK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct buf*,int /*<<< orphan*/ ) ; 
 TYPE_10__ b_cluster ; 
 void* bogus_page ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 int FUNC5 (long) ; 
 scalar_t__ FUNC6 (struct buf*) ; 
 int /*<<< orphan*/  cluster_callback ; 
 int /*<<< orphan*/  cluster_pbuf_zone ; 
 struct buf* FUNC7 (struct vnode*,int,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*,struct buf*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_5__**,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,long,long) ; 
 scalar_t__ FUNC12 (long) ; 
 int /*<<< orphan*/  FUNC13 (long) ; 
 struct buf* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* unmapped_buf ; 
 int /*<<< orphan*/  FUNC15 (struct buf*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (TYPE_5__*) ; 
 int FUNC19 (int,long) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*) ; 
 scalar_t__ FUNC21 (TYPE_5__*) ; 

__attribute__((used)) static struct buf *
FUNC22(struct vnode *vp, u_quad_t filesize, daddr_t lbn,
    daddr_t blkno, long size, int run, int gbflags, struct buf *fbp)
{
	struct buf *bp, *tbp;
	daddr_t bn;
	off_t off;
	long tinc, tsize;
	int i, inc, j, k, toff;

	FUNC1(size == vp->v_mount->mnt_stat.f_iosize,
	    ("cluster_rbuild: size %ld != f_iosize %jd\n",
	    size, (intmax_t)vp->v_mount->mnt_stat.f_iosize));

	/*
	 * avoid a division
	 */
	while ((u_quad_t) size * (lbn + run) > filesize) {
		--run;
	}

	if (fbp) {
		tbp = fbp;
		tbp->b_iocmd = BIO_READ; 
	} else {
		tbp = FUNC7(vp, lbn, size, 0, 0, gbflags);
		if (tbp->b_flags & B_CACHE)
			return tbp;
		tbp->b_flags |= B_ASYNC | B_RAM;
		tbp->b_iocmd = BIO_READ;
	}
	tbp->b_blkno = blkno;
	if( (tbp->b_flags & B_MALLOC) ||
		((tbp->b_flags & B_VMIO) == 0) || (run <= 1) )
		return tbp;

	bp = FUNC14(cluster_pbuf_zone, M_NOWAIT);
	if (bp == NULL)
		return tbp;

	/*
	 * We are synthesizing a buffer out of vm_page_t's, but
	 * if the block size is not page aligned then the starting
	 * address may not be either.  Inherit the b_data offset
	 * from the original buffer.
	 */
	bp->b_flags = B_ASYNC | B_CLUSTER | B_VMIO;
	if ((gbflags & GB_UNMAPPED) != 0) {
		bp->b_data = unmapped_buf;
	} else {
		bp->b_data = (char *)((vm_offset_t)bp->b_data |
		    ((vm_offset_t)tbp->b_data & PAGE_MASK));
	}
	bp->b_iocmd = BIO_READ;
	bp->b_iodone = cluster_callback;
	bp->b_blkno = blkno;
	bp->b_lblkno = lbn;
	bp->b_offset = tbp->b_offset;
	FUNC1(bp->b_offset != NOOFFSET, ("cluster_rbuild: no buffer offset"));
	FUNC9(vp, bp);

	FUNC2(&bp->b_cluster.cluster_head);

	bp->b_bcount = 0;
	bp->b_bufsize = 0;
	bp->b_npages = 0;

	inc = FUNC5(size);
	for (bn = blkno, i = 0; i < run; ++i, bn += inc) {
		if (i == 0) {
			FUNC16(tbp->b_bufobj->bo_object,
			    tbp->b_npages);
			FUNC15(tbp);
		} else {
			if ((bp->b_npages * PAGE_SIZE) +
			    FUNC12(size) > vp->v_mount->mnt_iosize_max) {
				break;
			}

			tbp = FUNC7(vp, lbn + i, size, 0, 0, GB_LOCK_NOWAIT |
			    (gbflags & GB_UNMAPPED));

			/* Don't wait around for locked bufs. */
			if (tbp == NULL)
				break;

			/*
			 * Stop scanning if the buffer is fully valid
			 * (marked B_CACHE), or locked (may be doing a
			 * background write), or if the buffer is not
			 * VMIO backed.  The clustering code can only deal
			 * with VMIO-backed buffers.  The bo lock is not
			 * required for the BKGRDINPROG check since it
			 * can not be set without the buf lock.
			 */
			if ((tbp->b_vflags & BV_BKGRDINPROG) ||
			    (tbp->b_flags & B_CACHE) ||
			    (tbp->b_flags & B_VMIO) == 0) {
				FUNC4(tbp);
				break;
			}

			/*
			 * The buffer must be completely invalid in order to
			 * take part in the cluster.  If it is partially valid
			 * then we stop.
			 */
			off = tbp->b_offset;
			tsize = size;
			for (j = 0; tsize > 0; j++) {
				toff = off & PAGE_MASK;
				tinc = tsize;
				if (toff + tinc > PAGE_SIZE)
					tinc = PAGE_SIZE - toff;
				if (FUNC21(tbp->b_pages[j]) == 0)
					break;
				if ((tbp->b_pages[j]->valid &
				    FUNC19(toff, tinc)) != 0) {
					FUNC20(tbp->b_pages[j]);
					break;
				}
				FUNC16(tbp->b_bufobj->bo_object, 1);
				off += tinc;
				tsize -= tinc;
			}
			if (tsize > 0) {
clean_sbusy:
				FUNC17(tbp->b_bufobj->bo_object,
				    j);
				for (k = 0; k < j; k++)
					FUNC20(tbp->b_pages[k]);
				FUNC4(tbp);
				break;
			}

			/*
			 * Set a read-ahead mark as appropriate
			 */
			if ((fbp && (i == 1)) || (i == (run - 1)))
				tbp->b_flags |= B_RAM;

			/*
			 * Set the buffer up for an async read (XXX should
			 * we do this only if we do not wind up brelse()ing?).
			 * Set the block number if it isn't set, otherwise
			 * if it is make sure it matches the block number we
			 * expect.
			 */
			tbp->b_flags |= B_ASYNC;
			tbp->b_iocmd = BIO_READ;
			if (tbp->b_blkno == tbp->b_lblkno) {
				tbp->b_blkno = bn;
			} else if (tbp->b_blkno != bn) {
				goto clean_sbusy;
			}
		}
		/*
		 * XXX fbp from caller may not be B_ASYNC, but we are going
		 * to biodone() it in cluster_callback() anyway
		 */
		FUNC0(tbp);
		FUNC3(&bp->b_cluster.cluster_head,
			tbp, b_cluster.cluster_entry);
		for (j = 0; j < tbp->b_npages; j += 1) {
			vm_page_t m;

			m = tbp->b_pages[j];
			if ((bp->b_npages == 0) ||
			    (bp->b_pages[bp->b_npages-1] != m)) {
				bp->b_pages[bp->b_npages] = m;
				bp->b_npages++;
			}
			if (FUNC18(m))
				tbp->b_pages[j] = bogus_page;
		}

		/*
		 * Don't inherit tbp->b_bufsize as it may be larger due to
		 * a non-page-aligned size.  Instead just aggregate using
		 * 'size'.
		 */
		if (tbp->b_bcount != size)
			FUNC11("warning: tbp->b_bcount wrong %ld vs %ld\n", tbp->b_bcount, size);
		if (tbp->b_bufsize != size)
			FUNC11("warning: tbp->b_bufsize wrong %ld vs %ld\n", tbp->b_bufsize, size);
		bp->b_bcount += size;
		bp->b_bufsize += size;
	}

	/*
	 * Fully valid pages in the cluster are already good and do not need
	 * to be re-read from disk.  Replace the page with bogus_page
	 */
	for (j = 0; j < bp->b_npages; j++) {
		if (FUNC18(bp->b_pages[j]))
			bp->b_pages[j] = bogus_page;
	}
	if (bp->b_bufsize > bp->b_kvasize)
		FUNC8("cluster_rbuild: b_bufsize(%ld) > b_kvasize(%d)\n",
		    bp->b_bufsize, bp->b_kvasize);

	if (FUNC6(bp)) {
		FUNC10(FUNC13((vm_offset_t) bp->b_data),
		    (vm_page_t *)bp->b_pages, bp->b_npages);
	}
	return (bp);
}