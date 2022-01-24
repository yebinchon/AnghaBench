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
struct disk {int dummy; } ;
struct bio {int bio_ma_n; scalar_t__ bio_length; scalar_t__ bio_ma_offset; scalar_t__ bio_data; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct disk*,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,int*) ; 

__attribute__((used)) static off_t
FUNC3(struct disk *dp, struct bio *bp, bus_dma_segment_t **pendseg)
{
	bus_dma_segment_t *seg, *end;
	off_t residual;
	off_t offset;
	int pages;

	seg = (bus_dma_segment_t *)bp->bio_data;
	end = (bus_dma_segment_t *)bp->bio_data + bp->bio_ma_n;
	residual = bp->bio_length;
	offset = bp->bio_ma_offset;
	pages = FUNC1(dp, bp);
	while (residual != 0 && pages != 0) {
		FUNC0((seg != end),
		    ("vlist limit runs off the end"));
		FUNC2(seg, &offset, &residual, &pages);
		seg++;
	}
	if (pendseg != NULL)
		*pendseg = seg;
	return (residual);
}