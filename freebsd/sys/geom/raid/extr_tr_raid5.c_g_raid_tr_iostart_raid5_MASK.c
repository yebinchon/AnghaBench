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
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;
struct bio {int bio_cmd; } ;

/* Variables and functions */
#define  BIO_DELETE 131 
#define  BIO_FLUSH 130 
#define  BIO_READ 129 
#define  BIO_WRITE 128 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENODEV ; 
 scalar_t__ G_RAID_VOLUME_S_SUBOPTIMAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct g_raid_tr_object*,struct bio*) ; 

__attribute__((used)) static void
FUNC3(struct g_raid_tr_object *tr, struct bio *bp)
{
	struct g_raid_volume *vol;

	vol = tr->tro_volume;
	if (vol->v_state < G_RAID_VOLUME_S_SUBOPTIMAL) {
		FUNC1(bp, EIO);
		return;
	}
	switch (bp->bio_cmd) {
	case BIO_READ:
		FUNC2(tr, bp);
		break;
	case BIO_WRITE:
	case BIO_DELETE:
	case BIO_FLUSH:
		FUNC1(bp, ENODEV);
		break;
	default:
		FUNC0(1 == 0, ("Invalid command here: %u (volume=%s)",
		    bp->bio_cmd, vol->v_name));
		break;
	}
}