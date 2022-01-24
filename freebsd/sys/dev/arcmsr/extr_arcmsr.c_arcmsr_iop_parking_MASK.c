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
typedef  int /*<<< orphan*/  u_int32_t ;
struct AdapterControlBlock {int acb_flags; } ;

/* Variables and functions */
 int ACB_F_MSG_START_BGRB ; 
 int /*<<< orphan*/  FUNC0 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterControlBlock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterControlBlock*) ; 

__attribute__((used)) static void FUNC4(struct AdapterControlBlock *acb)
{
	u_int32_t intmask_org;

	if(acb != NULL) {
		/* stop adapter background rebuild */
		if(acb->acb_flags & ACB_F_MSG_START_BGRB) {
			intmask_org = FUNC0(acb);
			FUNC3(acb);
			FUNC2(acb);
			FUNC1(acb, intmask_org);
		}
	}
}