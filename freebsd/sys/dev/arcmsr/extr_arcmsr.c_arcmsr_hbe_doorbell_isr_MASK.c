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
struct AdapterControlBlock {int in_doorbell; } ;

/* Variables and functions */
 int ARCMSR_HBEMU_IOP2DRV_DATA_READ_OK ; 
 int ARCMSR_HBEMU_IOP2DRV_DATA_WRITE_OK ; 
 int ARCMSR_HBEMU_IOP2DRV_MESSAGE_CMD_DONE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HBE_MessageUnit ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC4 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  host_int_status ; 
 int /*<<< orphan*/  iobound_doorbell ; 

__attribute__((used)) static void FUNC5(struct AdapterControlBlock *acb)
{
	u_int32_t doorbell_status, in_doorbell;
	
	/*
	*******************************************************************
	**  Maybe here we need to check wrqbuffer_lock is lock or not
	**  DOORBELL: din! don! 
	**  check if there are any mail need to pack from firmware
	*******************************************************************
	*/
	in_doorbell = FUNC0(HBE_MessageUnit, 0, iobound_doorbell);
	FUNC1(HBE_MessageUnit, 0, host_int_status, 0); /* clear doorbell interrupt */
	doorbell_status = in_doorbell ^ acb->in_doorbell;
	if(doorbell_status & ARCMSR_HBEMU_IOP2DRV_DATA_WRITE_OK) {
		FUNC4(acb);
	}
	if(doorbell_status & ARCMSR_HBEMU_IOP2DRV_DATA_READ_OK) {
		FUNC3(acb);
	}
	if(doorbell_status & ARCMSR_HBEMU_IOP2DRV_MESSAGE_CMD_DONE) {
		FUNC2(acb);    /* messenger of "driver to iop commands" */
	}
	acb->in_doorbell = in_doorbell;
}