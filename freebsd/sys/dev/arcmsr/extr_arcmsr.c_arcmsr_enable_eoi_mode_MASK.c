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
struct AdapterControlBlock {scalar_t__ adapter_type; int pci_unit; scalar_t__ pmu; } ;

/* Variables and functions */
 scalar_t__ ACB_ADAPTER_TYPE_B ; 
 int /*<<< orphan*/  ARCMSR_MESSAGE_ACTIVE_EOI_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void FUNC3(struct AdapterControlBlock *acb)
{
	if (acb->adapter_type == ACB_ADAPTER_TYPE_B)
	{
		struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;
		FUNC0(0, phbbmu->drv2iop_doorbell, ARCMSR_MESSAGE_ACTIVE_EOI_MODE);
		if(!FUNC1(acb)) {
			FUNC2( "arcmsr%d: 'iop enable eoi mode' timeout \n", acb->pci_unit);
			return;
		}
	}
}