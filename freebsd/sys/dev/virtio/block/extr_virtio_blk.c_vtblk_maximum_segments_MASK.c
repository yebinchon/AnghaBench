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
struct vtblk_softc {int vtblk_flags; int /*<<< orphan*/  vtblk_dev; } ;
struct virtio_blk_config {int seg_max; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MAXPHYS ; 
 int FUNC0 (int,int) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  VIRTIO_BLK_F_SEG_MAX ; 
 int VIRTIO_MAX_INDIRECT ; 
 int VTBLK_FLAG_INDIRECT ; 
 int VTBLK_MIN_SEGMENTS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct vtblk_softc *sc,
    struct virtio_blk_config *blkcfg)
{
	device_t dev;
	int nsegs;

	dev = sc->vtblk_dev;
	nsegs = VTBLK_MIN_SEGMENTS;

	if (FUNC1(dev, VIRTIO_BLK_F_SEG_MAX)) {
		nsegs += FUNC0(blkcfg->seg_max, MAXPHYS / PAGE_SIZE + 1);
		if (sc->vtblk_flags & VTBLK_FLAG_INDIRECT)
			nsegs = FUNC0(nsegs, VIRTIO_MAX_INDIRECT);
	} else
		nsegs += 1;

	return (nsegs);
}