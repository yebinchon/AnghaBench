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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  CCR1_L2COBE ; 
 int /*<<< orphan*/  DCR_L2CR0 ; 
 int /*<<< orphan*/  DCR_L2DCDCRAI ; 
 int /*<<< orphan*/  DCR_L2DCDCRDI ; 
 int /*<<< orphan*/  L2CR0_AS ; 
 int /*<<< orphan*/  SPR_CCR1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(void)
{
	uint32_t ccr1,l2cr0;

	/* Disable L2 cache op broadcast */
	ccr1 = FUNC1(SPR_CCR1);
	ccr1 &= ~CCR1_L2COBE;
	FUNC3(SPR_CCR1, ccr1);

	/* Set L2 array size to 0 i.e. disable L2 cache */
	FUNC2(DCR_L2DCDCRAI, DCR_L2CR0);
	l2cr0 = FUNC0(DCR_L2DCDCRDI);
	l2cr0 &= ~L2CR0_AS;
	FUNC2(DCR_L2DCDCRDI, l2cr0);
}