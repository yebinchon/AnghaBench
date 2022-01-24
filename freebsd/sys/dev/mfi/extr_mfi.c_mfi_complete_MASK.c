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
struct mfi_softc {int /*<<< orphan*/  mfi_buffer_dmat; int /*<<< orphan*/  mfi_io_lock; } ;
struct mfi_command {int cm_flags; int /*<<< orphan*/  (* cm_complete ) (struct mfi_command*) ;int /*<<< orphan*/  cm_dmamap; TYPE_2__* cm_frame; } ;
struct TYPE_3__ {scalar_t__ cmd; } ;
struct TYPE_4__ {TYPE_1__ header; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int MFI_CMD_COMPLETED ; 
 int MFI_CMD_DATAIN ; 
 int MFI_CMD_DATAOUT ; 
 int MFI_CMD_MAPPED ; 
 scalar_t__ MFI_CMD_STP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mfi_command*) ; 
 int /*<<< orphan*/  FUNC4 (struct mfi_command*) ; 

void
FUNC5(struct mfi_softc *sc, struct mfi_command *cm)
{
	int dir;
	FUNC2(&sc->mfi_io_lock, MA_OWNED);

	if ((cm->cm_flags & MFI_CMD_MAPPED) != 0) {
		dir = 0;
		if ((cm->cm_flags & MFI_CMD_DATAIN) ||
		    (cm->cm_frame->header.cmd == MFI_CMD_STP))
			dir |= BUS_DMASYNC_POSTREAD;
		if (cm->cm_flags & MFI_CMD_DATAOUT)
			dir |= BUS_DMASYNC_POSTWRITE;

		FUNC0(sc->mfi_buffer_dmat, cm->cm_dmamap, dir);
		FUNC1(sc->mfi_buffer_dmat, cm->cm_dmamap);
		cm->cm_flags &= ~MFI_CMD_MAPPED;
	}

	cm->cm_flags |= MFI_CMD_COMPLETED;

	if (cm->cm_complete != NULL)
		cm->cm_complete(cm);
	else
		FUNC4(cm);
}