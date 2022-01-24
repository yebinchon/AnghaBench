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
struct mfi_softc {int /*<<< orphan*/  mfi_io_lock; } ;
struct mfi_command {int cm_error; int cm_flags; TYPE_2__* cm_frame; int /*<<< orphan*/ * cm_complete; } ;
struct TYPE_6__ {scalar_t__ opcode; } ;
struct TYPE_4__ {int /*<<< orphan*/  cmd_status; } ;
struct TYPE_5__ {TYPE_1__ header; TYPE_3__ dcmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int MFI_CMD_COMPLETED ; 
 int /*<<< orphan*/  MFI_STAT_OK ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  FUNC0 (struct mfi_command*) ; 
 int /*<<< orphan*/  FUNC1 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mfi_command*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC4(struct mfi_softc *sc, struct mfi_command *cm)
{

	FUNC3(&sc->mfi_io_lock, MA_OWNED);
	cm->cm_complete = NULL;

	/*
	 * MegaCli can issue a DCMD of 0.  In this case do nothing
	 * and return 0 to it as status
	 */
	if (cm->cm_frame->dcmd.opcode == 0) {
		cm->cm_frame->header.cmd_status = MFI_STAT_OK;
		cm->cm_error = 0;
		return (cm->cm_error);
	}
	FUNC0(cm);
	FUNC1(sc);
	if ((cm->cm_flags & MFI_CMD_COMPLETED) == 0)
		FUNC2(cm, &sc->mfi_io_lock, PRIBIO, "mfiwait", 0);
	return (cm->cm_error);
}