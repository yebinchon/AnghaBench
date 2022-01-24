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
struct g_raid_volume {int v_disks_count; struct g_raid_subdisk* v_subdisks; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;
struct g_raid_subdisk {scalar_t__ sd_state; } ;
struct bio_queue_head {int dummy; } ;
struct bio {scalar_t__ bio_error; struct g_raid_subdisk* bio_caller1; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ G_RAID_SUBDISK_S_FAILED ; 
 scalar_t__ G_RAID_SUBDISK_S_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct bio_queue_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_queue_head*,struct bio*) ; 
 struct bio* FUNC2 (struct bio_queue_head*) ; 
 struct bio* FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct g_raid_subdisk*,struct bio*) ; 

void
FUNC7(struct g_raid_tr_object *tr, struct bio *bp)
{
	struct g_raid_volume *vol;
	struct g_raid_subdisk *sd;
	struct bio_queue_head queue;
	struct bio *cbp;
	int i;

	vol = tr->tro_volume;

	/*
	 * Allocate all bios before sending any request, so we can return
	 * ENOMEM in nice and clean way.
	 */
	FUNC0(&queue);
	for (i = 0; i < vol->v_disks_count; i++) {
		sd = &vol->v_subdisks[i];
		if (sd->sd_state == G_RAID_SUBDISK_S_NONE ||
		    sd->sd_state == G_RAID_SUBDISK_S_FAILED)
			continue;
		cbp = FUNC3(bp);
		if (cbp == NULL)
			goto failure;
		cbp->bio_caller1 = sd;
		FUNC1(&queue, cbp);
	}
	while ((cbp = FUNC2(&queue)) != NULL) {
		sd = cbp->bio_caller1;
		cbp->bio_caller1 = NULL;
		FUNC6(sd, cbp);
	}
	return;
failure:
	while ((cbp = FUNC2(&queue)) != NULL)
		FUNC4(cbp);
	if (bp->bio_error == 0)
		bp->bio_error = ENOMEM;
	FUNC5(bp, bp->bio_error);
}