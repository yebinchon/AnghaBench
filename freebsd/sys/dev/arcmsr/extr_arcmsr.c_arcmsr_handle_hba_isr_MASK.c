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
struct AdapterControlBlock {int outbound_int_enable; } ;

/* Variables and functions */
 int ARCMSR_MU_OUTBOUND_DOORBELL_INT ; 
 int ARCMSR_MU_OUTBOUND_MESSAGE0_INT ; 
 int ARCMSR_MU_OUTBOUND_POSTQUEUE_INT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HBA_MessageUnit ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC4 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  outbound_intstatus ; 

__attribute__((used)) static void FUNC5( struct AdapterControlBlock *acb)
{
	u_int32_t outbound_intStatus;
	/*
	*********************************************
	**   check outbound intstatus 
	*********************************************
	*/
	outbound_intStatus = FUNC0(HBA_MessageUnit, 0, outbound_intstatus) & acb->outbound_int_enable;
	if(!outbound_intStatus) {
		/*it must be share irq*/
		return;
	}
	FUNC1(HBA_MessageUnit, 0, outbound_intstatus, outbound_intStatus); /*clear interrupt*/
	/* MU doorbell interrupts*/
	if(outbound_intStatus & ARCMSR_MU_OUTBOUND_DOORBELL_INT) {
		FUNC2(acb);
	}
	/* MU post queue interrupts*/
	if(outbound_intStatus & ARCMSR_MU_OUTBOUND_POSTQUEUE_INT) {
		FUNC4(acb);
	}
	if(outbound_intStatus & ARCMSR_MU_OUTBOUND_MESSAGE0_INT) {
		FUNC3(acb);
	}
}