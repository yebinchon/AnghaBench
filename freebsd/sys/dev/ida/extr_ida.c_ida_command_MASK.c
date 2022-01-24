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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ida_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;
struct ida_qcb {int flags; int error; struct ida_hardware_qcb* hwqcb; } ;
struct TYPE_4__ {int command; int /*<<< orphan*/  bcount; int /*<<< orphan*/  blkno; } ;
struct TYPE_3__ {int drive; } ;
struct ida_hardware_qcb {TYPE_2__ req; TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_BSIZE ; 
 int EAGAIN ; 
 int IDA_COMMAND ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dumping ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ida_softc*,struct ida_qcb*) ; 
 struct ida_qcb* FUNC5 (struct ida_softc*) ; 
 int FUNC6 (struct ida_softc*,struct ida_qcb*,void*,int) ; 
 int FUNC7 (struct ida_softc*,struct ida_qcb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC9(struct ida_softc *ida, int command, void *data, int datasize,
	int drive, u_int32_t pblkno, int flags)
{
	struct ida_hardware_qcb *hwqcb;
	struct ida_qcb *qcb;
	int error;

	if (!dumping)
		FUNC8(&ida->lock, MA_OWNED);
	qcb = FUNC5(ida);

	if (qcb == NULL) {
		FUNC0(ida->dev, "out of QCBs\n");
		return (EAGAIN);
	}

	qcb->flags = flags | IDA_COMMAND;
	hwqcb = qcb->hwqcb;
	hwqcb->hdr.drive = drive;
	hwqcb->req.blkno = FUNC3(pblkno);
	hwqcb->req.bcount = FUNC2(FUNC1(datasize, DEV_BSIZE));
	hwqcb->req.command = command;

	error = FUNC6(ida, qcb, data, datasize);
	if (error == 0) {
		error = FUNC7(ida, qcb);
		/* Don't free QCB on a timeout in case it later completes. */
		if (error)
			return (error);
		error = qcb->error;
	}

	/* XXX should have status returned here? */
	/* XXX have "status pointer" area in QCB? */

	FUNC4(ida, qcb);
	return (error);
}