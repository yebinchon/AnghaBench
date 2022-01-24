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
struct malo_hal {int /*<<< orphan*/  mh_ioh; int /*<<< orphan*/  mh_iot; } ;

/* Variables and functions */
 int /*<<< orphan*/  MALO_H2ARIC_BIT_PPA_READY ; 
 int /*<<< orphan*/  MALO_REG_H2A_INTERRUPT_EVENTS ; 
 int /*<<< orphan*/  MALO_REG_INT_CODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct malo_hal *mh, int qnum)
{
	FUNC1(mh->mh_iot, mh->mh_ioh,
	    MALO_REG_H2A_INTERRUPT_EVENTS, MALO_H2ARIC_BIT_PPA_READY);
	(void) FUNC0(mh->mh_iot, mh->mh_ioh, MALO_REG_INT_CODE);
}