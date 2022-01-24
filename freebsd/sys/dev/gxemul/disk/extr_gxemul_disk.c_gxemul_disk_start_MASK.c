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
typedef  int /*<<< orphan*/  uint8_t ;
struct gxemul_disk_softc {int /*<<< orphan*/  sc_dev; } ;
struct bio {int bio_length; int bio_offset; int bio_resid; int bio_cmd; int bio_completed; int /*<<< orphan*/ * bio_data; TYPE_2__* bio_to; } ;
typedef  int off_t ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct gxemul_disk_softc* softc; } ;

/* Variables and functions */
#define  BIO_READ 129 
#define  BIO_WRITE 128 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int GXEMUL_DISK_DEV_BLOCKSIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int) ; 
 int /*<<< orphan*/  gxemul_disk_controller_mutex ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (unsigned int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct bio *bp)
{
	struct gxemul_disk_softc *sc;
	unsigned diskid;
	off_t offset;
	uint8_t *buf;
	int error;

	sc = bp->bio_to->geom->softc;
	diskid = FUNC0(sc->sc_dev);

	if ((bp->bio_length % GXEMUL_DISK_DEV_BLOCKSIZE) != 0) {
		FUNC1(bp, EINVAL);
		return;
	}

	buf = bp->bio_data;
	offset = bp->bio_offset;
	bp->bio_resid = bp->bio_length;
	while (bp->bio_resid != 0) {
		switch (bp->bio_cmd) {
		case BIO_READ:
			FUNC4(&gxemul_disk_controller_mutex);
			error = FUNC2(diskid, buf, offset);
			FUNC5(&gxemul_disk_controller_mutex);
			break;
		case BIO_WRITE:
			FUNC4(&gxemul_disk_controller_mutex);
			error = FUNC3(diskid, buf, offset);
			FUNC5(&gxemul_disk_controller_mutex);
			break;
		default:
			FUNC1(bp, EOPNOTSUPP);
			return;
		}
		if (error != 0) {
			FUNC1(bp, error);
			return;
		}

		buf += GXEMUL_DISK_DEV_BLOCKSIZE;
		offset += GXEMUL_DISK_DEV_BLOCKSIZE;
		bp->bio_completed += GXEMUL_DISK_DEV_BLOCKSIZE;
		bp->bio_resid -= GXEMUL_DISK_DEV_BLOCKSIZE;
	}

	FUNC1(bp, 0);
}