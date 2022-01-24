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
typedef  size_t u_int ;
struct TYPE_3__ {int /*<<< orphan*/  ds_geom; } ;
struct g_raid3_softc {scalar_t__ sc_state; size_t sc_ndisks; int sc_flags; int /*<<< orphan*/  sc_provider; scalar_t__ sc_mediasize; struct g_raid3_disk* sc_syncdisk; int /*<<< orphan*/  sc_name; int /*<<< orphan*/  sc_lock; TYPE_1__ sc_sync; struct g_raid3_disk* sc_disks; } ;
struct TYPE_4__ {int ds_offset; int ds_inflight; struct g_consumer* ds_consumer; struct bio** ds_bios; } ;
struct g_raid3_disk {scalar_t__ d_state; TYPE_2__ d_sync; int /*<<< orphan*/  d_flags; } ;
struct g_consumer {scalar_t__ index; struct g_raid3_disk* private; } ;
struct bio {int bio_offset; int bio_length; void* bio_caller1; int /*<<< orphan*/  bio_to; struct g_consumer* bio_from; int /*<<< orphan*/  bio_done; scalar_t__ bio_cflags; void* bio_data; int /*<<< orphan*/  bio_cmd; int /*<<< orphan*/ * bio_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int G_RAID3_DEVICE_FLAG_NOFAILSYNC ; 
 scalar_t__ G_RAID3_DEVICE_STATE_DEGRADED ; 
 int /*<<< orphan*/  G_RAID3_DISK_FLAG_DIRTY ; 
 scalar_t__ G_RAID3_DISK_STATE_SYNCHRONIZING ; 
 int /*<<< orphan*/  FUNC1 (int,struct bio*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int MAXPHYS ; 
 int FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  M_RAID3 ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int FUNC4 (struct g_consumer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bio* FUNC5 () ; 
 int FUNC6 (struct g_consumer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*,struct g_consumer*) ; 
 struct g_consumer* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct g_raid3_disk*) ; 
 scalar_t__ FUNC10 (struct g_raid3_softc*,struct bio*) ; 
 int /*<<< orphan*/  FUNC11 (struct g_raid3_softc*,struct bio*) ; 
 int /*<<< orphan*/  g_raid3_sync_done ; 
 int g_raid3_syncreqs ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 void* FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC19(struct g_raid3_softc *sc)
{
	struct g_raid3_disk *disk;
	struct g_consumer *cp;
	struct bio *bp;
	int error;
	u_int n;

	FUNC12();
	FUNC16(&sc->sc_lock, SX_XLOCKED);

	FUNC2(sc->sc_state == G_RAID3_DEVICE_STATE_DEGRADED,
	    ("Device not in DEGRADED state (%s, %u).", sc->sc_name,
	    sc->sc_state));
	FUNC2(sc->sc_syncdisk == NULL, ("Syncdisk is not NULL (%s, %u).",
	    sc->sc_name, sc->sc_state));
	disk = NULL;
	for (n = 0; n < sc->sc_ndisks; n++) {
		if (sc->sc_disks[n].d_state != G_RAID3_DISK_STATE_SYNCHRONIZING)
			continue;
		disk = &sc->sc_disks[n];
		break;
	}
	if (disk == NULL)
		return;

	FUNC18(&sc->sc_lock);
	FUNC13();
	cp = FUNC8(sc->sc_sync.ds_geom);
	error = FUNC6(cp, sc->sc_provider);
	FUNC2(error == 0,
	    ("Cannot attach to %s (error=%d).", sc->sc_name, error));
	error = FUNC4(cp, 1, 0, 0);
	FUNC2(error == 0, ("Cannot open %s (error=%d).", sc->sc_name, error));
	FUNC14();
	FUNC17(&sc->sc_lock);

	FUNC0(0, "Device %s: rebuilding provider %s.", sc->sc_name,
	    FUNC9(disk));
	if ((sc->sc_flags & G_RAID3_DEVICE_FLAG_NOFAILSYNC) == 0)
		disk->d_flags |= G_RAID3_DISK_FLAG_DIRTY;
	FUNC2(disk->d_sync.ds_consumer == NULL,
	    ("Sync consumer already exists (device=%s, disk=%s).",
	    sc->sc_name, FUNC9(disk)));

	disk->d_sync.ds_consumer = cp;
	disk->d_sync.ds_consumer->private = disk;
	disk->d_sync.ds_consumer->index = 0;
	sc->sc_syncdisk = disk;

	/*
	 * Allocate memory for synchronization bios and initialize them.
	 */
	disk->d_sync.ds_bios = FUNC15(sizeof(struct bio *) * g_raid3_syncreqs,
	    M_RAID3, M_WAITOK);
	for (n = 0; n < g_raid3_syncreqs; n++) {
		bp = FUNC5();
		disk->d_sync.ds_bios[n] = bp;
		bp->bio_parent = NULL;
		bp->bio_cmd = BIO_READ;
		bp->bio_data = FUNC15(MAXPHYS, M_RAID3, M_WAITOK);
		bp->bio_cflags = 0;
		bp->bio_offset = disk->d_sync.ds_offset * (sc->sc_ndisks - 1);
		bp->bio_length = FUNC3(MAXPHYS, sc->sc_mediasize - bp->bio_offset);
		disk->d_sync.ds_offset += bp->bio_length / (sc->sc_ndisks - 1);
		bp->bio_done = g_raid3_sync_done;
		bp->bio_from = disk->d_sync.ds_consumer;
		bp->bio_to = sc->sc_provider;
		bp->bio_caller1 = (void *)(uintptr_t)n;
	}

	/* Set the number of in-flight synchronization requests. */
	disk->d_sync.ds_inflight = g_raid3_syncreqs;

	/*
	 * Fire off first synchronization requests.
	 */
	for (n = 0; n < g_raid3_syncreqs; n++) {
		bp = disk->d_sync.ds_bios[n];
		FUNC1(3, bp, "Sending synchronization request.");
		disk->d_sync.ds_consumer->index++;
		/*
		 * Delay the request if it is colliding with a regular request.
		 */
		if (FUNC10(sc, bp))
			FUNC11(sc, bp);
		else
			FUNC7(bp, disk->d_sync.ds_consumer);
	}
}