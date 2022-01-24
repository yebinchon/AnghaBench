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
struct g_raid_volume {int /*<<< orphan*/  v_last_done; scalar_t__ v_pending_lock; int /*<<< orphan*/  v_inflight; int /*<<< orphan*/  v_last_write; int /*<<< orphan*/  v_writes; } ;
struct g_raid_softc {int /*<<< orphan*/  sc_lock; } ;
struct bio {scalar_t__ bio_cmd; TYPE_2__* bio_to; } ;
struct TYPE_4__ {struct g_raid_volume* private; TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_raid_softc* softc; } ;

/* Variables and functions */
 scalar_t__ BIO_DELETE ; 
 scalar_t__ BIO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,struct bio*,char*,int) ; 
 int /*<<< orphan*/  SX_LOCKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct g_raid_volume*,struct bio*) ; 
 scalar_t__ FUNC4 (struct g_raid_volume*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  time_uptime ; 

void
FUNC7(struct bio *bp, int error)
{
	struct g_raid_softc *sc;
	struct g_raid_volume *vol;

	sc = bp->bio_to->geom->softc;
	FUNC6(&sc->sc_lock, SX_LOCKED);
	vol = bp->bio_to->private;
	FUNC0(3, bp, "Request done: %d.", error);

	/* Update stats if we done write/delete. */
	if (bp->bio_cmd == BIO_WRITE || bp->bio_cmd == BIO_DELETE) {
		vol->v_writes--;
		vol->v_last_write = time_uptime;
	}

	FUNC1(&vol->v_inflight, bp);
	if (vol->v_pending_lock && FUNC4(vol, bp))
		FUNC3(vol, bp);
	FUNC5(&vol->v_last_done);
	FUNC2(bp, error);
}