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
struct idad_softc {int /*<<< orphan*/  drive; } ;
struct ida_softc {int flags; int /*<<< orphan*/  bio_queue; int /*<<< orphan*/  lock; } ;
struct ida_qcb {int error; struct ida_hardware_qcb* hwqcb; int /*<<< orphan*/  flags; struct bio* buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  command; int /*<<< orphan*/  bcount; int /*<<< orphan*/  blkno; } ;
struct TYPE_3__ {int /*<<< orphan*/  drive; } ;
struct ida_hardware_qcb {TYPE_2__ req; TYPE_1__ hdr; } ;
struct bio {scalar_t__ bio_cmd; int /*<<< orphan*/  bio_bcount; int /*<<< orphan*/  bio_data; int /*<<< orphan*/  bio_pblkno; struct idad_softc* bio_driver1; } ;

/* Variables and functions */
 scalar_t__ BIO_READ ; 
 int /*<<< orphan*/  CMD_READ ; 
 int /*<<< orphan*/  CMD_WRITE ; 
 int /*<<< orphan*/  DEV_BSIZE ; 
 int /*<<< orphan*/  DMA_DATA_IN ; 
 int /*<<< orphan*/  DMA_DATA_OUT ; 
 int IDA_QFROZEN ; 
 int /*<<< orphan*/  MA_OWNED ; 
 struct bio* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ida_softc*,struct ida_qcb*) ; 
 struct ida_qcb* FUNC4 (struct ida_softc*) ; 
 int FUNC5 (struct ida_softc*,struct ida_qcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct ida_softc *ida)
{
	struct ida_hardware_qcb *hwqcb;
	struct ida_qcb *qcb;
	struct idad_softc *drv;
	struct bio *bp;
	int error;

	FUNC6(&ida->lock, MA_OWNED);
	for (;;) {
		if (ida->flags & IDA_QFROZEN)
			return;
		bp = FUNC0(&ida->bio_queue);
		if (bp == NULL)
			return;				/* no more buffers */

		qcb = FUNC4(ida);
		if (qcb == NULL)
			return;				/* out of resources */

		FUNC1(&ida->bio_queue, bp);
		qcb->buf = bp;
		qcb->flags = bp->bio_cmd == BIO_READ ? DMA_DATA_IN : DMA_DATA_OUT;

		hwqcb = qcb->hwqcb;
		drv = bp->bio_driver1;
		hwqcb->hdr.drive = drv->drive;
		hwqcb->req.blkno = bp->bio_pblkno;
		hwqcb->req.bcount = FUNC2(bp->bio_bcount, DEV_BSIZE);
		hwqcb->req.command = bp->bio_cmd == BIO_READ ? CMD_READ : CMD_WRITE;

		error = FUNC5(ida, qcb, bp->bio_data, bp->bio_bcount);
		if (error) {
			qcb->error = error;
			FUNC3(ida, qcb);
		}
	}
}