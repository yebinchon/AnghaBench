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
struct AdapterControlBlock {int adapter_type; int /*<<< orphan*/  out_doorbell; scalar_t__ pmu; } ;

/* Variables and functions */
#define  ACB_ADAPTER_TYPE_A 132 
#define  ACB_ADAPTER_TYPE_B 131 
#define  ACB_ADAPTER_TYPE_C 130 
#define  ACB_ADAPTER_TYPE_D 129 
#define  ACB_ADAPTER_TYPE_E 128 
 int /*<<< orphan*/  ARCMSR_DRV2IOP_DATA_READ_OK ; 
 int /*<<< orphan*/  ARCMSR_HBCMU_DRV2IOP_DATA_READ_OK ; 
 int /*<<< orphan*/  ARCMSR_HBDMU_DRV2IOP_DATA_OUT_READ ; 
 int /*<<< orphan*/  ARCMSR_HBEMU_DRV2IOP_DATA_READ_OK ; 
 int /*<<< orphan*/  ARCMSR_INBOUND_DRIVER_DATA_READ_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HBA_MessageUnit ; 
 int /*<<< orphan*/  HBC_MessageUnit ; 
 int /*<<< orphan*/  HBD_MessageUnit ; 
 int /*<<< orphan*/  HBE_MessageUnit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inbound_doorbell ; 
 int /*<<< orphan*/  iobound_doorbell ; 

__attribute__((used)) static void FUNC2(struct AdapterControlBlock *acb)
{
	switch (acb->adapter_type) {
	case ACB_ADAPTER_TYPE_A: {
			/* let IOP know data has been read */
			FUNC0(HBA_MessageUnit, 0, inbound_doorbell, ARCMSR_INBOUND_DRIVER_DATA_READ_OK);
		}
		break;
	case ACB_ADAPTER_TYPE_B: {
			struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;
			/* let IOP know data has been read */
			FUNC1(0, phbbmu->drv2iop_doorbell, ARCMSR_DRV2IOP_DATA_READ_OK);
		}
		break;
	case ACB_ADAPTER_TYPE_C: {
			/* let IOP know data has been read */
			FUNC0(HBC_MessageUnit, 0, inbound_doorbell, ARCMSR_HBCMU_DRV2IOP_DATA_READ_OK);
		}
		break;
	case ACB_ADAPTER_TYPE_D: {
			/* let IOP know data has been read */
			FUNC0(HBD_MessageUnit, 0, inbound_doorbell, ARCMSR_HBDMU_DRV2IOP_DATA_OUT_READ);
		}
		break;
	case ACB_ADAPTER_TYPE_E: {
			/* let IOP know data has been read */
			acb->out_doorbell ^= ARCMSR_HBEMU_DRV2IOP_DATA_READ_OK;
			FUNC0(HBE_MessageUnit, 0, iobound_doorbell, acb->out_doorbell);
		}
		break;
	}
}