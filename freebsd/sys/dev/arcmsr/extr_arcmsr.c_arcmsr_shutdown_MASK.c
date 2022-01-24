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
typedef  size_t u_int32_t ;
struct CommandControlBlock {scalar_t__ srb_state; TYPE_2__* pccb; } ;
struct AdapterControlBlock {scalar_t__ srboutstandingcount; int /*<<< orphan*/  isr_lock; scalar_t__ pktReturnCount; scalar_t__ pktRequestCount; scalar_t__ workingsrb_startindex; scalar_t__ workingsrb_doneindex; struct CommandControlBlock** psrb_pool; int /*<<< orphan*/  acb_flags; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int /*<<< orphan*/  status; } ;
struct TYPE_4__ {TYPE_1__ ccb_h; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACB_F_IOP_INITED ; 
 int /*<<< orphan*/  ACB_F_SCSISTOPADAPTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t ARCMSR_MAX_FREESRB_NUM ; 
 scalar_t__ ARCMSR_SRB_ABORTED ; 
 scalar_t__ ARCMSR_SRB_START ; 
 int /*<<< orphan*/  CAM_REQ_ABORTED ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 
 size_t FUNC3 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC4 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC5 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC6 (struct CommandControlBlock*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct AdapterControlBlock*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(device_t dev)
{
	u_int32_t  i;
	u_int32_t intmask_org;
	struct CommandControlBlock *srb;
	struct AdapterControlBlock *acb=(struct AdapterControlBlock *)FUNC8(dev);

	/* stop adapter background rebuild */
	FUNC0(&acb->isr_lock);
	/* disable all outbound interrupt */
	intmask_org = FUNC3(acb);
	FUNC7(acb);
	FUNC5(acb);
	/* abort all outstanding command */
	acb->acb_flags |= ACB_F_SCSISTOPADAPTER;
	acb->acb_flags &= ~ACB_F_IOP_INITED;
	if(acb->srboutstandingcount != 0) {
		/*clear and abort all outbound posted Q*/
		FUNC4(acb);
		/* talk to iop 331 outstanding command aborted*/
		FUNC2(acb);
		for(i=0; i < ARCMSR_MAX_FREESRB_NUM; i++) {
			srb = acb->psrb_pool[i];
			if(srb->srb_state == ARCMSR_SRB_START) {
				srb->srb_state = ARCMSR_SRB_ABORTED;
				srb->pccb->ccb_h.status |= CAM_REQ_ABORTED;
				FUNC6(srb, 1);
			}
		}
	}
	acb->srboutstandingcount = 0;
	acb->workingsrb_doneindex = 0;
	acb->workingsrb_startindex = 0;
	acb->pktRequestCount = 0;
	acb->pktReturnCount = 0;
	FUNC1(&acb->isr_lock);
	return (0);
}