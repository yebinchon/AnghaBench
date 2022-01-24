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
struct bstp_port {scalar_t__ bp_active; TYPE_1__* bp_bs; int /*<<< orphan*/  bp_mediatask; int /*<<< orphan*/  bp_rtagetask; int /*<<< orphan*/  bp_statetask; } ;
struct TYPE_2__ {struct bstp_port* bs_root_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi ; 

void
FUNC3(struct bstp_port *bp)
{
	FUNC0(bp->bp_active == 0, ("port is still attached"));
	FUNC2(taskqueue_swi, &bp->bp_statetask);
	FUNC2(taskqueue_swi, &bp->bp_rtagetask);
	FUNC2(taskqueue_swi, &bp->bp_mediatask);

	if (bp->bp_bs->bs_root_port == bp)
		FUNC1(bp->bp_bs);
}