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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct g_raid3_softc {int sc_sectorsize; int sc_mediasize; int sc_flags; int /*<<< orphan*/  sc_name; int /*<<< orphan*/  sc_ndisks; int /*<<< orphan*/  sc_provider; int /*<<< orphan*/  sc_bump_id; int /*<<< orphan*/  sc_lock; } ;
struct g_raid3_disk_sync {int ds_offset; int ds_offset_done; struct bio** ds_bios; struct g_consumer* ds_consumer; int /*<<< orphan*/  ds_inflight; } ;
struct g_raid3_disk {int d_no; struct g_raid3_disk_sync d_sync; struct g_consumer* d_consumer; } ;
struct g_consumer {int acr; int acw; int ace; int /*<<< orphan*/  index; TYPE_2__* provider; struct g_raid3_disk* private; TYPE_1__* geom; } ;
struct bio {int bio_cmd; int bio_length; int bio_offset; int /*<<< orphan*/  bio_to; struct g_consumer* bio_from; int /*<<< orphan*/ * bio_data; int /*<<< orphan*/  bio_done; int /*<<< orphan*/  bio_caller1; int /*<<< orphan*/  bio_error; int /*<<< orphan*/  bio_inbed; int /*<<< orphan*/  bio_children; int /*<<< orphan*/  bio_cflags; int /*<<< orphan*/  bio_pflags; int /*<<< orphan*/ * bio_driver2; int /*<<< orphan*/  bio_driver1; } ;
typedef  int off_t ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {struct g_raid3_softc* softc; } ;

