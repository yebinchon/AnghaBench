#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct mfi_softc {int /*<<< orphan*/  mfi_dev; } ;
struct TYPE_11__ {int isSSCD; } ;
struct TYPE_12__ {TYPE_5__ params; } ;
struct mfi_ld_info {TYPE_6__ ld_config; } ;
struct TYPE_7__ {int isSSCD; } ;
struct mfi_ld_config {TYPE_1__ params; } ;
struct mfi_config_data {int array_size; int array_count; scalar_t__ array; } ;
struct mfi_command {scalar_t__ cm_private; TYPE_4__* cm_frame; int /*<<< orphan*/  cm_flags; scalar_t__ cm_data; } ;
struct TYPE_9__ {scalar_t__ cmd_status; int /*<<< orphan*/  target_id; } ;
struct TYPE_8__ {scalar_t__ opcode; int /*<<< orphan*/ * mbox; } ;
struct TYPE_10__ {TYPE_3__ header; TYPE_2__ dcmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFI_CMD_DATAIN ; 
 scalar_t__ MFI_DCMD_CFG_ADD ; 
 scalar_t__ MFI_DCMD_LD_DELETE ; 
 int /*<<< orphan*/  MFI_DCMD_LD_GET_INFO ; 
 scalar_t__ MFI_STAT_OK ; 
 int /*<<< orphan*/  M_MFIBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mfi_ld_info*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mfi_softc*,struct mfi_command**,int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mfi_command*) ; 
 scalar_t__ FUNC4 (struct mfi_softc*,struct mfi_command*) ; 

__attribute__((used)) static int
FUNC5(struct mfi_softc *sc, struct mfi_command *cm)
{
	struct mfi_config_data *conf_data;
	struct mfi_command *ld_cm = NULL;
	struct mfi_ld_info *ld_info = NULL;
	struct mfi_ld_config *ld;
	char *p;
	int error = 0;

	conf_data = (struct mfi_config_data *)cm->cm_data;

	if (cm->cm_frame->dcmd.opcode == MFI_DCMD_CFG_ADD) {
		p = (char *)conf_data->array;
		p += conf_data->array_size * conf_data->array_count;
		ld = (struct mfi_ld_config *)p;
		if (ld->params.isSSCD == 1)
			error = 1;
	} else if (cm->cm_frame->dcmd.opcode == MFI_DCMD_LD_DELETE) {
		error = FUNC2 (sc, &ld_cm, MFI_DCMD_LD_GET_INFO,
		    (void **)&ld_info, sizeof(*ld_info));
		if (error) {
			FUNC0(sc->mfi_dev, "Failed to allocate"
			    "MFI_DCMD_LD_GET_INFO %d", error);
			if (ld_info)
				FUNC1(ld_info, M_MFIBUF);
			return 0;
		}
		ld_cm->cm_flags = MFI_CMD_DATAIN;
		ld_cm->cm_frame->dcmd.mbox[0]= cm->cm_frame->dcmd.mbox[0];
		ld_cm->cm_frame->header.target_id = cm->cm_frame->dcmd.mbox[0];
		if (FUNC4(sc, ld_cm) != 0) {
			FUNC0(sc->mfi_dev, "failed to get log drv\n");
			FUNC3(ld_cm);
			FUNC1(ld_info, M_MFIBUF);
			return 0;
		}

		if (ld_cm->cm_frame->header.cmd_status != MFI_STAT_OK) {
			FUNC1(ld_info, M_MFIBUF);
			FUNC3(ld_cm);
			return 0;
		}
		else
			ld_info = (struct mfi_ld_info *)ld_cm->cm_private;

		if (ld_info->ld_config.params.isSSCD == 1)
			error = 1;

		FUNC3(ld_cm);
		FUNC1(ld_info, M_MFIBUF);

	}
	return error;
}