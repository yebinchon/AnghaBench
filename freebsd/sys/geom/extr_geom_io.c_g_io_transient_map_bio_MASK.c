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
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ u_int ;
struct bio {long bio_ma_n; int /*<<< orphan*/  bio_flags; scalar_t__ bio_ma_offset; scalar_t__ bio_data; int /*<<< orphan*/  bio_ma; TYPE_1__* bio_to; scalar_t__ bio_length; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_TRANSIENT_MAPPING ; 
 int /*<<< orphan*/  BIO_UNMAPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct bio*,int /*<<< orphan*/ ,scalar_t__) ; 
 int EDEADLK ; 
 int EJUSTRETURN ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  KTR_GEOM ; 
 int M_BESTFIT ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  FUNC3 (long) ; 
 long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int hz ; 
 int /*<<< orphan*/  inflight_transient_maps ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  transient_arena ; 
 int /*<<< orphan*/  transient_map_hard_failures ; 
 scalar_t__ transient_map_retries ; 
 int /*<<< orphan*/  transient_map_soft_failures ; 
 int /*<<< orphan*/  transient_maps ; 
 int unmapped_buf_allowed ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,long,int,scalar_t__*) ; 

__attribute__((used)) static int
FUNC10(struct bio *bp)
{
	vm_offset_t addr;
	long size;
	u_int retried;

	FUNC2(unmapped_buf_allowed, ("unmapped disabled"));

	size = FUNC8(bp->bio_ma_offset + bp->bio_length);
	FUNC2(size / PAGE_SIZE == bp->bio_ma_n, ("Bio too short %p", bp));
	addr = 0;
	retried = 0;
	FUNC5(&transient_maps, 1);
retry:
	if (FUNC9(transient_arena, size, M_BESTFIT | M_NOWAIT, &addr)) {
		if (transient_map_retries != 0 &&
		    retried >= transient_map_retries) {
			FUNC0(KTR_GEOM, "g_down cannot map bp %p provider %s",
			    bp, bp->bio_to->name);
			FUNC4(&transient_map_hard_failures, 1);
			return (EDEADLK/* XXXKIB */);
		} else {
			/*
			 * Naive attempt to quisce the I/O to get more
			 * in-flight requests completed and defragment
			 * the transient_arena.
			 */
			FUNC1(KTR_GEOM, "g_down retrymap bp %p provider %s r %d",
			    bp, bp->bio_to->name, retried);
			FUNC6("g_d_tra", hz / 10);
			retried++;
			FUNC4(&transient_map_soft_failures, 1);
			goto retry;
		}
	}
	FUNC4(&inflight_transient_maps, 1);
	FUNC7((vm_offset_t)addr, bp->bio_ma, FUNC3(size));
	bp->bio_data = (caddr_t)addr + bp->bio_ma_offset;
	bp->bio_flags |= BIO_TRANSIENT_MAPPING;
	bp->bio_flags &= ~BIO_UNMAPPED;
	return (EJUSTRETURN);
}