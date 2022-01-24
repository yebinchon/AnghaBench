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
struct HBB_MessageUnit {int /*<<< orphan*/  drv2iop_doorbell; int /*<<< orphan*/  iop2drv_doorbell; } ;
struct AdapterControlBlock {int adapter_type; int pci_unit; scalar_t__ pmu; } ;

/* Variables and functions */
#define  ACB_ADAPTER_TYPE_A 132 
#define  ACB_ADAPTER_TYPE_B 131 
#define  ACB_ADAPTER_TYPE_C 130 
#define  ACB_ADAPTER_TYPE_D 129 
#define  ACB_ADAPTER_TYPE_E 128 
 int /*<<< orphan*/  ARCMSR_DRV2IOP_END_OF_INTERRUPT ; 
 int ARCMSR_HBCMU_MESSAGE_FIRMWARE_OK ; 
 int ARCMSR_HBDMU_MESSAGE_FIRMWARE_OK ; 
 int ARCMSR_HBEMU_MESSAGE_FIRMWARE_OK ; 
 int ARCMSR_MESSAGE_FIRMWARE_OK ; 
 int ARCMSR_OUTBOUND_MESG1_FIRMWARE_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HBA_MessageUnit ; 
 int /*<<< orphan*/  HBC_MessageUnit ; 
 int /*<<< orphan*/  HBD_MessageUnit ; 
 int /*<<< orphan*/  HBE_MessageUnit ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outbound_msgaddr1 ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static void FUNC5( struct AdapterControlBlock *acb)
{
	int	timeout=0;

	switch (acb->adapter_type) {
	case ACB_ADAPTER_TYPE_A: {
			while ((FUNC0(HBA_MessageUnit, 0, outbound_msgaddr1) & ARCMSR_OUTBOUND_MESG1_FIRMWARE_OK) == 0)
			{
				if (timeout++ > 2000) /* (2000*15)/1000 = 30 sec */
				{
					FUNC4( "arcmsr%d:timed out waiting for firmware \n", acb->pci_unit);
					return;
				}
				FUNC2(15000); /* wait 15 milli-seconds */
			}
		}
		break;
	case ACB_ADAPTER_TYPE_B: {
			struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;
			while ((FUNC1(0, phbbmu->iop2drv_doorbell) & ARCMSR_MESSAGE_FIRMWARE_OK) == 0)
			{
				if (timeout++ > 2000) /* (2000*15)/1000 = 30 sec */
				{
					FUNC4( "arcmsr%d: timed out waiting for firmware \n", acb->pci_unit);
					return;
				}
				FUNC2(15000); /* wait 15 milli-seconds */
			}
			FUNC3(0, phbbmu->drv2iop_doorbell, ARCMSR_DRV2IOP_END_OF_INTERRUPT);
		}
		break;
	case ACB_ADAPTER_TYPE_C: {
			while ((FUNC0(HBC_MessageUnit, 0, outbound_msgaddr1) & ARCMSR_HBCMU_MESSAGE_FIRMWARE_OK) == 0)
			{
				if (timeout++ > 2000) /* (2000*15)/1000 = 30 sec */
				{
					FUNC4( "arcmsr%d:timed out waiting for firmware ready\n", acb->pci_unit);
					return;
				}
				FUNC2(15000); /* wait 15 milli-seconds */
			}
		}
		break;
	case ACB_ADAPTER_TYPE_D: {
			while ((FUNC0(HBD_MessageUnit, 0, outbound_msgaddr1) & ARCMSR_HBDMU_MESSAGE_FIRMWARE_OK) == 0)
			{
				if (timeout++ > 2000) /* (2000*15)/1000 = 30 sec */
				{
					FUNC4( "arcmsr%d:timed out waiting for firmware ready\n", acb->pci_unit);
					return;
				}
				FUNC2(15000); /* wait 15 milli-seconds */
			}
		}
		break;
	case ACB_ADAPTER_TYPE_E: {
			while ((FUNC0(HBE_MessageUnit, 0, outbound_msgaddr1) & ARCMSR_HBEMU_MESSAGE_FIRMWARE_OK) == 0)
			{
				if (timeout++ > 4000) /* (4000*15)/1000 = 60 sec */
				{
					FUNC4( "arcmsr%d:timed out waiting for firmware ready\n", acb->pci_unit);
					return;
				}
				FUNC2(15000); /* wait 15 milli-seconds */
			}
		}
		break;
	}
}