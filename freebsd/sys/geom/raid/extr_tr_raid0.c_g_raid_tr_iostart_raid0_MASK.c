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
struct g_raid_volume {scalar_t__ v_state; scalar_t__ v_strip_size; scalar_t__ v_disks_count; struct g_raid_subdisk* v_subdisks; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;
struct g_raid_subdisk {int dummy; } ;
struct bio_queue_head {int dummy; } ;
struct bio {scalar_t__ bio_cmd; int bio_flags; char* bio_data; scalar_t__ bio_offset; scalar_t__ bio_length; uintptr_t bio_ma_offset; int bio_ma; int bio_ma_n; scalar_t__ bio_error; struct g_raid_subdisk* bio_caller1; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 scalar_t__ BIO_DELETE ; 
 scalar_t__ BIO_FLUSH ; 
 int BIO_UNMAPPED ; 
 scalar_t__ EIO ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ G_RAID_VOLUME_S_OPTIMAL ; 
 scalar_t__ G_RAID_VOLUME_S_SUBOPTIMAL ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct bio_queue_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_queue_head*,struct bio*) ; 
 struct bio* FUNC3 (struct bio_queue_head*) ; 
 struct bio* FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct g_raid_subdisk*,struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (struct g_raid_tr_object*,struct bio*) ; 
 int FUNC9 (scalar_t__) ; 

__attribute__((used)) static void
FUNC10(struct g_raid_tr_object *tr, struct bio *bp)
{
	struct g_raid_volume *vol;
	struct g_raid_subdisk *sd;
	struct bio_queue_head queue;
	struct bio *cbp;
	char *addr;
	off_t offset, start, length, nstripe, remain;
	u_int no, strip_size;

	vol = tr->tro_volume;
	if (vol->v_state != G_RAID_VOLUME_S_OPTIMAL &&
	    vol->v_state != G_RAID_VOLUME_S_SUBOPTIMAL) {
		FUNC6(bp, EIO);
		return;
	}
	if (bp->bio_cmd == BIO_FLUSH) {
		FUNC8(tr, bp);
		return;
	}
	if ((bp->bio_flags & BIO_UNMAPPED) != 0)
		addr = NULL;
	else
		addr = bp->bio_data;
	strip_size = vol->v_strip_size;

	/* Stripe number. */
	nstripe = bp->bio_offset / strip_size;
	/* Start position in stripe. */
	start = bp->bio_offset % strip_size;
	/* Disk number. */
	no = nstripe % vol->v_disks_count;
	/* Stripe start position in disk. */
	offset = (nstripe / vol->v_disks_count) * strip_size;
	/* Length of data to operate. */
	remain = bp->bio_length;

	FUNC1(&queue);
	do {
		length = FUNC0(strip_size - start, remain);
		cbp = FUNC4(bp);
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
		cbp->bio_caller1 = &vol->v_subdisks[no];
		FUNC2(&queue, cbp);
		if (++no >= vol->v_disks_count) {
			no = 0;
			offset += strip_size;
		}
		remain -= length;
		if (bp->bio_cmd != BIO_DELETE)
			addr += length;
		start = 0;
	} while (remain > 0);
	while ((cbp = FUNC3(&queue)) != NULL) {
		sd = cbp->bio_caller1;
		cbp->bio_caller1 = NULL;
		FUNC7(sd, cbp);
	}
	return;
failure:
	while ((cbp = FUNC3(&queue)) != NULL)
		FUNC5(cbp);
	if (bp->bio_error == 0)
		bp->bio_error = ENOMEM;
	FUNC6(bp, bp->bio_error);
}