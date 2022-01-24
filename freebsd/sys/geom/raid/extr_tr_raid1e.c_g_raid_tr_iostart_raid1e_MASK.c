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
struct g_raid_volume {scalar_t__ v_state; int /*<<< orphan*/  v_name; } ;
struct g_raid_tr_raid1e_object {scalar_t__ trso_fair_io; scalar_t__ trso_recover_slabs; int /*<<< orphan*/ * trso_failed_sd; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;
struct bio {int bio_cflags; int bio_cmd; } ;

/* Variables and functions */
#define  BIO_DELETE 131 
#define  BIO_FLUSH 130 
#define  BIO_READ 129 
#define  BIO_WRITE 128 
 int /*<<< orphan*/  EIO ; 
 int G_RAID_BIO_FLAG_SPECIAL ; 
 scalar_t__ G_RAID_VOLUME_S_DEGRADED ; 
 scalar_t__ G_RAID_VOLUME_S_OPTIMAL ; 
 scalar_t__ G_RAID_VOLUME_S_SUBOPTIMAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ g_raid1e_rebuild_fair_io ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct g_raid_tr_object*,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct g_raid_tr_object*,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_raid_tr_object*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_raid_tr_object*) ; 

__attribute__((used)) static void
FUNC6(struct g_raid_tr_object *tr, struct bio *bp)
{
	struct g_raid_volume *vol;
	struct g_raid_tr_raid1e_object *trs;

	vol = tr->tro_volume;
	trs = (struct g_raid_tr_raid1e_object *)tr;
	if (vol->v_state != G_RAID_VOLUME_S_OPTIMAL &&
	    vol->v_state != G_RAID_VOLUME_S_SUBOPTIMAL &&
	    vol->v_state != G_RAID_VOLUME_S_DEGRADED) {
		FUNC1(bp, EIO);
		return;
	}
	/*
	 * If we're rebuilding, squeeze in rebuild activity every so often,
	 * even when the disk is busy.  Be sure to only count real I/O
	 * to the disk.  All 'SPECIAL' I/O is traffic generated to the disk
	 * by this module.
	 */
	if (trs->trso_failed_sd != NULL &&
	    !(bp->bio_cflags & G_RAID_BIO_FLAG_SPECIAL)) {
		/* Make this new or running now round short. */
		trs->trso_recover_slabs = 0;
		if (--trs->trso_fair_io <= 0) {
			trs->trso_fair_io = g_raid1e_rebuild_fair_io;
			FUNC5(tr);
		}
	}
	switch (bp->bio_cmd) {
	case BIO_READ:
		FUNC3(tr, bp);
		break;
	case BIO_WRITE:
	case BIO_DELETE:
		FUNC4(tr, bp);
		break;
	case BIO_FLUSH:
		FUNC2(tr, bp);
		break;
	default:
		FUNC0(1 == 0, ("Invalid command here: %u (volume=%s)",
		    bp->bio_cmd, vol->v_name));
		break;
	}
}