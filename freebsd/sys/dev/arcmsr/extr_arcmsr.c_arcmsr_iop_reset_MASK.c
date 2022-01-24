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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  size_t u_int32_t ;
struct CommandControlBlock {scalar_t__ srb_state; TYPE_2__* pccb; } ;
struct AdapterControlBlock {scalar_t__ srboutstandingcount; int pci_unit; scalar_t__ pktReturnCount; scalar_t__ pktRequestCount; scalar_t__ workingsrb_startindex; scalar_t__ workingsrb_doneindex; struct CommandControlBlock** psrb_pool; } ;
struct TYPE_3__ {int target_id; scalar_t__ target_lun; int /*<<< orphan*/  status; } ;
struct TYPE_4__ {TYPE_1__ ccb_h; } ;

/* Variables and functions */
 size_t ARCMSR_MAX_FREESRB_NUM ; 
 scalar_t__ ARCMSR_SRB_ABORTED ; 
 scalar_t__ ARCMSR_SRB_START ; 
 int /*<<< orphan*/  CAM_REQ_ABORTED ; 
 int /*<<< orphan*/  FUNC0 (struct AdapterControlBlock*) ; 
 size_t FUNC1 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterControlBlock*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct CommandControlBlock*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int /*<<< orphan*/ ,struct CommandControlBlock*) ; 

__attribute__((used)) static void FUNC6(struct AdapterControlBlock *acb)
{
	struct CommandControlBlock *srb;
	u_int32_t intmask_org;
	u_int32_t i=0;

	if(acb->srboutstandingcount>0) {
		/* disable all outbound interrupt */
		intmask_org = FUNC1(acb);
		/*clear and abort all outbound posted Q*/
		FUNC2(acb);
		/* talk to iop 331 outstanding command aborted*/
		FUNC0(acb);
		for(i=0; i < ARCMSR_MAX_FREESRB_NUM; i++) {
			srb = acb->psrb_pool[i];
			if(srb->srb_state == ARCMSR_SRB_START) {
				srb->srb_state = ARCMSR_SRB_ABORTED;
				srb->pccb->ccb_h.status |= CAM_REQ_ABORTED;
				FUNC4(srb, 1);
				FUNC5("arcmsr%d: scsi id=%d lun=%jx srb='%p' aborted\n"
						, acb->pci_unit, srb->pccb->ccb_h.target_id
						, (uintmax_t)srb->pccb->ccb_h.target_lun, srb);
			}
		}
		/* enable all outbound interrupt */
		FUNC3(acb, intmask_org);
	}
	acb->srboutstandingcount = 0;
	acb->workingsrb_doneindex = 0;
	acb->workingsrb_startindex = 0;
	acb->pktRequestCount = 0;
	acb->pktReturnCount = 0;
}