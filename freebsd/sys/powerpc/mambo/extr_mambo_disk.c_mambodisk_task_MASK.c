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
typedef  int u_long ;
struct mambodisk_softc {int running; int maxblocks; TYPE_1__* disk; int /*<<< orphan*/  bio_queue; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  dev; } ;
struct bio {scalar_t__ bio_pblkno; size_t bio_bcount; char* bio_data; scalar_t__ bio_cmd; int /*<<< orphan*/  bio_flags; scalar_t__ bio_resid; int /*<<< orphan*/  bio_error; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ daddr_t ;
struct TYPE_2__ {size_t d_sectorsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_ERROR ; 
 scalar_t__ BIO_READ ; 
 scalar_t__ BIO_WRITE ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  MAMBO_DISK_READ ; 
 int /*<<< orphan*/  MAMBO_DISK_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct mambodisk_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mambodisk_softc*) ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 struct bio* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct bio*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mambodisk_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mambodisk_softc*) ; 

__attribute__((used)) static void
FUNC10(void *arg)
{
	struct mambodisk_softc *sc = (struct mambodisk_softc*)arg;
	struct bio *bp;
	size_t sz;
	int result;
	daddr_t block, end;
	device_t dev;
	u_long unit;

	dev = sc->dev;
	unit = FUNC5(dev);

	while (sc->running) {
		FUNC0(sc);
		do {
			bp = FUNC3(&sc->bio_queue);
			if (bp == NULL)
				FUNC8(sc, &sc->sc_mtx, PRIBIO, "jobqueue", 0);
		} while (bp == NULL && sc->running);
		if (bp)
			FUNC4(&sc->bio_queue, bp);
		FUNC1(sc);
		if (!sc->running)
			break;
		sz = sc->disk->d_sectorsize;
		end = bp->bio_pblkno + (bp->bio_bcount / sz);
		for (block = bp->bio_pblkno; block < end;) {
			u_long numblocks;
			char *vaddr = bp->bio_data + 
			    (block - bp->bio_pblkno) * sz;

			numblocks = end - block;
			if (numblocks > sc->maxblocks)
				numblocks = sc->maxblocks;

			if (bp->bio_cmd == BIO_READ) {
				result = FUNC7(MAMBO_DISK_READ, vaddr, 
				  (u_long)block, (numblocks << 16) | unit);
			} else if (bp->bio_cmd == BIO_WRITE) {
				result = FUNC7(MAMBO_DISK_WRITE, vaddr, 
				  (u_long)block, (numblocks << 16) | unit);
			} else {
				result = 1;
			}
		
			if (result)
				break;

			block += numblocks;
		}
		if (block < end) {
			bp->bio_error = EIO;
			bp->bio_resid = (end - block) * sz;
			bp->bio_flags |= BIO_ERROR;
		}
		FUNC2(bp);
	}

	/* tell parent we're done */
	FUNC0(sc);
	sc->running = -1;
	FUNC9(sc);
	FUNC1(sc);

	FUNC6(0);
}