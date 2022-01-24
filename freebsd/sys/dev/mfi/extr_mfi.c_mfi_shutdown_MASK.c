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
struct mfi_softc {int cm_aen_abort; int cm_map_abort; int /*<<< orphan*/  mfi_io_lock; int /*<<< orphan*/  mfi_dev; int /*<<< orphan*/ * mfi_map_sync_cm; int /*<<< orphan*/ * mfi_aen_cm; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct mfi_dcmd_frame {TYPE_2__ header; } ;
struct mfi_command {int /*<<< orphan*/ * cm_data; int /*<<< orphan*/  cm_flags; TYPE_1__* cm_frame; } ;
struct TYPE_3__ {struct mfi_dcmd_frame dcmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFI_CMD_POLLED ; 
 int /*<<< orphan*/  MFI_DCMD_CTRL_SHUTDOWN ; 
 int /*<<< orphan*/  MFI_FRAME_DIR_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mfi_softc*,int /*<<< orphan*/ **) ; 
 int FUNC2 (struct mfi_softc*,struct mfi_command**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mfi_softc*,struct mfi_command*) ; 
 int /*<<< orphan*/  FUNC4 (struct mfi_command*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct mfi_softc *sc)
{
	struct mfi_dcmd_frame *dcmd;
	struct mfi_command *cm;
	int error;


	if (sc->mfi_aen_cm != NULL) {
		sc->cm_aen_abort = 1;
		FUNC1(sc, &sc->mfi_aen_cm);
	}

	if (sc->mfi_map_sync_cm != NULL) {
		sc->cm_map_abort = 1;
		FUNC1(sc, &sc->mfi_map_sync_cm);
	}

	FUNC5(&sc->mfi_io_lock);
	error = FUNC2(sc, &cm, MFI_DCMD_CTRL_SHUTDOWN, NULL, 0);
	if (error) {
		FUNC6(&sc->mfi_io_lock);
		return (error);
	}

	dcmd = &cm->cm_frame->dcmd;
	dcmd->header.flags = MFI_FRAME_DIR_NONE;
	cm->cm_flags = MFI_CMD_POLLED;
	cm->cm_data = NULL;

	if ((error = FUNC3(sc, cm)) != 0)
		FUNC0(sc->mfi_dev, "Failed to shutdown controller\n");

	FUNC4(cm);
	FUNC6(&sc->mfi_io_lock);
	return (error);
}