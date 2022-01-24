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
struct hifn_operand {int nsegs; int /*<<< orphan*/  segs; int /*<<< orphan*/  mapsize; } ;
typedef  int /*<<< orphan*/  seg ;
typedef  int /*<<< orphan*/  bus_size_t ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MAX_SCATTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(void* arg, bus_dma_segment_t *seg, int nsegs, bus_size_t mapsize, int error)
{
	struct hifn_operand *op = arg;

	FUNC0(nsegs <= MAX_SCATTER,
		("hifn_op_cb: too many DMA segments (%u > %u) "
		 "returned when mapping operand", nsegs, MAX_SCATTER));
	op->mapsize = mapsize;
	op->nsegs = nsegs;
	FUNC1(seg, op->segs, nsegs * sizeof (seg[0]));
}