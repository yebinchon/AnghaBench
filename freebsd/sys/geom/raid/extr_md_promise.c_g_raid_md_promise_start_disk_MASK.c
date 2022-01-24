#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct promise_raid_conf {scalar_t__ generation; int status; TYPE_1__* disks; } ;
struct g_raid_volume {int v_name; int v_disks_count; scalar_t__ v_raid_level; struct g_raid_subdisk* v_subdisks; struct g_raid_md_promise_pervolume* v_md_data; } ;
struct g_raid_subdisk {scalar_t__ sd_state; int sd_size; int sd_offset; int sd_rebuild_pos; struct g_raid_disk* sd_disk; } ;
struct g_raid_softc {int dummy; } ;
struct g_raid_md_promise_pervolume {int /*<<< orphan*/  pv_started; struct promise_raid_conf* pv_meta; } ;
struct g_raid_md_promise_perdisk {int pd_subdisks; TYPE_5__** pd_meta; } ;
struct g_raid_disk {int /*<<< orphan*/  d_subdisks; TYPE_4__* d_consumer; scalar_t__ d_md_data; struct g_raid_softc* d_softc; } ;
typedef  int off_t ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  id; } ;
struct TYPE_11__ {int disk_offset; int disk_sectors; scalar_t__ generation; int disk_rebuild; scalar_t__ disk_rebuild_high; scalar_t__ disk_sectors_high; scalar_t__ disk_offset_high; TYPE_2__ disk; } ;
struct TYPE_10__ {TYPE_3__* provider; } ;
struct TYPE_9__ {int mediasize; int sectorsize; } ;
struct TYPE_7__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct g_raid_softc*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  G_RAID_DISK_S_ACTIVE ; 
 int /*<<< orphan*/  G_RAID_DISK_S_FAILED ; 
 int /*<<< orphan*/  G_RAID_DISK_S_SPARE ; 
 int /*<<< orphan*/  G_RAID_DISK_S_STALE_FAILED ; 
 int /*<<< orphan*/  G_RAID_EVENT_SUBDISK ; 
 int /*<<< orphan*/  G_RAID_SUBDISK_E_NEW ; 
 scalar_t__ G_RAID_SUBDISK_S_ACTIVE ; 
 scalar_t__ G_RAID_SUBDISK_S_FAILED ; 
 scalar_t__ G_RAID_SUBDISK_S_NEW ; 
 scalar_t__ G_RAID_SUBDISK_S_NONE ; 
 scalar_t__ G_RAID_SUBDISK_S_REBUILD ; 
 scalar_t__ G_RAID_SUBDISK_S_STALE ; 
 scalar_t__ G_RAID_VOLUME_RL_CONCAT ; 
 int INT64_MAX ; 
 int /*<<< orphan*/  M_MD_PROMISE ; 
 int PROMISE_F_DOWN ; 
 int PROMISE_F_ONLINE ; 
 int PROMISE_F_REDIR ; 
 int PROMISE_S_MARKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct g_raid_subdisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct g_raid_subdisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct g_raid_disk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct g_raid_subdisk*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct g_raid_subdisk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct g_raid_disk*) ; 
 int FUNC8 (struct promise_raid_conf*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct g_raid_volume*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__**,int,int,int*,int*) ; 
 int /*<<< orphan*/  sd_next ; 

__attribute__((used)) static int
FUNC11(struct g_raid_disk *disk, int sdn,
    struct g_raid_volume *vol)
{
	struct g_raid_softc *sc;
	struct g_raid_subdisk *sd;
	struct g_raid_md_promise_perdisk *pd;
	struct g_raid_md_promise_pervolume *pv;
	struct promise_raid_conf *meta;
	off_t eoff, esize, size;
	int disk_pos, md_disk_pos, i, resurrection = 0;

	sc = disk->d_softc;
	pd = (struct g_raid_md_promise_perdisk *)disk->d_md_data;

	pv = vol->v_md_data;
	meta = pv->pv_meta;

