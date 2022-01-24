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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int u_int32_t ;
typedef  size_t u_int16_t ;
struct CommandControlBlock {scalar_t__ srb_state; TYPE_3__* pccb; struct AdapterControlBlock* acb; } ;
struct AdapterControlBlock {int doneq_index; scalar_t__ srboutstandingcount; int completionQ_entry; int pci_unit; TYPE_1__* pCompletionQ; struct CommandControlBlock** psrb_pool; int /*<<< orphan*/  srb_dmamap; int /*<<< orphan*/  srb_dmat; } ;
struct TYPE_5__ {int target_id; int /*<<< orphan*/  status; scalar_t__ target_lun; } ;
struct TYPE_6__ {TYPE_2__ ccb_h; } ;
struct TYPE_4__ {size_t cmdSMID; int cmdFlag; } ;

/* Variables and functions */
 int ARCMSR_SRBREPLY_FLAG_ERROR_MODE1 ; 
 scalar_t__ ARCMSR_SRB_ABORTED ; 
 scalar_t__ ARCMSR_SRB_START ; 
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  CAM_REQ_ABORTED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 size_t FALSE ; 
 int /*<<< orphan*/  HBE_MessageUnit ; 
 size_t TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterControlBlock*,struct CommandControlBlock*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct CommandControlBlock*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  reply_post_producer_index ; 

__attribute__((used)) static void FUNC7(struct AdapterControlBlock *acb, struct CommandControlBlock *poll_srb)
{
	struct CommandControlBlock *srb;
	u_int32_t poll_srb_done=0, poll_count=0, doneq_index;
	u_int16_t	error, cmdSMID;
	
polling_ccb_retry:
	poll_count++;
	FUNC5(acb->srb_dmat, acb->srb_dmamap, BUS_DMASYNC_POSTREAD|BUS_DMASYNC_POSTWRITE);
	while(1) {
		doneq_index = acb->doneq_index;
		if((FUNC0(HBE_MessageUnit, 0, reply_post_producer_index) & 0xFFFF) == doneq_index) {
			if(poll_srb_done) {
				break;/*chip FIFO no ccb for completion already*/
			} else {
				FUNC2(25000);
			    if ((poll_count > 100) && (poll_srb != NULL)) {
					break;
				}
			    if (acb->srboutstandingcount == 0) {
				    break;
			    }
				goto polling_ccb_retry;
			}
		}
		cmdSMID = acb->pCompletionQ[doneq_index].cmdSMID;
		doneq_index++;
		if (doneq_index >= acb->completionQ_entry)
			doneq_index = 0;
		acb->doneq_index = doneq_index;
		srb = acb->psrb_pool[cmdSMID];
		error = (acb->pCompletionQ[doneq_index].cmdFlag & ARCMSR_SRBREPLY_FLAG_ERROR_MODE1) ? TRUE : FALSE;
		if (poll_srb != NULL)
			poll_srb_done = (srb == poll_srb) ? 1:0;
		if((srb->acb != acb) || (srb->srb_state != ARCMSR_SRB_START)) {
			if(srb->srb_state == ARCMSR_SRB_ABORTED) {
				FUNC6("arcmsr%d: scsi id=%d lun=%jx srb='%p'poll command abort successfully \n"
						, acb->pci_unit, srb->pccb->ccb_h.target_id, (uintmax_t)srb->pccb->ccb_h.target_lun, srb);
				srb->pccb->ccb_h.status |= CAM_REQ_ABORTED;
				FUNC4(srb, 1);
				continue;
			}
			FUNC6("arcmsr%d: polling get an illegal srb command done srb='%p'srboutstandingcount=%d \n"
					, acb->pci_unit, srb, acb->srboutstandingcount);
			continue;
		}
		FUNC3(acb, srb, error);
	}	/*drain reply FIFO*/
	FUNC1(HBE_MessageUnit, 0, reply_post_producer_index, doneq_index);
}