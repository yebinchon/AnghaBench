#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct g_raid3_softc {size_t sc_ndisks; struct g_raid3_disk* sc_disks; } ;
struct g_raid3_disk {scalar_t__ d_state; struct g_consumer* d_consumer; } ;
struct g_consumer {int acr; int acw; int ace; TYPE_1__* provider; } ;
struct bio_queue_head {int dummy; } ;
struct bio {scalar_t__ bio_error; struct g_raid3_disk* bio_caller1; TYPE_1__* bio_to; int /*<<< orphan*/  bio_done; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ G_RAID3_DISK_STATE_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int,struct bio*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct bio* FUNC2 (struct bio_queue_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_queue_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio_queue_head*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio_queue_head*,struct bio*) ; 
 struct bio* FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*,struct g_consumer*) ; 
 int /*<<< orphan*/  g_std_done ; 

__attribute__((used)) static void
FUNC10(struct g_raid3_softc *sc, struct bio *bp)
{
	struct bio_queue_head queue;
	struct g_raid3_disk *disk;
	struct g_consumer *cp;
	struct bio *cbp;
	u_int i;

	FUNC3(&queue);
	for (i = 0; i < sc->sc_ndisks; i++) {
		disk = &sc->sc_disks[i];
		if (disk->d_state != G_RAID3_DISK_STATE_ACTIVE)
			continue;
		cbp = FUNC6(bp);
		if (cbp == NULL) {
			for (cbp = FUNC2(&queue); cbp != NULL;
			    cbp = FUNC2(&queue)) {
				FUNC5(&queue, cbp);
				FUNC7(cbp);
			}
			if (bp->bio_error == 0)
				bp->bio_error = ENOMEM;
			FUNC8(bp, bp->bio_error);
			return;
		}
		FUNC4(&queue, cbp);
		cbp->bio_done = g_std_done;
		cbp->bio_caller1 = disk;
		cbp->bio_to = disk->d_consumer->provider;
	}
	for (cbp = FUNC2(&queue); cbp != NULL; cbp = FUNC2(&queue)) {
		FUNC5(&queue, cbp);
		FUNC0(3, cbp, "Sending request.");
		disk = cbp->bio_caller1;
		cbp->bio_caller1 = NULL;
		cp = disk->d_consumer;
		FUNC1(cp->acr >= 1 && cp->acw >= 1 && cp->ace >= 1,
		    ("Consumer %s not opened (r%dw%de%d).", cp->provider->name,
		    cp->acr, cp->acw, cp->ace));
		FUNC9(cbp, disk->d_consumer);
	}
}