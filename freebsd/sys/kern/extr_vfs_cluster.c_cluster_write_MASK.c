#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_quad_t ;
struct vnode {scalar_t__ v_type; int v_lasta; int v_clen; int v_cstart; int v_lastw; TYPE_2__* v_mount; } ;
struct cluster_save {int bs_nchildren; struct buf** bs_children; } ;
struct buf {int b_bufsize; scalar_t__ b_lblkno; scalar_t__ b_offset; int b_blkno; } ;
typedef  scalar_t__ daddr_t ;
struct TYPE_3__ {int f_iosize; } ;
struct TYPE_4__ {int mnt_iosize_max; TYPE_1__ mnt_stat; } ;

/* Variables and functions */
 int FUNC0 (struct vnode*) ; 
 int GB_UNMAPPED ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  M_SEGMENT ; 
 scalar_t__ NOOFFSET ; 
 scalar_t__ FUNC2 (struct vnode*,scalar_t__,int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct vnode*,struct cluster_save*) ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*) ; 
 int FUNC7 (int) ; 
 struct cluster_save* FUNC8 (struct vnode*,struct buf*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct cluster_save*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unmapped_buf_allowed ; 
 scalar_t__ FUNC11 () ; 

void
FUNC12(struct vnode *vp, struct buf *bp, u_quad_t filesize, int seqcount,
    int gbflags)
{
	daddr_t lbn;
	int maxclen, cursize;
	int lblocksize;
	int async;

	if (!unmapped_buf_allowed)
		gbflags &= ~GB_UNMAPPED;

	if (vp->v_type == VREG) {
		async = FUNC0(vp);
		lblocksize = vp->v_mount->mnt_stat.f_iosize;
	} else {
		async = 0;
		lblocksize = bp->b_bufsize;
	}
	lbn = bp->b_lblkno;
	FUNC1(bp->b_offset != NOOFFSET, ("cluster_write: no buffer offset"));

	/* Initialize vnode to beginning of file. */
	if (lbn == 0)
		vp->v_lasta = vp->v_clen = vp->v_cstart = vp->v_lastw = 0;

	if (vp->v_clen == 0 || lbn != vp->v_lastw + 1 ||
	    (bp->b_blkno != vp->v_lasta + FUNC7(lblocksize))) {
		maxclen = vp->v_mount->mnt_iosize_max / lblocksize - 1;
		if (vp->v_clen != 0) {
			/*
			 * Next block is not sequential.
			 *
			 * If we are not writing at end of file, the process
			 * seeked to another point in the file since its last
			 * write, or we have reached our maximum cluster size,
			 * then push the previous cluster. Otherwise try
			 * reallocating to make it sequential.
			 *
			 * Change to algorithm: only push previous cluster if
			 * it was sequential from the point of view of the
			 * seqcount heuristic, otherwise leave the buffer 
			 * intact so we can potentially optimize the I/O
			 * later on in the buf_daemon or update daemon
			 * flush.
			 */
			cursize = vp->v_lastw - vp->v_cstart + 1;
			if (((u_quad_t) bp->b_offset + lblocksize) != filesize ||
			    lbn != vp->v_lastw + 1 || vp->v_clen <= cursize) {
				if (!async && seqcount > 0) {
					FUNC9(vp, lblocksize,
					    vp->v_cstart, cursize, gbflags);
				}
			} else {
				struct buf **bpp, **endbp;
				struct cluster_save *buflist;

				buflist = FUNC8(vp, bp, gbflags);
				if (buflist == NULL) {
					/*
					 * Cluster build failed so just write
					 * it now.
					 */
					FUNC4(bp);
					return;
				}
				endbp = &buflist->bs_children
				    [buflist->bs_nchildren - 1];
				if (FUNC3(vp, buflist)) {
					/*
					 * Failed, push the previous cluster
					 * if *really* writing sequentially
					 * in the logical file (seqcount > 1),
					 * otherwise delay it in the hopes that
					 * the low level disk driver can
					 * optimize the write ordering.
					 */
					for (bpp = buflist->bs_children;
					     bpp < endbp; bpp++)
						FUNC6(*bpp);
					FUNC10(buflist, M_SEGMENT);
					if (seqcount > 1) {
						FUNC9(vp, 
						    lblocksize, vp->v_cstart, 
						    cursize, gbflags);
					}
				} else {
					/*
					 * Succeeded, keep building cluster.
					 */
					for (bpp = buflist->bs_children;
					     bpp <= endbp; bpp++)
						FUNC5(*bpp);
					FUNC10(buflist, M_SEGMENT);
					vp->v_lastw = lbn;
					vp->v_lasta = bp->b_blkno;
					return;
				}
			}
		}
		/*
		 * Consider beginning a cluster. If at end of file, make
		 * cluster as large as possible, otherwise find size of
		 * existing cluster.
		 */
		if ((vp->v_type == VREG) &&
			((u_quad_t) bp->b_offset + lblocksize) != filesize &&
		    (bp->b_blkno == bp->b_lblkno) &&
		    (FUNC2(vp, lbn, NULL, &bp->b_blkno, &maxclen, NULL) ||
		     bp->b_blkno == -1)) {
			FUNC4(bp);
			vp->v_clen = 0;
			vp->v_lasta = bp->b_blkno;
			vp->v_cstart = lbn + 1;
			vp->v_lastw = lbn;
			return;
		}
		vp->v_clen = maxclen;
		if (!async && maxclen == 0) {	/* I/O not contiguous */
			vp->v_cstart = lbn + 1;
			FUNC4(bp);
		} else {	/* Wait for rest of cluster */
			vp->v_cstart = lbn;
			FUNC5(bp);
		}
	} else if (lbn == vp->v_cstart + vp->v_clen) {
		/*
		 * At end of cluster, write it out if seqcount tells us we
		 * are operating sequentially, otherwise let the buf or
		 * update daemon handle it.
		 */
		FUNC5(bp);
		if (seqcount > 1) {
			FUNC9(vp, lblocksize, vp->v_cstart,
			    vp->v_clen + 1, gbflags);
		}
		vp->v_clen = 0;
		vp->v_cstart = lbn + 1;
	} else if (FUNC11()) {
		/*
		 * We are low on memory, get it going NOW
		 */
		FUNC4(bp);
	} else {
		/*
		 * In the middle of a cluster, so just delay the I/O for now.
		 */
		FUNC5(bp);
	}
	vp->v_lastw = lbn;
	vp->v_lasta = bp->b_blkno;
}