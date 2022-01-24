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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct TYPE_2__ {int /*<<< orphan*/  cluster_head; } ;
struct buf {int b_ioflags; int b_error; int b_flags; scalar_t__ b_dirtyend; scalar_t__ b_dirtyoff; TYPE_1__ b_cluster; int /*<<< orphan*/  b_npages; scalar_t__ b_data; } ;

/* Variables and functions */
 int BIO_ERROR ; 
 int B_DIRECT ; 
 int B_INVAL ; 
 int B_RELBUF ; 
 struct buf* FUNC0 (int /*<<< orphan*/ *) ; 
 struct buf* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 
 int /*<<< orphan*/  cluster_entry ; 
 int /*<<< orphan*/  cluster_pbuf_zone ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct buf*) ; 

__attribute__((used)) static void
FUNC8(struct buf *bp)
{
	struct buf *nbp, *tbp;
	int error = 0;

	/*
	 * Must propagate errors to all the components.
	 */
	if (bp->b_ioflags & BIO_ERROR)
		error = bp->b_error;

	if (FUNC2(bp)) {
		FUNC5(FUNC6((vm_offset_t) bp->b_data),
		    bp->b_npages);
	}
	/*
	 * Move memory from the large cluster buffer into the component
	 * buffers and mark IO as done on these.
	 */
	for (tbp = FUNC0(&bp->b_cluster.cluster_head);
		tbp; tbp = nbp) {
		nbp = FUNC1(&tbp->b_cluster, cluster_entry);
		if (error) {
			tbp->b_ioflags |= BIO_ERROR;
			tbp->b_error = error;
		} else {
			tbp->b_dirtyoff = tbp->b_dirtyend = 0;
			tbp->b_flags &= ~B_INVAL;
			tbp->b_ioflags &= ~BIO_ERROR;
			/*
			 * XXX the bdwrite()/bqrelse() issued during
			 * cluster building clears B_RELBUF (see bqrelse()
			 * comment).  If direct I/O was specified, we have
			 * to restore it here to allow the buffer and VM
			 * to be freed.
			 */
			if (tbp->b_flags & B_DIRECT)
				tbp->b_flags |= B_RELBUF;
		}
		FUNC3(tbp);
	}
	FUNC4(bp);
	FUNC7(cluster_pbuf_zone, bp);
}