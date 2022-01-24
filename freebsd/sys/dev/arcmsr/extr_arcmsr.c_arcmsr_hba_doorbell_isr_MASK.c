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
struct AdapterControlBlock {int dummy; } ;

/* Variables and functions */
 int ARCMSR_OUTBOUND_IOP331_DATA_READ_OK ; 
 int ARCMSR_OUTBOUND_IOP331_DATA_WRITE_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HBA_MessageUnit ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  outbound_doorbell ; 

__attribute__((used)) static void FUNC4(struct AdapterControlBlock *acb)
{
	u_int32_t doorbell_status;

	/*
	*******************************************************************
	**  Maybe here we need to check wrqbuffer_lock is lock or not
	**  DOORBELL: din! don! 
	**  check if there are any mail need to pack from firmware
	*******************************************************************
	*/
	doorbell_status = FUNC0(HBA_MessageUnit, 0, outbound_doorbell);
	FUNC1(HBA_MessageUnit, 0, outbound_doorbell, doorbell_status); /* clear doorbell interrupt */
	if(doorbell_status & ARCMSR_OUTBOUND_IOP331_DATA_WRITE_OK) {
		FUNC3(acb);
	}
	if(doorbell_status & ARCMSR_OUTBOUND_IOP331_DATA_READ_OK) {
		FUNC2(acb);
	}
}