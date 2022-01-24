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
struct mfi_softc {int /*<<< orphan*/  mfi_dev; int /*<<< orphan*/  mfi_ld_pend_tqh; int /*<<< orphan*/  mfi_io_lock; } ;
struct TYPE_5__ {int isSSCD; } ;
struct TYPE_6__ {TYPE_2__ params; } ;
struct mfi_ld_info {TYPE_3__ ld_config; } ;
struct mfi_disk_pending {int ld_id; } ;
struct mfi_dcmd_frame {int* mbox; } ;
struct mfi_command {TYPE_1__* cm_frame; int /*<<< orphan*/  cm_flags; } ;
struct TYPE_4__ {struct mfi_dcmd_frame dcmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  MFI_CMD_DATAIN ; 
 int /*<<< orphan*/  MFI_DCMD_LD_GET_INFO ; 
 int /*<<< orphan*/  M_MFIBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mfi_disk_pending*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mfi_ld_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ld_link ; 
 struct mfi_disk_pending* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mfi_command*) ; 
 int FUNC5 (struct mfi_softc*,struct mfi_command**,int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mfi_command*) ; 
 scalar_t__ FUNC7 (struct mfi_softc*,struct mfi_command*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct mfi_softc *sc, int id)
{
	struct mfi_command *cm;
	struct mfi_dcmd_frame *dcmd = NULL;
	struct mfi_ld_info *ld_info = NULL;
	struct mfi_disk_pending *ld_pend;
	int error;

	FUNC8(&sc->mfi_io_lock, MA_OWNED);

	ld_pend = FUNC3(sizeof(*ld_pend), M_MFIBUF, M_NOWAIT | M_ZERO);
	if (ld_pend != NULL) {
		ld_pend->ld_id = id;
		FUNC0(&sc->mfi_ld_pend_tqh, ld_pend, ld_link);
	}

	error = FUNC5(sc, &cm, MFI_DCMD_LD_GET_INFO,
	    (void **)&ld_info, sizeof(*ld_info));
	if (error) {
		FUNC1(sc->mfi_dev,
		    "Failed to allocate for MFI_DCMD_LD_GET_INFO %d\n", error);
		if (ld_info)
			FUNC2(ld_info, M_MFIBUF);
		return (error);
	}
	cm->cm_flags = MFI_CMD_DATAIN;
	dcmd = &cm->cm_frame->dcmd;
	dcmd->mbox[0] = id;
	if (FUNC7(sc, cm) != 0) {
		FUNC1(sc->mfi_dev,
		    "Failed to get logical drive: %d\n", id);
		FUNC2(ld_info, M_MFIBUF);
		return (0);
	}
	if (ld_info->ld_config.params.isSSCD != 1)
		FUNC4(cm);
	else {
		FUNC6(cm);
		if (ld_info)		/* SSCD drives ld_info free here */
			FUNC2(ld_info, M_MFIBUF);
	}
	return (0);
}