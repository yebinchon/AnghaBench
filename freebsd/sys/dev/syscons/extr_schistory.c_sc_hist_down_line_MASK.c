#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ history_pos; int /*<<< orphan*/  xsize; int /*<<< orphan*/  history; } ;
typedef  TYPE_1__ scr_stat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(scr_stat *scp)
{
	if (scp->history_pos == FUNC2(scp->history))
		return -1;
	scp->history_pos = FUNC1(scp->history, scp->history_pos,
				      scp->xsize);
	FUNC0(scp);
	return 0;
}