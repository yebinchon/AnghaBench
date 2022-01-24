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
struct g_raid_volume {scalar_t__ v_strip_size; scalar_t__ v_disks_count; struct g_raid_subdisk* v_subdisks; int /*<<< orphan*/  v_name; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;
struct g_raid_subdisk {int dummy; } ;
struct bio_queue_head {int dummy; } ;
struct bio {int bio_flags; char* bio_data; scalar_t__ bio_length; uintptr_t bio_ma_offset; int bio_ma; int bio_ma_n; scalar_t__ bio_error; struct g_raid_subdisk* bio_caller1; scalar_t__ bio_offset; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int BIO_UNMAPPED ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int N ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct g_raid_volume*,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_queue_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio_queue_head*,struct bio*) ; 
 struct bio* FUNC5 (struct bio_queue_head*) ; 
 struct bio* FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct g_raid_subdisk*,struct bio*) ; 
 int FUNC10 (struct g_raid_volume*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__) ; 

__attribute__((used)) static void
FUNC12(struct g_raid_tr_object *tr, struct bio *bp)
{
	struct g_raid_volume *vol;
	struct g_raid_subdisk *sd;
	struct bio_queue_head queue;
	struct bio *cbp;
	char *addr;
	off_t offset, start, length, remain;
	u_int no, strip_size;
	int best;

	vol = tr->tro_volume;
	if ((bp->bio_flags & BIO_UNMAPPED) != 0)
		addr = NULL;
	else
		addr = bp->bio_data;
	strip_size = vol->v_strip_size;
	FUNC2(vol, bp->bio_offset, &no, &offset, &start);
	remain = bp->bio_length;
	FUNC3(&queue);
	while (remain > 0) {
		length = FUNC1(strip_size - start, remain);
		best = FUNC10(vol,
		    no, offset, length, 0);
		FUNC0(best >= 0, ("No readable disk in volume %s!",
		    vol->v_name));
		no += best;
		if (no >= vol->v_disks_count) {
			no -= vol->v_disks_count;
			offset += strip_size;
		}
		cbp = FUNC6(bp);
		if (cbp == NULL)
			goto failure;
		cbp->bio_offset = offset + start;
		cbp->bio_length = length;
		if ((bp->bio_flags & BIO_UNMAPPED) != 0) {
			cbp->bio_ma_offset += (uintptr_t)addr;
			cbp->bio_ma += cbp->bio_ma_offset / PAGE_SIZE;
			cbp->bio_ma_offset %= PAGE_SIZE;
			cbp->bio_ma_n = FUNC11(cbp->bio_ma_offset +
			    cbp->bio_length) / PAGE_SIZE;
		} else
			cbp->bio_data = addr;
		cbp->bio_caller1 = &vol->v_subdisks[no];
		FUNC4(&queue, cbp);
		no += N - best;
		if (no >= vol->v_disks_count) {
			no -= vol->v_disks_count;
			offset += strip_size;
		}
		remain -= length;
		addr += length;
		start = 0;
	}
	while ((cbp = FUNC5(&queue)) != NULL) {
		sd = cbp->bio_caller1;
		cbp->bio_caller1 = NULL;
		FUNC9(sd, cbp);
	}
	return;
failure:
	while ((cbp = FUNC5(&queue)) != NULL)
		FUNC7(cbp);
	if (bp->bio_error == 0)
		bp->bio_error = ENOMEM;
	FUNC8(bp, bp->bio_error);
}