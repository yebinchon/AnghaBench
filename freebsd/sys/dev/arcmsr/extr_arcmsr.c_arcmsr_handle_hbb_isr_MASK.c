#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_int32_t ;
struct HBB_MessageUnit {int /*<<< orphan*/  drv2iop_doorbell; int /*<<< orphan*/  iop2drv_doorbell; } ;
struct AdapterControlBlock {int outbound_int_enable; scalar_t__ pmu; } ;

/* Variables and functions */
 int ARCMSR_DRV2IOP_END_OF_INTERRUPT ; 
 int ARCMSR_IOP2DRV_CDB_DONE ; 
 int ARCMSR_IOP2DRV_DATA_READ_OK ; 
 int ARCMSR_IOP2DRV_DATA_WRITE_OK ; 
 int ARCMSR_IOP2DRV_MESSAGE_CMD_DONE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC4 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC5 (struct AdapterControlBlock*) ; 

__attribute__((used)) static void FUNC6( struct AdapterControlBlock *acb)
{
	u_int32_t outbound_doorbell;
	struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;
	/*
	*********************************************
	**   check outbound intstatus 
	*********************************************
	*/
	outbound_doorbell = FUNC0(0, phbbmu->iop2drv_doorbell) & acb->outbound_int_enable;
	if(!outbound_doorbell) {
		/*it must be share irq*/
		return;
	}
	FUNC1(0, phbbmu->iop2drv_doorbell, ~outbound_doorbell); /* clear doorbell interrupt */
	FUNC0(0, phbbmu->iop2drv_doorbell);
	FUNC1(0, phbbmu->drv2iop_doorbell, ARCMSR_DRV2IOP_END_OF_INTERRUPT);
	/* MU ioctl transfer doorbell interrupts*/
	if(outbound_doorbell & ARCMSR_IOP2DRV_DATA_WRITE_OK) {
		FUNC5(acb);
	}
	if(outbound_doorbell & ARCMSR_IOP2DRV_DATA_READ_OK) {
		FUNC4(acb);
	}
	/* MU post queue interrupts*/
	if(outbound_doorbell & ARCMSR_IOP2DRV_CDB_DONE) {
		FUNC3(acb);
	}
	if(outbound_doorbell & ARCMSR_IOP2DRV_MESSAGE_CMD_DONE) {
		FUNC2(acb);
	}
}