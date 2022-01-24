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
typedef  int /*<<< orphan*/  u_int32_t ;
struct CommandControlBlock {scalar_t__ srb_state; TYPE_2__* pccb; } ;
struct AdapterControlBlock {int pci_unit; struct CommandControlBlock** psrb_pool; } ;
struct TYPE_3__ {int target_id; int target_lun; int /*<<< orphan*/  status; } ;
struct TYPE_4__ {TYPE_1__ ccb_h; } ;

/* Variables and functions */
 int ARCMSR_MAX_FREESRB_NUM ; 
 scalar_t__ ARCMSR_SRB_ABORTED ; 
 scalar_t__ ARCMSR_SRB_START ; 
 int /*<<< orphan*/  CAM_REQ_ABORTED ; 
 int /*<<< orphan*/  FUNC0 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterControlBlock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct CommandControlBlock*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,struct CommandControlBlock*) ; 

__attribute__((used)) static void FUNC4(struct AdapterControlBlock *acb, int target, int lun)
{
	struct CommandControlBlock *srb;
	u_int32_t intmask_org;
	int i;

	/* disable all outbound interrupts */
	intmask_org = FUNC0(acb);
	for (i = 0; i < ARCMSR_MAX_FREESRB_NUM; i++)
	{
		srb = acb->psrb_pool[i];
		if (srb->srb_state == ARCMSR_SRB_START)
		{
			if((target == srb->pccb->ccb_h.target_id) && (lun == srb->pccb->ccb_h.target_lun))
			{
				srb->srb_state = ARCMSR_SRB_ABORTED;
				srb->pccb->ccb_h.status |= CAM_REQ_ABORTED;
				FUNC2(srb, 1);
				FUNC3("arcmsr%d: abort scsi id %d lun %d srb=%p \n", acb->pci_unit, target, lun, srb);
			}
		}
	}
	/* enable outbound Post Queue, outbound doorbell Interrupt */
	FUNC1(acb, intmask_org);
}