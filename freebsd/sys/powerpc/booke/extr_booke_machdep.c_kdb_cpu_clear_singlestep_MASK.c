#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int register_t ;
struct TYPE_2__ {int /*<<< orphan*/  srr1; } ;

/* Variables and functions */
 int DBCR0_IC ; 
 int /*<<< orphan*/  PSL_DE ; 
 int /*<<< orphan*/  SPR_DBCR0 ; 
 TYPE_1__* kdb_frame ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void
FUNC2(void)
{
	register_t r;

	r = FUNC0(SPR_DBCR0);
	FUNC1(SPR_DBCR0, r & ~DBCR0_IC);
	kdb_frame->srr1 &= ~PSL_DE;
}