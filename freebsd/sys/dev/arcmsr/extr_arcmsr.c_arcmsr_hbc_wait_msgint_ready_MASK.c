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
typedef  int u_int8_t ;
typedef  int u_int32_t ;
struct AdapterControlBlock {int dummy; } ;

/* Variables and functions */
 int ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE ; 
 int /*<<< orphan*/  ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE_DOORBELL_CLEAR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  HBC_MessageUnit ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  outbound_doorbell ; 
 int /*<<< orphan*/  outbound_doorbell_clear ; 

__attribute__((used)) static u_int8_t FUNC3(struct AdapterControlBlock *acb)
{
	u_int32_t Index;
	u_int8_t Retries = 0x00;

	do {
		for(Index=0; Index < 100; Index++) {
			if(FUNC0(HBC_MessageUnit, 0, outbound_doorbell) & ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE) {
				FUNC1(HBC_MessageUnit, 0, outbound_doorbell_clear, ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE_DOORBELL_CLEAR);/*clear interrupt*/
				return TRUE;
			}
			FUNC2(10000);
		}/*max 1 seconds*/
	}while(Retries++ < 20);/*max 20 sec*/
	return (FALSE);
}