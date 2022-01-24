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
struct virtio_blk_config {int writeback; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_BLK_F_WCE ; 
 int VTBLK_CACHE_MAX ; 
 int VTBLK_FLAG_WC_CONFIG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vtblk_softc*,int) ; 
 int FUNC2 (struct vtblk_softc*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vtblk_writecache_mode ; 

__attribute__((used)) static int
FUNC3(struct vtblk_softc *sc,
    struct virtio_blk_config *blkcfg)
{
	int wc;

	if (sc->vtblk_flags & VTBLK_FLAG_WC_CONFIG) {
		wc = FUNC2(sc, "writecache_mode",
		    vtblk_writecache_mode);
		if (wc >= 0 && wc < VTBLK_CACHE_MAX)
			FUNC1(sc, wc);
		else
			wc = blkcfg->writeback;
	} else
		wc = FUNC0(sc->vtblk_dev, VIRTIO_BLK_F_WCE);

	return (wc);
}