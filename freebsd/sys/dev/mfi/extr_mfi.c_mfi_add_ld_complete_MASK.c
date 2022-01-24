#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mfi_softc {int /*<<< orphan*/  mfi_io_lock; int /*<<< orphan*/  mfi_dev; int /*<<< orphan*/  mfi_map_sync_cm; scalar_t__ cm_map_abort; } ;
struct mfi_ld_info {int dummy; } ;
struct mfi_frame_header {scalar_t__ cmd_status; } ;
struct mfi_command {struct mfi_ld_info* cm_private; TYPE_1__* cm_frame; struct mfi_softc* cm_sc; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_2__ {struct mfi_frame_header header; } ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 scalar_t__ MFI_STAT_OK ; 
 int /*<<< orphan*/  M_MFIBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mfi_ld_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct mfi_ld_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mfi_command*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct mfi_command *cm)
{
	struct mfi_frame_header *hdr;
	struct mfi_ld_info *ld_info;
	struct mfi_softc *sc;
	device_t child;

	sc = cm->cm_sc;
	hdr = &cm->cm_frame->header;
	ld_info = cm->cm_private;

	if (sc->cm_map_abort || hdr->cmd_status != MFI_STAT_OK) {
		FUNC5(ld_info, M_MFIBUF);
		FUNC9(&sc->mfi_map_sync_cm);
		FUNC6(cm);
		return;
	}
	FUNC9(&sc->mfi_map_sync_cm);
	FUNC6(cm);

	FUNC8(&sc->mfi_io_lock);
	FUNC7(&Giant);
	if ((child = FUNC1(sc->mfi_dev, "mfid", -1)) == NULL) {
		FUNC2(sc->mfi_dev, "Failed to add logical disk\n");
		FUNC5(ld_info, M_MFIBUF);
		FUNC8(&Giant);
		FUNC7(&sc->mfi_io_lock);
		return;
	}

	FUNC4(child, ld_info);
	FUNC3(child, "MFI Logical Disk");
	FUNC0(sc->mfi_dev);
	FUNC8(&Giant);
	FUNC7(&sc->mfi_io_lock);
}