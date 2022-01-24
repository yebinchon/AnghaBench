#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bufdomain {int bd_lofreebuffers; int /*<<< orphan*/  bd_freebuffers; } ;
struct buf {int b_flags; int b_xflags; scalar_t__ b_npages; scalar_t__ b_kvasize; scalar_t__ b_bufsize; int /*<<< orphan*/  b_dep; int /*<<< orphan*/ * b_fsprivate3; int /*<<< orphan*/ * b_fsprivate2; int /*<<< orphan*/ * b_fsprivate1; int /*<<< orphan*/  b_kvabase; int /*<<< orphan*/  b_data; int /*<<< orphan*/ * b_bufobj; scalar_t__ b_dirtyend; scalar_t__ b_dirtyoff; scalar_t__ b_bcount; scalar_t__ b_resid; scalar_t__ b_error; scalar_t__ b_iodone; int /*<<< orphan*/  b_offset; scalar_t__ b_lblkno; scalar_t__ b_blkno; int /*<<< orphan*/ * b_vp; scalar_t__ b_vflags; scalar_t__ b_ioflags; int /*<<< orphan*/  b_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufdomain*) ; 
 scalar_t__ FUNC1 (struct buf*,int,int /*<<< orphan*/ *) ; 
 int BX_VNCLEAN ; 
 int BX_VNDIRTY ; 
 int B_DELWRI ; 
 int B_NOREUSE ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int LK_EXCLUSIVE ; 
 int LK_NOWAIT ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  NOOFFSET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  buf_zone ; 
 int /*<<< orphan*/  FUNC6 (struct bufdomain*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  numbufallocfails ; 
 int /*<<< orphan*/  FUNC8 (char*,struct buf*) ; 
 struct buf* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unmapped_buf ; 

__attribute__((used)) static struct buf *
FUNC10(struct bufdomain *bd)
{
	struct buf *bp;
	int freebufs;

	/*
	 * We can only run out of bufs in the buf zone if the average buf
	 * is less than BKVASIZE.  In this case the actual wait/block will
	 * come from buf_reycle() failing to flush one of these small bufs.
	 */
	bp = NULL;
	freebufs = FUNC5(&bd->bd_freebuffers, -1);
	if (freebufs > 0)
		bp = FUNC9(buf_zone, M_NOWAIT);
	if (bp == NULL) {
		FUNC4(&bd->bd_freebuffers, 1);
		FUNC6(bd);
		FUNC7(numbufallocfails, 1);
		return (NULL);
	}
	/*
	 * Wake-up the bufspace daemon on transition below threshold.
	 */
	if (freebufs == bd->bd_lofreebuffers)
		FUNC6(bd);

	if (FUNC1(bp, LK_EXCLUSIVE | LK_NOWAIT, NULL) != 0)
		FUNC8("getnewbuf_empty: Locked buf %p on free queue.", bp);
	
	FUNC2(bp->b_vp == NULL,
	    ("bp: %p still has vnode %p.", bp, bp->b_vp));
	FUNC2((bp->b_flags & (B_DELWRI | B_NOREUSE)) == 0,
	    ("invalid buffer %p flags %#x", bp, bp->b_flags));
	FUNC2((bp->b_xflags & (BX_VNCLEAN|BX_VNDIRTY)) == 0,
	    ("bp: %p still on a buffer list. xflags %X", bp, bp->b_xflags));
	FUNC2(bp->b_npages == 0,
	    ("bp: %p still has %d vm pages\n", bp, bp->b_npages));
	FUNC2(bp->b_kvasize == 0, ("bp: %p still has kva\n", bp));
	FUNC2(bp->b_bufsize == 0, ("bp: %p still has bufspace\n", bp));

	bp->b_domain = FUNC0(bd);
	bp->b_flags = 0;
	bp->b_ioflags = 0;
	bp->b_xflags = 0;
	bp->b_vflags = 0;
	bp->b_vp = NULL;
	bp->b_blkno = bp->b_lblkno = 0;
	bp->b_offset = NOOFFSET;
	bp->b_iodone = 0;
	bp->b_error = 0;
	bp->b_resid = 0;
	bp->b_bcount = 0;
	bp->b_npages = 0;
	bp->b_dirtyoff = bp->b_dirtyend = 0;
	bp->b_bufobj = NULL;
	bp->b_data = bp->b_kvabase = unmapped_buf;
	bp->b_fsprivate1 = NULL;
	bp->b_fsprivate2 = NULL;
	bp->b_fsprivate3 = NULL;
	FUNC3(&bp->b_dep);

	return (bp);
}