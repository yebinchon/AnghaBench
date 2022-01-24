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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct mmcsd_softc {int /*<<< orphan*/  log_count; int /*<<< orphan*/  log_time; int /*<<< orphan*/  rca; int /*<<< orphan*/  mmcbus; int /*<<< orphan*/  dev; } ;
struct mmcsd_part {int /*<<< orphan*/  type; struct mmcsd_softc* sc; } ;
struct disk {int d_sectorsize; struct mmcsd_part* d_drv1; } ;
struct bio {int bio_pblkno; size_t bio_bcount; int /*<<< orphan*/  bio_cmd; void* bio_data; struct disk* bio_disk; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int daddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_WRITE ; 
 int EIO ; 
 int /*<<< orphan*/  LOG_PPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MMC_ERR_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int FUNC4 (struct mmcsd_softc*) ; 
 int FUNC5 (struct mmcsd_part*,struct bio*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(void *arg, void *virtual, vm_offset_t physical, off_t offset,
    size_t length)
{
	struct bio bp;
	daddr_t block, end;
	struct disk *disk;
	struct mmcsd_softc *sc;
	struct mmcsd_part *part;
	device_t dev, mmcbus;
	int err;

	disk = arg;
	part = disk->d_drv1;
	sc = part->sc;

	/* length zero is special and really means flush buffers to media */
	if (length == 0) {
		err = FUNC4(sc);
		if (err != MMC_ERR_NONE)
			return (EIO);
		return (0);
	}

	dev = sc->dev;
	mmcbus = sc->mmcbus;

	FUNC3(&bp);
	bp.bio_disk = disk;
	bp.bio_pblkno = offset / disk->d_sectorsize;
	bp.bio_bcount = length;
	bp.bio_data = virtual;
	bp.bio_cmd = BIO_WRITE;
	end = bp.bio_pblkno + bp.bio_bcount / disk->d_sectorsize;
	FUNC0(mmcbus, dev);
	err = FUNC6(mmcbus, dev, sc->rca, part->type);
	if (err != MMC_ERR_NONE) {
		if (FUNC7(&sc->log_time, &sc->log_count, LOG_PPS))
			FUNC2(dev, "Partition switch error\n");
		FUNC1(mmcbus, dev);
		return (EIO);
	}
	block = FUNC5(part, &bp);
	FUNC1(mmcbus, dev);
	return ((end < block) ? EIO : 0);
}