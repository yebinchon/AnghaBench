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
 int ARCMSR_HBEMU_OUTBOUND_DOORBELL_ISR ; 
 int ARCMSR_HBEMU_OUTBOUND_POSTQUEUE_ISR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HBE_MessageUnit ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  host_int_status ; 

__attribute__((used)) static void FUNC3( struct AdapterControlBlock *acb)
{
	u_int32_t host_interrupt_status;
	/*
	*********************************************
	**   check outbound intstatus 
	*********************************************
	*/
	host_interrupt_status = FUNC0(HBE_MessageUnit, 0, host_int_status) &
		(ARCMSR_HBEMU_OUTBOUND_POSTQUEUE_ISR |
		ARCMSR_HBEMU_OUTBOUND_DOORBELL_ISR);
	if(!host_interrupt_status) {
		/*it must be share irq*/
		return;
	}
	do {
		/* MU doorbell interrupts*/
		if(host_interrupt_status & ARCMSR_HBEMU_OUTBOUND_DOORBELL_ISR) {
			FUNC1(acb);
		}
		/* MU post queue interrupts*/
		if(host_interrupt_status & ARCMSR_HBEMU_OUTBOUND_POSTQUEUE_ISR) {
			FUNC2(acb);
		}
		host_interrupt_status = FUNC0(HBE_MessageUnit, 0, host_int_status);
	} while (host_interrupt_status & (ARCMSR_HBEMU_OUTBOUND_POSTQUEUE_ISR | ARCMSR_HBEMU_OUTBOUND_DOORBELL_ISR));
}