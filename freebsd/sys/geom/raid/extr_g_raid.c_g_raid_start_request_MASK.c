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
struct g_raid_volume {int /*<<< orphan*/  v_tr; int /*<<< orphan*/  v_inflight; int /*<<< orphan*/  v_writes; int /*<<< orphan*/  v_dirty; int /*<<< orphan*/  v_locked; } ;
struct g_raid_softc {int /*<<< orphan*/  sc_lock; } ;
struct bio {int bio_cflags; scalar_t__ bio_cmd; TYPE_2__* bio_to; } ;
struct TYPE_4__ {struct g_raid_volume* private; TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_raid_softc* softc; } ;

/* Variables and functions */
 scalar_t__ BIO_DELETE ; 
 scalar_t__ BIO_WRITE ; 
 int G_RAID_BIO_FLAG_SPECIAL ; 
 int /*<<< orphan*/  FUNC0 (int,struct bio*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  SX_LOCKED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct g_raid_volume*) ; 
 scalar_t__ FUNC4 (struct g_raid_volume*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bio *bp)
{
	struct g_raid_softc *sc;
	struct g_raid_volume *vol;

	sc = bp->bio_to->geom->softc;
	FUNC5(&sc->sc_lock, SX_LOCKED);
	vol = bp->bio_to->private;

	/*
	 * Check to see if this item is in a locked range.  If so,
	 * queue it to our locked queue and return.  We'll requeue
	 * it when the range is unlocked.  Internal I/O for the
	 * rebuild/rescan/recovery process is excluded from this
	 * check so we can actually do the recovery.
	 */
	if (!(bp->bio_cflags & G_RAID_BIO_FLAG_SPECIAL) &&
	    FUNC4(vol, bp)) {
		FUNC0(3, bp, "Defer request.");
		FUNC2(&vol->v_locked, bp);
		return;
	}

	/*
	 * If we're actually going to do the write/delete, then
	 * update the idle stats for the volume.
	 */
	if (bp->bio_cmd == BIO_WRITE || bp->bio_cmd == BIO_DELETE) {
		if (!vol->v_dirty)
			FUNC3(vol);
		vol->v_writes++;
	}

	/*
	 * Put request onto inflight queue, so we can check if new
	 * synchronization requests don't collide with it.  Then tell
	 * the transformation layer to start the I/O.
	 */
	FUNC2(&vol->v_inflight, bp);
	FUNC0(4, bp, "Request started");
	FUNC1(vol->v_tr, bp);
}