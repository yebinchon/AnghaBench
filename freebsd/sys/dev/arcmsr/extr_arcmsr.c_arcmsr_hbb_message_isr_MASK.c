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
typedef  scalar_t__ u_int32_t ;
struct HBB_MessageUnit {int /*<<< orphan*/  iop2drv_doorbell; } ;
struct AdapterControlBlock {scalar_t__ pmu; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCMSR_MESSAGE_INT_CLEAR_PATTERN ; 
 scalar_t__ ARCMSR_SIGNATURE_GET_CONFIG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HBB_RWBUFFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/ * msgcode_rwbuffer ; 

__attribute__((used)) static void FUNC3(struct AdapterControlBlock *acb) {
	u_int32_t outbound_message;
	struct HBB_MessageUnit *phbbmu = (struct HBB_MessageUnit *)acb->pmu;

	/* clear interrupts */
	FUNC1(0, phbbmu->iop2drv_doorbell, ARCMSR_MESSAGE_INT_CLEAR_PATTERN);
	outbound_message = FUNC0(HBB_RWBUFFER, 1, msgcode_rwbuffer[0]);
	if (outbound_message == ARCMSR_SIGNATURE_GET_CONFIG)
		FUNC2( acb );
}