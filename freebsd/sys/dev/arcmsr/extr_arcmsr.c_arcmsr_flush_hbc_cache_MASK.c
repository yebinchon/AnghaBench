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
struct AdapterControlBlock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCMSR_HBCMU_DRV2IOP_MESSAGE_CMD_DONE ; 
 int /*<<< orphan*/  ARCMSR_INBOUND_MESG0_FLUSH_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HBC_MessageUnit ; 
 scalar_t__ FUNC1 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  inbound_doorbell ; 
 int /*<<< orphan*/  inbound_msgaddr0 ; 

__attribute__((used)) static void FUNC2(struct AdapterControlBlock *acb)
{
	int retry_count = 30;/* enlarge wait flush adapter cache time: 10 minute */

	FUNC0(HBC_MessageUnit, 0, inbound_msgaddr0, ARCMSR_INBOUND_MESG0_FLUSH_CACHE);
	FUNC0(HBC_MessageUnit, 0, inbound_doorbell, ARCMSR_HBCMU_DRV2IOP_MESSAGE_CMD_DONE);
	do {
		if(FUNC1(acb)) {
			break;
		} else {
			retry_count--;
		}
	}while(retry_count != 0);
}