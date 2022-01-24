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
typedef  int /*<<< orphan*/  u_int16_t ;
struct AdapterControlBlock {int /*<<< orphan*/  srb_dmamap; int /*<<< orphan*/  srb_dmat; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCMSR_HBCMU_DRV2IOP_POSTQUEUE_THROTTLING ; 
 int ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR ; 
 int ARCMSR_HBC_ISR_THROTTLING_LEVEL ; 
 int ARCMSR_SRBREPLY_FLAG_ERROR_MODE1 ; 
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HBC_MessageUnit ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  host_int_status ; 
 int /*<<< orphan*/  inbound_doorbell ; 
 int /*<<< orphan*/  outbound_queueport_low ; 

__attribute__((used)) static void FUNC4(struct AdapterControlBlock *acb)
{
	u_int32_t flag_srb,throttling = 0;
	u_int16_t error;

	/*
	*****************************************************************************
	**               areca cdb command done
	*****************************************************************************
	*/
	FUNC3(acb->srb_dmat, acb->srb_dmamap, BUS_DMASYNC_POSTREAD|BUS_DMASYNC_POSTWRITE);
	do {
		flag_srb = FUNC0(HBC_MessageUnit, 0, outbound_queueport_low);
		if (flag_srb == 0xFFFFFFFF)
			break;
		/* check if command done with no error*/
		error = (flag_srb & ARCMSR_SRBREPLY_FLAG_ERROR_MODE1)?TRUE:FALSE;
		FUNC2(acb, flag_srb, error);
		throttling++;
		if(throttling == ARCMSR_HBC_ISR_THROTTLING_LEVEL) {
			FUNC1(HBC_MessageUnit, 0, inbound_doorbell,ARCMSR_HBCMU_DRV2IOP_POSTQUEUE_THROTTLING);
			throttling = 0;
		}
	} while(FUNC0(HBC_MessageUnit, 0, host_int_status) & ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR);
}