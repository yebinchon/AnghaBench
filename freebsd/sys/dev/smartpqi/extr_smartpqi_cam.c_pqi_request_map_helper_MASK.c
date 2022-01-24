#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
struct TYPE_19__ {int nseg; scalar_t__ data_dir; int req_pending; TYPE_11__* cm_ccb; int /*<<< orphan*/  dvp; int /*<<< orphan*/  status; int /*<<< orphan*/  cm_datamap; TYPE_12__* sgt; TYPE_5__* softs; } ;
typedef  TYPE_4__ rcb_t ;
struct TYPE_17__ {int /*<<< orphan*/  pqi_buffer_dmat; } ;
struct TYPE_16__ {int max_sg_elem; } ;
struct TYPE_20__ {TYPE_2__ os_specific; TYPE_1__ pqi_cap; } ;
typedef  TYPE_5__ pqisrc_softstate_t ;
struct TYPE_21__ {int /*<<< orphan*/  ds_len; int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_6__ bus_dma_segment_t ;
struct TYPE_18__ {void* status; } ;
struct TYPE_15__ {scalar_t__ flags; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct TYPE_14__ {TYPE_3__ ccb_h; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 void* CAM_RESRC_UNAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  REQUEST_PENDING ; 
 scalar_t__ SOP_DATA_DIR_FROM_DEVICE ; 
 scalar_t__ SOP_DATA_DIR_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_12__* FUNC2 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int FUNC5 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (union ccb*) ; 

__attribute__((used)) static void
FUNC7(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
	pqisrc_softstate_t *softs;
	rcb_t *rcb;

	rcb = (rcb_t *)arg;
	softs = rcb->softs;

	if(  error || nseg > softs->pqi_cap.max_sg_elem )
	{
		rcb->cm_ccb->ccb_h.status = CAM_RESRC_UNAVAIL;
		FUNC3(rcb->cm_ccb);
		FUNC0(rcb->dvp, "map failed err = %d or nseg(%d) > sgelem(%d)\n", 
			error, nseg, softs->pqi_cap.max_sg_elem);
		FUNC4(rcb);
		FUNC6((union ccb *)rcb->cm_ccb);
		return;
	}

	rcb->sgt = FUNC2(softs, nseg * sizeof(rcb_t));
	if (rcb->sgt == NULL) {
		rcb->cm_ccb->ccb_h.status = CAM_RESRC_UNAVAIL;
		FUNC3(rcb->cm_ccb);
		FUNC0(rcb->dvp, "os_mem_alloc() failed; nseg = %d\n", nseg);
		FUNC4(rcb);
		FUNC6((union ccb *)rcb->cm_ccb);
		return;
	}

	rcb->nseg = nseg;
	for (int i = 0; i < nseg; i++) {
		rcb->sgt[i].addr = segs[i].ds_addr;
		rcb->sgt[i].len = segs[i].ds_len;
		rcb->sgt[i].flags = 0;
	}

	if (rcb->data_dir == SOP_DATA_DIR_FROM_DEVICE)
		FUNC1(softs->os_specific.pqi_buffer_dmat,
			rcb->cm_datamap, BUS_DMASYNC_PREREAD);
	if (rcb->data_dir == SOP_DATA_DIR_TO_DEVICE)
		FUNC1(softs->os_specific.pqi_buffer_dmat,
			rcb->cm_datamap, BUS_DMASYNC_PREWRITE);

	/* Call IO functions depending on pd or ld */
	rcb->status = REQUEST_PENDING;

	error = FUNC5(softs, rcb);

	if (error) {
		rcb->req_pending = false;
		rcb->cm_ccb->ccb_h.status = CAM_RESRC_UNAVAIL;
		FUNC3(rcb->cm_ccb);
		FUNC0(rcb->dvp, "Build IO failed, error = %d\n", error);
	   	FUNC4(rcb);
		FUNC6((union ccb *)rcb->cm_ccb);
		return;
	}
}