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
struct mambodisk_softc {int maxblocks; int running; int /*<<< orphan*/  p; int /*<<< orphan*/  bio_queue; struct disk* disk; int /*<<< orphan*/  dev; } ;
struct disk {char* d_name; int d_sectorsize; unsigned long long d_mediasize; int /*<<< orphan*/  d_unit; int /*<<< orphan*/  d_maxsize; struct mambodisk_softc* d_drv1; int /*<<< orphan*/  d_strategy; int /*<<< orphan*/  d_close; int /*<<< orphan*/  d_open; } ;
typedef  int intmax_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DISK_VERSION ; 
 int /*<<< orphan*/  MAMBO_DISK_INFO ; 
 int /*<<< orphan*/  MAMBO_INFO_BLKSZ ; 
 int /*<<< orphan*/  MAMBO_INFO_DEVSZ ; 
 int /*<<< orphan*/  MAXPHYS ; 
 int /*<<< orphan*/  FUNC0 (struct mambodisk_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mambodisk_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,char,int) ; 
 struct disk* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct disk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct mambodisk_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 unsigned long long FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mambodisk_close ; 
 int /*<<< orphan*/  mambodisk_open ; 
 int /*<<< orphan*/  mambodisk_strategy ; 
 int /*<<< orphan*/  mambodisk_task ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct mambodisk_softc *sc;
	struct disk *d;
	intmax_t mb;
	char unit;

	sc = FUNC2(dev);
	sc->dev = dev;
	FUNC0(sc);

	d = sc->disk = FUNC5();
	d->d_open = mambodisk_open;
	d->d_close = mambodisk_close;
	d->d_strategy = mambodisk_strategy;
	d->d_name = "mambodisk";
	d->d_drv1 = sc;
	d->d_maxsize = MAXPHYS;		/* Maybe ask bridge? */

	d->d_sectorsize = 512;
	sc->maxblocks = FUNC8(MAMBO_DISK_INFO,MAMBO_INFO_BLKSZ,d->d_unit)
	    / 512;

	d->d_unit = FUNC3(dev);
	d->d_mediasize = FUNC8(MAMBO_DISK_INFO,MAMBO_INFO_DEVSZ,d->d_unit)
	    * 1024ULL; /* Mambo gives size in KB */

	mb = d->d_mediasize >> 20;	/* 1MiB == 1 << 20 */
	unit = 'M';
	if (mb >= 10240) {		/* 1GiB = 1024 MiB */
		unit = 'G';
		mb /= 1024;
	}
	FUNC4(dev, "%ju%cB, %d byte sectors\n", mb, unit, 
	    d->d_sectorsize);
	FUNC6(d, DISK_VERSION);
	FUNC1(&sc->bio_queue);

	sc->running = 1;
	FUNC7(&mambodisk_task, sc, &sc->p, 0, 0, "task: mambo hd");

	return (0);
}