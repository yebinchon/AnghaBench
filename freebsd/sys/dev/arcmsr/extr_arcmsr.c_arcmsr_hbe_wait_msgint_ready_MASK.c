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
struct AdapterControlBlock {int in_doorbell; } ;

/* Variables and functions */
 int ARCMSR_HBEMU_IOP2DRV_MESSAGE_CMD_DONE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  HBE_MessageUnit ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  host_int_status ; 
 int /*<<< orphan*/  iobound_doorbell ; 

__attribute__((used)) static u_int8_t FUNC3(struct AdapterControlBlock *acb)
{
	u_int32_t Index, read_doorbell;
	u_int8_t Retries = 0x00;
	
	do {
		for(Index=0; Index < 100; Index++) {
			read_doorbell = FUNC0(HBE_MessageUnit, 0, iobound_doorbell);
			if((read_doorbell ^ acb->in_doorbell) & ARCMSR_HBEMU_IOP2DRV_MESSAGE_CMD_DONE) {
				FUNC1(HBE_MessageUnit, 0, host_int_status, 0);/*clear interrupt*/
				acb->in_doorbell = read_doorbell;
				return TRUE;
			}
			FUNC2(10000);
		}/*max 1 seconds*/
	}while(Retries++ < 20);/*max 20 sec*/
	return (FALSE);
}