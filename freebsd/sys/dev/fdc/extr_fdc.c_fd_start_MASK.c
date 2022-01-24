#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fdc_data {int dummy; } ;
struct fd_data {int sectorsize; TYPE_3__* ft; struct fdc_data* fdc; } ;
struct bio {scalar_t__ bio_cmd; int bio_pblkno; int bio_offset; int /*<<< orphan*/  bio_length; int /*<<< orphan*/  bio_resid; struct fd_data* bio_driver1; TYPE_2__* bio_to; } ;
struct TYPE_6__ {int /*<<< orphan*/  heads; int /*<<< orphan*/  sectrac; } ;
struct TYPE_5__ {TYPE_1__* geom; } ;
struct TYPE_4__ {struct fd_data* softc; } ;

/* Variables and functions */
 scalar_t__ BIO_GETATTR ; 
 scalar_t__ BIO_READ ; 
 scalar_t__ BIO_WRITE ; 
 int /*<<< orphan*/  ENOIOCTL ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct fd_data*,struct bio*) ; 
 scalar_t__ FUNC1 (struct bio*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bio *bp)
{
 	struct fdc_data *	fdc;
 	struct fd_data *	fd;

	fd = bp->bio_to->geom->softc;
	fdc = fd->fdc;
	bp->bio_driver1 = fd;
	if (bp->bio_cmd == BIO_GETATTR) {
		if (FUNC1(bp, "GEOM::fwsectors", fd->ft->sectrac))
			return;
		if (FUNC1(bp, "GEOM::fwheads", fd->ft->heads))
			return;
		FUNC2(bp, ENOIOCTL);
		return;
	}
	if (!(bp->bio_cmd == BIO_READ || bp->bio_cmd == BIO_WRITE)) {
		FUNC2(bp, EOPNOTSUPP);
		return;
	}
	bp->bio_pblkno = bp->bio_offset / fd->sectorsize;
	bp->bio_resid = bp->bio_length;
	FUNC0(fd, bp);
	return;
}