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
struct mfi_softc {int /*<<< orphan*/  mfi_io_lock; int /*<<< orphan*/  mfi_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  device_id; } ;
struct TYPE_6__ {TYPE_2__ v; } ;
struct mfi_pd_info {scalar_t__ fw_state; TYPE_3__ ref; } ;
struct mfi_frame_header {scalar_t__ cmd_status; } ;
struct mfi_command {struct mfi_pd_info* cm_private; TYPE_1__* cm_frame; struct mfi_softc* cm_sc; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_4__ {struct mfi_frame_header header; } ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 scalar_t__ MFI_PD_STATE_SYSTEM ; 
 scalar_t__ MFI_STAT_OK ; 
 int /*<<< orphan*/  M_MFIBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mfi_pd_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct mfi_pd_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mfi_command*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct mfi_command *cm)
{
	struct mfi_frame_header *hdr;
	struct mfi_pd_info *pd_info;
	struct mfi_softc *sc;
	device_t child;

	sc = cm->cm_sc;
	hdr = &cm->cm_frame->header;
	pd_info = cm->cm_private;

	if (hdr->cmd_status != MFI_STAT_OK) {
		FUNC5(pd_info, M_MFIBUF);
		FUNC6(cm);
		return;
	}
	if (pd_info->fw_state != MFI_PD_STATE_SYSTEM) {
		FUNC2(sc->mfi_dev, "PD=%x is not SYSTEM PD\n",
		    pd_info->ref.v.device_id);
		FUNC5(pd_info, M_MFIBUF);
		FUNC6(cm);
		return;
	}
	FUNC6(cm);

	FUNC8(&sc->mfi_io_lock);
	FUNC7(&Giant);
	if ((child = FUNC1(sc->mfi_dev, "mfisyspd", -1)) == NULL) {
		FUNC2(sc->mfi_dev, "Failed to add system pd\n");
		FUNC5(pd_info, M_MFIBUF);
		FUNC8(&Giant);
		FUNC7(&sc->mfi_io_lock);
		return;
	}

	FUNC4(child, pd_info);
	FUNC3(child, "MFI System PD");
	FUNC0(sc->mfi_dev);
	FUNC8(&Giant);
	FUNC7(&sc->mfi_io_lock);
}