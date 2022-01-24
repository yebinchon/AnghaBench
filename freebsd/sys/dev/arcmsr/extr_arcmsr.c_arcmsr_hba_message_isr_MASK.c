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
 int /*<<< orphan*/  ARCMSR_MU_OUTBOUND_MESSAGE0_INT ; 
 scalar_t__ ARCMSR_SIGNATURE_GET_CONFIG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HBA_MessageUnit ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/ * msgcode_rwbuffer ; 
 int /*<<< orphan*/  outbound_intstatus ; 

__attribute__((used)) static void FUNC3(struct AdapterControlBlock *acb) {
	u_int32_t outbound_message;

	FUNC1(HBA_MessageUnit, 0, outbound_intstatus, ARCMSR_MU_OUTBOUND_MESSAGE0_INT);
	outbound_message = FUNC0(HBA_MessageUnit, 0, msgcode_rwbuffer[0]);
	if (outbound_message == ARCMSR_SIGNATURE_GET_CONFIG)
		FUNC2( acb );
}