/* Variables and functions */
#define  BIO_READ 129 
#define  BIO_WRITE 128 
 int /*<<< orphan*/  G_RAID3_BUMP_GENID ; 
 int G_RAID3_DEVICE_FLAG_DESTROY ; 
 int /*<<< orphan*/  G_RAID3_DISK_STATE_ACTIVE ; 
 int /*<<< orphan*/  G_RAID3_DISK_STATE_DISCONNECTED ; 
 int /*<<< orphan*/  G_RAID3_EVENT_DONTWAIT ; 
 int /*<<< orphan*/  FUNC0 (int,struct bio*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int MAXPHYS ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  M_RAID3 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*,struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC7 (struct g_raid3_disk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct g_raid3_softc*,struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC9 (struct g_raid3_softc*,struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (struct g_raid3_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct g_raid3_softc*,struct bio*) ; 
 int /*<<< orphan*/  g_raid3_sync_done ; 
 int g_raid3_syncreqs ; 
 int /*<<< orphan*/  FUNC12 (struct g_raid3_disk*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (struct bio*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC19(struct bio *bp)
{
	struct g_raid3_softc *sc;
	struct g_raid3_disk *disk;

	bp->bio_from->index--;
	sc = bp->bio_from->geom->softc;
	disk = bp->bio_from->private;
	if (disk == NULL) {
		FUNC18(&sc->sc_lock); /* Avoid recursion on sc_lock. */
		FUNC15();
		FUNC8(sc, bp->bio_from);
		FUNC16();
		FUNC4(bp->bio_data, M_RAID3);
		FUNC5(bp);
		FUNC17(&sc->sc_lock);
		return;
	}

	/*
	 * Synchronization request.
	 */
	switch (bp->bio_cmd) {
	case BIO_READ:
	    {
		struct g_consumer *cp;
		u_char *dst, *src;
		off_t left;
		u_int atom;

		if (bp->bio_error != 0) {
			FUNC0(0, bp,
			    "Synchronization request failed (error=%d).",
			    bp->bio_error);
			FUNC5(bp);
			return;
		}
		FUNC0(3, bp, "Synchronization request finished.");
		atom = sc->sc_sectorsize / (sc->sc_ndisks - 1);
		dst = src = bp->bio_data;
		if (disk->d_no == sc->sc_ndisks - 1) {
			u_int n;

			/* Parity component. */
			for (left = bp->bio_length; left > 0;
			    left -= sc->sc_sectorsize) {
				FUNC3(src, dst, atom);
				src += atom;
				for (n = 1; n < sc->sc_ndisks - 1; n++) {
					FUNC13(src, dst, atom);
					src += atom;
				}
				dst += atom;
			}
		} else {
			/* Regular component. */
			src += atom * disk->d_no;
			for (left = bp->bio_length; left > 0;
			    left -= sc->sc_sectorsize) {
				FUNC3(src, dst, atom);
				src += sc->sc_sectorsize;
				dst += atom;
			}
		}
		bp->bio_driver1 = *(bp->bio_driver2 = NULL);
		bp->bio_pflags = 0;
		bp->bio_offset /= sc->sc_ndisks - 1;
		bp->bio_length /= sc->sc_ndisks - 1;
		bp->bio_cmd = BIO_WRITE;
		bp->bio_cflags = 0;
		bp->bio_children = bp->bio_inbed = 0;
		cp = disk->d_consumer;
		FUNC1(cp->acr >= 1 && cp->acw >= 1 && cp->ace >= 1,
		    ("Consumer %s not opened (r%dw%de%d).", cp->provider->name,
		    cp->acr, cp->acw, cp->ace));
		cp->index++;
		FUNC6(bp, cp);
		return;
	    }
	case BIO_WRITE:
	    {
		struct g_raid3_disk_sync *sync;
		off_t boffset, moffset;
		void *data;
		int i;

		if (bp->bio_error != 0) {
			FUNC0(0, bp,
			    "Synchronization request failed (error=%d).",
			    bp->bio_error);
			FUNC5(bp);
			sc->sc_bump_id |= G_RAID3_BUMP_GENID;
			FUNC7(disk,
			    G_RAID3_DISK_STATE_DISCONNECTED,
			    G_RAID3_EVENT_DONTWAIT);
			return;
		}
		FUNC0(3, bp, "Synchronization request finished.");
		sync = &disk->d_sync;
		if (sync->ds_offset == sc->sc_mediasize / (sc->sc_ndisks - 1) ||
		    sync->ds_consumer == NULL ||
		    (sc->sc_flags & G_RAID3_DEVICE_FLAG_DESTROY) != 0) {
			/* Don't send more synchronization requests. */
			sync->ds_inflight--;
			if (sync->ds_bios != NULL) {
				i = (int)(uintptr_t)bp->bio_caller1;
				sync->ds_bios[i] = NULL;
			}
			FUNC4(bp->bio_data, M_RAID3);
			FUNC5(bp);
			if (sync->ds_inflight > 0)
				return;
			if (sync->ds_consumer == NULL ||
			    (sc->sc_flags & G_RAID3_DEVICE_FLAG_DESTROY) != 0) {
				return;
			}
			/*
			 * Disk up-to-date, activate it.
			 */
			FUNC7(disk, G_RAID3_DISK_STATE_ACTIVE,
			    G_RAID3_EVENT_DONTWAIT);
			return;
		}

		/* Send next synchronization request. */
		data = bp->bio_data;
		FUNC14(bp);
		bp->bio_cmd = BIO_READ;
		bp->bio_offset = sync->ds_offset * (sc->sc_ndisks - 1);
		bp->bio_length = FUNC2(MAXPHYS, sc->sc_mediasize - bp->bio_offset);
		sync->ds_offset += bp->bio_length / (sc->sc_ndisks - 1);
		bp->bio_done = g_raid3_sync_done;
		bp->bio_data = data;
		bp->bio_from = sync->ds_consumer;
		bp->bio_to = sc->sc_provider;
		FUNC0(3, bp, "Sending synchronization request.");
		sync->ds_consumer->index++;
		/*
		 * Delay the request if it is colliding with a regular request.
		 */
		if (FUNC9(sc, bp))
			FUNC11(sc, bp);
		else
			FUNC6(bp, sync->ds_consumer);

		/* Release delayed requests if possible. */
		FUNC10(sc);

		/* Find the smallest offset. */
		moffset = sc->sc_mediasize;
		for (i = 0; i < g_raid3_syncreqs; i++) {
			bp = sync->ds_bios[i];
			boffset = bp->bio_offset;
			if (bp->bio_cmd == BIO_WRITE)
				boffset *= sc->sc_ndisks - 1;
			if (boffset < moffset)
				moffset = boffset;
		}
		if (sync->ds_offset_done + (MAXPHYS * 100) < moffset) {
			/* Update offset_done on every 100 blocks. */
			sync->ds_offset_done = moffset;
			FUNC12(disk);
		}
		return;
	    }
	default:
		FUNC1(1 == 0, ("Invalid command here: %u (device=%s)",
		    bp->bio_cmd, sc->sc_name));
		break;
	}
}