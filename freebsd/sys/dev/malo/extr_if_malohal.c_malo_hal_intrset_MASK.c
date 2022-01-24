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
struct malo_hal {int /*<<< orphan*/  mh_imask; } ;

/* Variables and functions */
 int /*<<< orphan*/  MALO_REG_A2H_INTERRUPT_MASK ; 
 int /*<<< orphan*/  MALO_REG_INT_CODE ; 
 int /*<<< orphan*/  FUNC0 (struct malo_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct malo_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct malo_hal *mh, uint32_t mask)
{

	FUNC1(mh, MALO_REG_A2H_INTERRUPT_MASK, 0);
	(void)FUNC0(mh, MALO_REG_INT_CODE);

	mh->mh_imask = mask;
	FUNC1(mh, MALO_REG_A2H_INTERRUPT_MASK, mask);
	(void)FUNC0(mh, MALO_REG_INT_CODE);
}