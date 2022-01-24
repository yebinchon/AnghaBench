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
struct AdapterControlBlock {scalar_t__ srboutstandingcount; int /*<<< orphan*/  acb_flags; int /*<<< orphan*/  num_resets; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACB_F_BUS_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 

__attribute__((used)) static void FUNC3(struct AdapterControlBlock *acb)
{
	int retry = 0;

	acb->num_resets++;
	acb->acb_flags |= ACB_F_BUS_RESET;
	while(acb->srboutstandingcount != 0 && retry < 400) {
		FUNC1(acb);
		FUNC0(25000);
		retry++;
	}
	FUNC2(acb);
	acb->acb_flags &= ~ACB_F_BUS_RESET;
}