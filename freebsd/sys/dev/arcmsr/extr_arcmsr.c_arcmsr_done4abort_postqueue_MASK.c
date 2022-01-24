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
struct HBB_MessageUnit {int* done_qbuffer; int /*<<< orphan*/  postq_index; int /*<<< orphan*/  doneq_index; int /*<<< orphan*/ * post_qbuffer; int /*<<< orphan*/  iop2drv_doorbell; } ;
struct AdapterControlBlock {int adapter_type; int outbound_int_enable; scalar_t__ pmu; } ;

/* Variables and functions */
#define  ACB_ADAPTER_TYPE_A 132 
#define  ACB_ADAPTER_TYPE_B 131 
#define  ACB_ADAPTER_TYPE_C 130 
#define  ACB_ADAPTER_TYPE_D 129 
#define  ACB_ADAPTER_TYPE_E 128 
 int /*<<< orphan*/  ARCMSR_DOORBELL_INT_CLEAR_PATTERN ; 
 int ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR ; 
 int ARCMSR_MAX_HBB_POSTQUEUE ; 
 int /*<<< orphan*/  ARCMSR_MAX_OUTSTANDING_CMD ; 
 int ARCMSR_SRBREPLY_FLAG_ERROR_MODE0 ; 
 int ARCMSR_SRBREPLY_FLAG_ERROR_MODE1 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HBA_MessageUnit ; 
 int /*<<< orphan*/  HBC_MessageUnit ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterControlBlock*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC5 (struct AdapterControlBlock*) ; 
 int host_int_status ; 
 int outbound_queueport ; 
 int outbound_queueport_low ; 

__attribute__((used)) static void FUNC6(struct AdapterControlBlock *acb)
{
	int i=0;
	u_int32_t flag_srb;
	u_int16_t error;

	switch (acb->adapter_type) {
	case ACB_ADAPTER_TYPE_A: {
			u_int32_t outbound_intstatus;

			/*clear and abort all outbound posted Q*/
			outbound_intstatus = FUNC0(HBA_MessageUnit, 0, outbound_intstatus) & acb->outbound_int_enable;
			FUNC1(HBA_MessageUnit, 0, outbound_intstatus, outbound_intstatus);/*clear interrupt*/
			while(((flag_srb=FUNC0(HBA_MessageUnit, 0, outbound_queueport)) != 0xFFFFFFFF) && (i++ < ARCMSR_MAX_OUTSTANDING_CMD)) {
				error = (flag_srb & ARCMSR_SRBREPLY_FLAG_ERROR_MODE0)?TRUE:FALSE;
				FUNC3(acb, flag_srb, error);
			}
		}
		break;
	case ACB_ADAPTER_TYPE_B: {
			struct HBB_MessageUnit *phbbmu=(struct HBB_MessageUnit *)acb->pmu;

			/*clear all outbound posted Q*/
			FUNC2(0, phbbmu->iop2drv_doorbell, ARCMSR_DOORBELL_INT_CLEAR_PATTERN); /* clear doorbell interrupt */
			for(i=0; i < ARCMSR_MAX_HBB_POSTQUEUE; i++) {
				if((flag_srb = phbbmu->done_qbuffer[i]) != 0) {
					phbbmu->done_qbuffer[i] = 0;
					error = (flag_srb & ARCMSR_SRBREPLY_FLAG_ERROR_MODE0)?TRUE:FALSE;
					FUNC3(acb, flag_srb, error);
				}
				phbbmu->post_qbuffer[i] = 0;
			}/*drain reply FIFO*/
			phbbmu->doneq_index = 0;
			phbbmu->postq_index = 0;
		}
		break;
	case ACB_ADAPTER_TYPE_C: {

			while((FUNC0(HBC_MessageUnit, 0, host_int_status) & ARCMSR_HBCMU_OUTBOUND_POSTQUEUE_ISR) && (i++ < ARCMSR_MAX_OUTSTANDING_CMD)) {
				flag_srb = FUNC0(HBC_MessageUnit, 0, outbound_queueport_low);
				error = (flag_srb & ARCMSR_SRBREPLY_FLAG_ERROR_MODE1) ? TRUE : FALSE;
				FUNC3(acb, flag_srb, error);
			}
		}
		break;
	case ACB_ADAPTER_TYPE_D: {
			FUNC4(acb);
		}
		break;
	case ACB_ADAPTER_TYPE_E: {
			FUNC5(acb);
		}
		break;
	}
}