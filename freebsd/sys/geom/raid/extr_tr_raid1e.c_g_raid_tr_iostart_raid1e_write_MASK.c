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
typedef  scalar_t__ u_int ;
struct g_raid_volume {scalar_t__ v_strip_size; scalar_t__ v_disks_count; struct g_raid_subdisk* v_subdisks; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;
struct g_raid_subdisk {int sd_state; scalar_t__ sd_rebuild_pos; } ;
struct bio_queue_head {int dummy; } ;
struct bio {int bio_flags; char* bio_data; scalar_t__ bio_length; scalar_t__ bio_cmd; uintptr_t bio_ma_offset; int bio_ma; int bio_ma_n; scalar_t__ bio_error; struct g_raid_subdisk* bio_caller1; scalar_t__ bio_offset; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 scalar_t__ BIO_DELETE ; 
 int BIO_UNMAPPED ; 
 scalar_t__ ENOMEM ; 
#define  G_RAID_SUBDISK_S_ACTIVE 131 
#define  G_RAID_SUBDISK_S_REBUILD 130 
#define  G_RAID_SUBDISK_S_RESYNC 129 
#define  G_RAID_SUBDISK_S_STALE 128 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int N ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct g_raid_volume*,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_queue_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_queue_head*,struct bio*) ; 
 struct bio* FUNC4 (struct bio_queue_head*) ; 
 struct bio* FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct g_raid_subdisk*,struct bio*) ; 
 int FUNC9 (scalar_t__) ; 

__attribute__((used)) static void
FUNC10(struct g_raid_tr_object *tr, struct bio *bp)
{
	struct g_raid_volume *vol;
	struct g_raid_subdisk *sd;
	struct bio_queue_head queue;
	struct bio *cbp;
	char *addr;
	off_t offset, start, length, remain;
	u_int no, strip_size;
	int i;

	vol = tr->tro_volume;
	if ((bp->bio_flags & BIO_UNMAPPED) != 0)
		addr = NULL;
	else
		addr = bp->bio_data;
	strip_size = vol->v_strip_size;
	FUNC1(vol, bp->bio_offset, &no, &offset, &start);
	remain = bp->bio_length;
	FUNC2(&queue);
	while (remain > 0) {
		length = FUNC0(strip_size - start, remain);
		for (i = 0; i < N; i++) {
			sd = &vol->v_subdisks[no];
			switch (sd->sd_state) {
			case G_RAID_SUBDISK_S_ACTIVE:
			case G_RAID_SUBDISK_S_STALE:
			case G_RAID_SUBDISK_S_RESYNC:
				break;
			case G_RAID_SUBDISK_S_REBUILD:
				if (offset + start >= sd->sd_rebuild_pos)
					goto nextdisk;
				break;
			default:
				goto nextdisk;
			}
			cbp = FUNC5(bp);
			if (cbp == NULL)
				goto failure;
			cbp->bio_offset = offset + start;
			cbp->bio_length = length;
			if ((bp->bio_flags & BIO_UNMAPPED) != 0 &&
			    bp->bio_cmd != BIO_DELETE) {
				cbp->bio_ma_offset += (uintptr_t)addr;
				cbp->bio_ma += cbp->bio_ma_offset / PAGE_SIZE;
				cbp->bio_ma_offset %= PAGE_SIZE;
				cbp->bio_ma_n = FUNC9(cbp->bio_ma_offset +
				    cbp->bio_length) / PAGE_SIZE;
			} else
				cbp->bio_data = addr;
			cbp->bio_caller1 = sd;
			FUNC3(&queue, cbp);
nextdisk:
			if (++no >= vol->v_disks_count) {
				no = 0;
				offset += strip_size;
			}
		}
		remain -= length;
		if (bp->bio_cmd != BIO_DELETE)
			addr += length;
		start = 0;
	}
	while ((cbp = FUNC4(&queue)) != NULL) {
		sd = cbp->bio_caller1;
		cbp->bio_caller1 = NULL;
		FUNC8(sd, cbp);
	}
	return;
failure:
	while ((cbp = FUNC4(&queue)) != NULL)
		FUNC6(cbp);
	if (bp->bio_error == 0)
		bp->bio_error = ENOMEM;
	FUNC7(bp, bp->bio_error);
}