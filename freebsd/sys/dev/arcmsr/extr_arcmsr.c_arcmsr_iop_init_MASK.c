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
struct AdapterControlBlock {int /*<<< orphan*/  acb_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACB_F_IOP_INITED ; 
 int /*<<< orphan*/  FUNC0 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC4 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC5 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC6 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC7 (struct AdapterControlBlock*) ; 

__attribute__((used)) static void FUNC8(struct AdapterControlBlock *acb)
{
	u_int32_t intmask_org;

	/* disable all outbound interrupt */
	intmask_org = FUNC1(acb);
	FUNC7(acb);
	FUNC5(acb);
	FUNC4(acb);
	/*start background rebuild*/
	FUNC6(acb);
	/* empty doorbell Qbuffer if door bell ringed */
	FUNC0(acb);
	FUNC3(acb);
	/* enable outbound Post Queue, outbound doorbell Interrupt */
	FUNC2(acb, intmask_org);
	acb->acb_flags |= ACB_F_IOP_INITED;
}