	if (sdn >= 0) {
		/* Find disk position in metadata by its serial. */
		md_disk_pos = FUNC8(meta, pd->pd_meta[sdn]->disk.id);
		/* For RAID0+1 we need to translate order. */
		disk_pos = FUNC9(vol, md_disk_pos);
	} else {
		md_disk_pos = -1;
		disk_pos = -1;
	}
	if (disk_pos < 0) {
		FUNC0(1, sc, "Disk %s is not part of the volume %s",
		    FUNC7(disk), vol->v_name);
		/* Failed stale disk is useless for us. */
		if (sdn >= 0 &&
		    pd->pd_meta[sdn]->disk.flags & PROMISE_F_DOWN) {
			FUNC4(disk, G_RAID_DISK_S_STALE_FAILED);
			return (0);
		}
		/* If we were given specific metadata subdisk - erase it. */
		if (sdn >= 0) {
			FUNC3(pd->pd_meta[sdn], M_MD_PROMISE);
			for (i = sdn; i < pd->pd_subdisks - 1; i++)
				pd->pd_meta[i] = pd->pd_meta[i + 1];
			pd->pd_meta[pd->pd_subdisks - 1] = NULL;
			pd->pd_subdisks--;
		}
		/* If we are in the start process, that's all for now. */
		if (!pv->pv_started)
			goto nofit;
		/*
		 * If we have already started - try to get use of the disk.
		 * Try to replace OFFLINE disks first, then FAILED.
		 */
		FUNC10(pd->pd_meta, pd->pd_subdisks,
		    disk->d_consumer->provider->mediasize /
		    disk->d_consumer->provider->sectorsize,
		    &eoff, &esize);
		if (esize == 0) {
			FUNC0(1, sc, "No free space on disk %s",
			    FUNC7(disk));
			goto nofit;
		}
		size = INT64_MAX;
		for (i = 0; i < vol->v_disks_count; i++) {
			sd = &vol->v_subdisks[i];
			if (sd->sd_state != G_RAID_SUBDISK_S_NONE)
				size = sd->sd_size;
			if (sd->sd_state <= G_RAID_SUBDISK_S_FAILED &&
			    (disk_pos < 0 ||
			     vol->v_subdisks[i].sd_state < sd->sd_state))
				disk_pos = i;
		}
		if (disk_pos >= 0 &&
		    vol->v_raid_level != G_RAID_VOLUME_RL_CONCAT &&
		    (off_t)esize * 512 < size) {
			FUNC0(1, sc, "Disk %s free space "
			    "is too small (%ju < %ju)",
			    FUNC7(disk),
			    (off_t)esize * 512, size);
			disk_pos = -1;
		}
		if (disk_pos >= 0) {
			if (vol->v_raid_level != G_RAID_VOLUME_RL_CONCAT)
				esize = size / 512;
			/* For RAID0+1 we need to translate order. */
			md_disk_pos = FUNC9(vol, disk_pos);
		} else {
nofit:
			if (pd->pd_subdisks == 0) {
				FUNC4(disk,
				    G_RAID_DISK_S_SPARE);
			}
			return (0);
		}
		FUNC0(1, sc, "Disk %s takes pos %d in the volume %s",
		    FUNC7(disk), disk_pos, vol->v_name);
		resurrection = 1;
	}

	sd = &vol->v_subdisks[disk_pos];

	if (resurrection && sd->sd_disk != NULL) {
		FUNC4(sd->sd_disk,
		    G_RAID_DISK_S_STALE_FAILED);
		FUNC2(&sd->sd_disk->d_subdisks,
		    sd, sd_next);
	}
	vol->v_subdisks[disk_pos].sd_disk = disk;
	FUNC1(&disk->d_subdisks, sd, sd_next);

	/* Welcome the new disk. */
	if (resurrection)
		FUNC4(disk, G_RAID_DISK_S_ACTIVE);
	else if (meta->disks[md_disk_pos].flags & PROMISE_F_DOWN)
		FUNC4(disk, G_RAID_DISK_S_FAILED);
	else
		FUNC4(disk, G_RAID_DISK_S_ACTIVE);

	if (resurrection) {
		sd->sd_offset = (off_t)eoff * 512;
		sd->sd_size = (off_t)esize * 512;
	} else {
		sd->sd_offset = (((off_t)pd->pd_meta[sdn]->disk_offset_high
		    << 32) + pd->pd_meta[sdn]->disk_offset) * 512;
		sd->sd_size = (((off_t)pd->pd_meta[sdn]->disk_sectors_high
		    << 32) + pd->pd_meta[sdn]->disk_sectors) * 512;
	}

	if (resurrection) {
		/* Stale disk, almost same as new. */
		FUNC5(sd,
		    G_RAID_SUBDISK_S_NEW);
	} else if (meta->disks[md_disk_pos].flags & PROMISE_F_DOWN) {
		/* Failed disk. */
		FUNC5(sd,
		    G_RAID_SUBDISK_S_FAILED);
	} else if (meta->disks[md_disk_pos].flags & PROMISE_F_REDIR) {
		/* Rebuilding disk. */
		FUNC5(sd,
		    G_RAID_SUBDISK_S_REBUILD);
		if (pd->pd_meta[sdn]->generation != meta->generation)
			sd->sd_rebuild_pos = 0;
		else {
			sd->sd_rebuild_pos =
			    (((off_t)pd->pd_meta[sdn]->disk_rebuild_high << 32) +
			     pd->pd_meta[sdn]->disk_rebuild) * 512;
		}
	} else if (!(meta->disks[md_disk_pos].flags & PROMISE_F_ONLINE)) {
		/* Rebuilding disk. */
		FUNC5(sd,
		    G_RAID_SUBDISK_S_NEW);
	} else if (pd->pd_meta[sdn]->generation != meta->generation ||
	    (meta->status & PROMISE_S_MARKED)) {
		/* Stale disk or dirty volume (unclean shutdown). */
		FUNC5(sd,
		    G_RAID_SUBDISK_S_STALE);
	} else {
		/* Up to date disk. */
		FUNC5(sd,
		    G_RAID_SUBDISK_S_ACTIVE);
	}
	FUNC6(sd, G_RAID_SUBDISK_E_NEW,
	    G_RAID_EVENT_SUBDISK);

	return (resurrection);
}