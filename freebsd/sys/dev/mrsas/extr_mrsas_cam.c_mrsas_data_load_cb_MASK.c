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
struct mrsas_softc {int max_num_sge; int /*<<< orphan*/  mrsas_dev; int /*<<< orphan*/  data_tag; } ;
struct mrsas_mpt_cmd {int error_code; int flags; scalar_t__ pdInterface; int sge_count; TYPE_3__* io_request; int /*<<< orphan*/  data_dmamap; struct mrsas_softc* sc; TYPE_2__* ccb_ptr; } ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;
typedef  int boolean_t ;
struct TYPE_6__ {int IoFlags; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct TYPE_5__ {TYPE_1__ ccb_h; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  CAM_REQ_TOO_BIG ; 
 int EFBIG ; 
 int MPI25_SAS_DEVICE0_FLAGS_ENABLED_FAST_PATH ; 
 int MRSAS_DIR_IN ; 
 int MRSAS_DIR_OUT ; 
 scalar_t__ NVME_PD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mrsas_mpt_cmd*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mrsas_mpt_cmd*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct mrsas_mpt_cmd*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
	struct mrsas_mpt_cmd *cmd = (struct mrsas_mpt_cmd *)arg;
	struct mrsas_softc *sc = cmd->sc;
	boolean_t build_prp = false;

	if (error) {
		cmd->error_code = error;
		FUNC1(sc->mrsas_dev, "mrsas_data_load_cb_prp: error=%d\n", error);
		if (error == EFBIG) {
			cmd->ccb_ptr->ccb_h.status = CAM_REQ_TOO_BIG;
			return;
		}
	}
	if (cmd->flags & MRSAS_DIR_IN)
		FUNC0(cmd->sc->data_tag, cmd->data_dmamap,
		    BUS_DMASYNC_PREREAD);
	if (cmd->flags & MRSAS_DIR_OUT)
		FUNC0(cmd->sc->data_tag, cmd->data_dmamap,
		    BUS_DMASYNC_PREWRITE);
	if (nseg > sc->max_num_sge) {
		FUNC1(sc->mrsas_dev, "SGE count is too large or 0.\n");
		return;
	}

	/* Check for whether PRPs should be built or IEEE SGLs*/
	if ((cmd->io_request->IoFlags & MPI25_SAS_DEVICE0_FLAGS_ENABLED_FAST_PATH) &&
			(cmd->pdInterface == NVME_PD))
		build_prp = FUNC4(cmd, segs, nseg);

	if (build_prp == true)
		FUNC3(cmd, segs, nseg);
	else
		FUNC2(cmd, segs, nseg);

	cmd->sge_count = nseg;
}