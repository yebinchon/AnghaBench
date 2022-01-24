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
struct AdapterControlBlock {int pci_unit; scalar_t__ pmu; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCMSR_MESSAGE_ABORT_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void FUNC3(struct AdapterControlBlock *acb)
{
	struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;
	FUNC0(0, phbbmu->drv2iop_doorbell, ARCMSR_MESSAGE_ABORT_CMD);
	if(!FUNC1(acb)) {
		FUNC2("arcmsr%d: wait 'abort all outstanding command' timeout \n", acb->pci_unit);
	}
}