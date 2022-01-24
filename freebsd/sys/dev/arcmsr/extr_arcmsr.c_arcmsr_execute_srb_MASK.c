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
struct TYPE_2__ {int target_id; int target_lun; int status; int timeout; } ;
union ccb {TYPE_1__ ccb_h; int /*<<< orphan*/  csio; } ;
typedef  int u_int8_t ;
struct CommandControlBlock {int /*<<< orphan*/  srb_flags; int /*<<< orphan*/  ccb_callout; int /*<<< orphan*/  dm_segs_dmamap; union ccb* pccb; scalar_t__ acb; } ;
struct AdapterControlBlock {int pci_unit; int acb_flags; scalar_t__** devstate; scalar_t__ srboutstandingcount; scalar_t__ maxOutstanding; int /*<<< orphan*/  psim; int /*<<< orphan*/  dm_segs_dmat; int /*<<< orphan*/  pktRequestCount; } ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;

/* Variables and functions */
 int ACB_F_BUS_RESET ; 
 int ACB_F_CAM_DEV_QFRZN ; 
 int ARCMSR_MAX_SG_ENTRIES ; 
 int ARCMSR_TIMEOUT_DELAY ; 
 scalar_t__ ARECA_RAID_GONE ; 
 int CAM_DEV_NOT_THERE ; 
 int CAM_REQUEUE_REQ ; 
 int CAM_REQ_INPROG ; 
 int CAM_REQ_TOO_BIG ; 
 int CAM_SCSI_BUS_RESET ; 
 int CAM_SIM_QUEUED ; 
 int CAM_STATUS_MASK ; 
 int CAM_TIME_INFINITY ; 
 int EFBIG ; 
 int SBT_1MS ; 
 int /*<<< orphan*/  SRB_FLAG_TIMER_START ; 
 int /*<<< orphan*/  FUNC0 (struct CommandControlBlock*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*,struct CommandControlBlock*) ; 
 int /*<<< orphan*/  FUNC3 (struct CommandControlBlock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arcmsr_srb_timeout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct CommandControlBlock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(void *arg, bus_dma_segment_t *dm_segs, int nseg, int error)
{
	struct CommandControlBlock *srb = (struct CommandControlBlock *)arg;
	struct AdapterControlBlock *acb = (struct AdapterControlBlock *)srb->acb;
	union ccb *pccb;
	int target, lun; 

	pccb = srb->pccb;
	target = pccb->ccb_h.target_id;
	lun = pccb->ccb_h.target_lun;
	acb->pktRequestCount++;
	if(error != 0) {
		if(error != EFBIG) {
			FUNC6("arcmsr%d: unexpected error %x"
				" returned from 'bus_dmamap_load' \n"
				, acb->pci_unit, error);
		}
		if((pccb->ccb_h.status & CAM_STATUS_MASK) == CAM_REQ_INPROG) {
			pccb->ccb_h.status |= CAM_REQ_TOO_BIG;
		}
		FUNC3(srb, 0);
		return;
	}
	if(nseg > ARCMSR_MAX_SG_ENTRIES) {
		pccb->ccb_h.status |= CAM_REQ_TOO_BIG;
		FUNC3(srb, 0);
		return;
	}
	if(acb->acb_flags & ACB_F_BUS_RESET) {
		FUNC6("arcmsr%d: bus reset and return busy \n", acb->pci_unit);
		pccb->ccb_h.status |= CAM_SCSI_BUS_RESET;
		FUNC3(srb, 0);
		return;
	}
	if(acb->devstate[target][lun] == ARECA_RAID_GONE) {
		u_int8_t block_cmd, cmd;

		cmd = FUNC7(&pccb->csio)[0];
		block_cmd = cmd & 0x0f;
		if(block_cmd == 0x08 || block_cmd == 0x0a) {
			FUNC6("arcmsr%d:block 'read/write' command "
				"with gone raid volume Cmd=0x%2x, TargetId=%d, Lun=%d \n"
				, acb->pci_unit, cmd, target, lun);
			pccb->ccb_h.status |= CAM_DEV_NOT_THERE;
			FUNC3(srb, 0);
			return;
		}
	}
	if((pccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_INPROG) {
		if(nseg != 0) {
			FUNC4(acb->dm_segs_dmat, srb->dm_segs_dmamap);
		}
		FUNC3(srb, 0);
		return;
	}
	if(acb->srboutstandingcount >= acb->maxOutstanding) {
		if((acb->acb_flags & ACB_F_CAM_DEV_QFRZN) == 0)
		{
			FUNC8(acb->psim, 1);
			acb->acb_flags |= ACB_F_CAM_DEV_QFRZN;
		}
		pccb->ccb_h.status &= ~CAM_SIM_QUEUED;
		pccb->ccb_h.status |= CAM_REQUEUE_REQ;
		FUNC3(srb, 0);
		return;
	}
	pccb->ccb_h.status |= CAM_SIM_QUEUED;
	FUNC0(srb, dm_segs, nseg);
	FUNC2(acb, srb);
	if (pccb->ccb_h.timeout != CAM_TIME_INFINITY)
	{
		FUNC1(&srb->ccb_callout);
		FUNC5(&srb->ccb_callout, SBT_1MS *
		    (pccb->ccb_h.timeout + (ARCMSR_TIMEOUT_DELAY * 1000)), 0,
		    arcmsr_srb_timeout, srb, 0);
		srb->srb_flags |= SRB_FLAG_TIMER_START;
	}
}