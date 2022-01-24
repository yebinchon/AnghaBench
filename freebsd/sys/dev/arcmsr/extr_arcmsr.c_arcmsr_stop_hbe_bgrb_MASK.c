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
struct AdapterControlBlock {int pci_unit; int /*<<< orphan*/  out_doorbell; int /*<<< orphan*/  acb_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACB_F_MSG_START_BGRB ; 
 int /*<<< orphan*/  ARCMSR_HBEMU_DRV2IOP_MESSAGE_CMD_DONE ; 
 int /*<<< orphan*/  ARCMSR_INBOUND_MESG0_STOP_BGRB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HBE_MessageUnit ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  inbound_msgaddr0 ; 
 int /*<<< orphan*/  iobound_doorbell ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void FUNC3(struct AdapterControlBlock *acb)
{
	acb->acb_flags &= ~ACB_F_MSG_START_BGRB;
	FUNC0(HBE_MessageUnit, 0, inbound_msgaddr0, ARCMSR_INBOUND_MESG0_STOP_BGRB);
	acb->out_doorbell ^= ARCMSR_HBEMU_DRV2IOP_MESSAGE_CMD_DONE;
	FUNC0(HBE_MessageUnit, 0, iobound_doorbell, acb->out_doorbell);
	if(!FUNC1(acb)) {
		FUNC2("arcmsr%d: wait 'stop adapter background rebulid' timeout \n", acb->pci_unit);
	}
}