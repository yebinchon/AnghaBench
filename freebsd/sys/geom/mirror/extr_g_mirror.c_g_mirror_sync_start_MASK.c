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
struct TYPE_2__ {int /*<<< orphan*/  ds_ndisks; int /*<<< orphan*/  ds_geom; } ;
struct g_mirror_softc {scalar_t__ sc_state; int sc_flags; TYPE_1__ sc_sync; int /*<<< orphan*/  sc_name; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_provider; } ;
struct g_mirror_disk_sync {int ds_inflight; struct g_consumer* ds_consumer; struct bio** ds_bios; int /*<<< orphan*/  ds_offset; } ;
struct g_mirror_disk {scalar_t__ d_state; int /*<<< orphan*/  d_flags; struct g_mirror_disk_sync d_sync; struct g_mirror_softc* d_softc; } ;
struct g_consumer {int flags; scalar_t__ index; struct g_mirror_disk* private; } ;
struct bio {scalar_t__ bio_length; void* bio_caller1; void* bio_data; } ;

/* Variables and functions */
 int G_CF_DIRECT_RECEIVE ; 
 int G_CF_DIRECT_SEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int G_MIRROR_DEVICE_FLAG_NOFAILSYNC ; 
 scalar_t__ G_MIRROR_DEVICE_STATE_RUNNING ; 
 int /*<<< orphan*/  G_MIRROR_DISK_FLAG_DIRTY ; 
 scalar_t__ G_MIRROR_DISK_STATE_SYNCHRONIZING ; 
 int /*<<< orphan*/  FUNC1 (int,struct bio*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int MAXPHYS ; 
 int /*<<< orphan*/  M_MIRROR ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  SX_LOCKED ; 
 int FUNC3 (struct g_consumer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bio* FUNC4 () ; 
 int FUNC5 (struct g_consumer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*,struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC7 (struct g_mirror_disk*) ; 
 scalar_t__ FUNC8 (struct g_mirror_softc*,struct bio*) ; 
 int /*<<< orphan*/  FUNC9 (struct g_mirror_softc*,struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (struct g_mirror_disk*,struct bio*,int /*<<< orphan*/ ) ; 
 int g_mirror_syncreqs ; 
 struct g_consumer* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 void* FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC19(struct g_mirror_disk *disk)
{
	struct g_mirror_softc *sc;
	struct g_mirror_disk_sync *sync;
	struct g_consumer *cp;
	struct bio *bp;
	int error, i;

	FUNC12();
	sc = disk->d_softc;
	sync = &disk->d_sync;
	FUNC16(&sc->sc_lock, SX_LOCKED);

	FUNC2(disk->d_state == G_MIRROR_DISK_STATE_SYNCHRONIZING,
	    ("Disk %s is not marked for synchronization.",
	    FUNC7(disk)));
	FUNC2(sc->sc_state == G_MIRROR_DEVICE_STATE_RUNNING,
	    ("Device not in RUNNING state (%s, %u).", sc->sc_name,
	    sc->sc_state));

	FUNC18(&sc->sc_lock);
	FUNC13();
	cp = FUNC11(sc->sc_sync.ds_geom);
	cp->flags |= G_CF_DIRECT_SEND | G_CF_DIRECT_RECEIVE;
	error = FUNC5(cp, sc->sc_provider);
	FUNC2(error == 0,
	    ("Cannot attach to %s (error=%d).", sc->sc_name, error));
	error = FUNC3(cp, 1, 0, 0);
	FUNC2(error == 0, ("Cannot open %s (error=%d).", sc->sc_name, error));
	FUNC14();
	FUNC17(&sc->sc_lock);

	FUNC0(0, "Device %s: rebuilding provider %s.", sc->sc_name,
	    FUNC7(disk));
	if ((sc->sc_flags & G_MIRROR_DEVICE_FLAG_NOFAILSYNC) == 0)
		disk->d_flags |= G_MIRROR_DISK_FLAG_DIRTY;
	FUNC2(sync->ds_consumer == NULL,
	    ("Sync consumer already exists (device=%s, disk=%s).",
	    sc->sc_name, FUNC7(disk)));

	sync->ds_consumer = cp;
	sync->ds_consumer->private = disk;
	sync->ds_consumer->index = 0;

	/*
	 * Allocate memory for synchronization bios and initialize them.
	 */
	sync->ds_bios = FUNC15(sizeof(struct bio *) * g_mirror_syncreqs,
	    M_MIRROR, M_WAITOK);
	for (i = 0; i < g_mirror_syncreqs; i++) {
		bp = FUNC4();
		sync->ds_bios[i] = bp;

		bp->bio_data = FUNC15(MAXPHYS, M_MIRROR, M_WAITOK);
		bp->bio_caller1 = (void *)(uintptr_t)i;
		FUNC10(disk, bp, sync->ds_offset);
		sync->ds_offset += bp->bio_length;
	}

	/* Increase the number of disks in SYNCHRONIZING state. */
	sc->sc_sync.ds_ndisks++;
	/* Set the number of in-flight synchronization requests. */
	sync->ds_inflight = g_mirror_syncreqs;

	/*
	 * Fire off first synchronization requests.
	 */
	for (i = 0; i < g_mirror_syncreqs; i++) {
		bp = sync->ds_bios[i];
		FUNC1(3, bp, "Sending synchronization request.");
		sync->ds_consumer->index++;
		/*
		 * Delay the request if it is colliding with a regular request.
		 */
		if (FUNC8(sc, bp))
			FUNC9(sc, bp);
		else
			FUNC6(bp, sync->ds_consumer);
	}
}