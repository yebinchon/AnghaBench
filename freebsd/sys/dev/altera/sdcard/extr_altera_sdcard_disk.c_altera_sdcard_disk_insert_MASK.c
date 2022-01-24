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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint64_t ;
struct disk {char* d_name; int d_mediasize; void* d_maxsize; void* d_sectorsize; int /*<<< orphan*/  d_ioctl; int /*<<< orphan*/  d_dump; int /*<<< orphan*/  d_strategy; int /*<<< orphan*/  d_unit; struct altera_sdcard_softc* d_drv1; } ;
struct altera_sdcard_softc {int as_mediasize; int /*<<< orphan*/  as_dev; struct disk* as_disk; int /*<<< orphan*/  as_unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct altera_sdcard_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct altera_sdcard_softc*) ; 
 void* ALTERA_SDCARD_SECTORSIZE ; 
 int /*<<< orphan*/  FUNC2 (struct altera_sdcard_softc*) ; 
 int /*<<< orphan*/  DISK_VERSION ; 
 int /*<<< orphan*/  altera_sdcard_disk_dump ; 
 int /*<<< orphan*/  altera_sdcard_disk_ioctl ; 
 int /*<<< orphan*/  altera_sdcard_disk_strategy ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct disk* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct disk*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct altera_sdcard_softc *sc)
{
	struct disk *disk;
	uint64_t size;

	FUNC1(sc);

	/*
	 * Because the disk insertion routine occupies the driver instance's
	 * task queue thread, and the disk(9) instance isn't hooked up yet by
	 * definition, the only other source of events of concern is a thread
	 * initiating driver detach.  That thread has to issue a detach
	 * request and await an ACK from the taskqueue thread.  It is
	 * therefore safe to drop the lock here.
	 */
	FUNC2(sc);
	disk = FUNC4();
	disk->d_drv1 = sc;
	disk->d_name = "altera_sdcard";
	disk->d_unit = sc->as_unit;
	disk->d_strategy = altera_sdcard_disk_strategy;
	disk->d_dump = altera_sdcard_disk_dump;
	disk->d_ioctl = altera_sdcard_disk_ioctl;
	disk->d_sectorsize = ALTERA_SDCARD_SECTORSIZE;
	disk->d_mediasize = sc->as_mediasize;
	disk->d_maxsize = ALTERA_SDCARD_SECTORSIZE;
	sc->as_disk = disk;
	FUNC5(disk, DISK_VERSION);
	FUNC0(sc);

	/*
	 * Print a pretty-ish card insertion string.  We could stand to
	 * decorate this further, e.g., with card vendor information.
	 */
	size = sc->as_mediasize / (1000 * 1000);
	FUNC3(sc->as_dev, "%juM SD Card inserted\n", (uintmax_t)size);
}