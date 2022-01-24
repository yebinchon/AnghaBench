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
struct AdapterControlBlock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE_DOORBELL_CLEAR ; 
 scalar_t__ ARCMSR_SIGNATURE_GET_CONFIG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HBC_MessageUnit ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/ * msgcode_rwbuffer ; 
 int /*<<< orphan*/  outbound_doorbell_clear ; 

__attribute__((used)) static void FUNC3(struct AdapterControlBlock *acb) {
	u_int32_t outbound_message;

	FUNC1(HBC_MessageUnit, 0, outbound_doorbell_clear, ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE_DOORBELL_CLEAR);
	outbound_message = FUNC0(HBC_MessageUnit, 0, msgcode_rwbuffer[0]);
	if (outbound_message == ARCMSR_SIGNATURE_GET_CONFIG)
		FUNC2( acb );
}