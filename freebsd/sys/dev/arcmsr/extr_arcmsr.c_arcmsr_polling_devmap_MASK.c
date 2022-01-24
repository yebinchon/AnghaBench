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
struct HBB_MessageUnit {int /*<<< orphan*/  drv2iop_doorbell; } ;
struct AdapterControlBlock {int adapter_type; int acb_flags; int /*<<< orphan*/  devmap_callout; int /*<<< orphan*/  out_doorbell; scalar_t__ pmu; } ;

/* Variables and functions */
#define  ACB_ADAPTER_TYPE_A 132 
#define  ACB_ADAPTER_TYPE_B 131 
#define  ACB_ADAPTER_TYPE_C 130 
#define  ACB_ADAPTER_TYPE_D 129 
#define  ACB_ADAPTER_TYPE_E 128 
 int ACB_F_SCSISTOPADAPTER ; 
 int /*<<< orphan*/  ARCMSR_HBCMU_DRV2IOP_MESSAGE_CMD_DONE ; 
 int /*<<< orphan*/  ARCMSR_HBEMU_DRV2IOP_MESSAGE_CMD_DONE ; 
 int /*<<< orphan*/  ARCMSR_INBOUND_MESG0_GET_CONFIG ; 
 int /*<<< orphan*/  ARCMSR_MESSAGE_GET_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HBA_MessageUnit ; 
 int /*<<< orphan*/  HBC_MessageUnit ; 
 int /*<<< orphan*/  HBD_MessageUnit ; 
 int /*<<< orphan*/  HBE_MessageUnit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void (*) (void*),struct AdapterControlBlock*) ; 
 int hz ; 
 int /*<<< orphan*/  inbound_doorbell ; 
 int /*<<< orphan*/  inbound_msgaddr0 ; 
 int /*<<< orphan*/  iobound_doorbell ; 

__attribute__((used)) static void	FUNC3(void *arg)
{
	struct AdapterControlBlock *acb = (struct AdapterControlBlock *)arg;
	switch (acb->adapter_type) {
	case ACB_ADAPTER_TYPE_A:
		FUNC0(HBA_MessageUnit, 0, inbound_msgaddr0, ARCMSR_INBOUND_MESG0_GET_CONFIG);
		break;

    	case ACB_ADAPTER_TYPE_B: {
			struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;
			FUNC1(0, phbbmu->drv2iop_doorbell, ARCMSR_MESSAGE_GET_CONFIG);
		}
		break;

	case ACB_ADAPTER_TYPE_C:
		FUNC0(HBC_MessageUnit, 0, inbound_msgaddr0, ARCMSR_INBOUND_MESG0_GET_CONFIG);
		FUNC0(HBC_MessageUnit, 0, inbound_doorbell, ARCMSR_HBCMU_DRV2IOP_MESSAGE_CMD_DONE);
		break;

	case ACB_ADAPTER_TYPE_D:
		FUNC0(HBD_MessageUnit, 0, inbound_msgaddr0, ARCMSR_INBOUND_MESG0_GET_CONFIG);
		break;

    	case ACB_ADAPTER_TYPE_E:
		FUNC0(HBE_MessageUnit, 0, inbound_msgaddr0, ARCMSR_INBOUND_MESG0_GET_CONFIG);
		acb->out_doorbell ^= ARCMSR_HBEMU_DRV2IOP_MESSAGE_CMD_DONE;
		FUNC0(HBE_MessageUnit, 0, iobound_doorbell, acb->out_doorbell);
	    	break;
	}

	if((acb->acb_flags & ACB_F_SCSISTOPADAPTER) == 0)
	{
		FUNC2(&acb->devmap_callout, 5 * hz, arcmsr_polling_devmap, acb);	/* polling per 5 seconds */
	}
}