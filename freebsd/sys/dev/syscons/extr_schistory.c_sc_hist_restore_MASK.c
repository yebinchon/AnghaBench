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
struct TYPE_4__ {scalar_t__ history_pos; int xsize; int ysize; int /*<<< orphan*/  history; } ;
typedef  TYPE_1__ scr_stat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(scr_stat *scp)
{
	int ret;

	if (scp->history_pos != FUNC3(scp->history)) {
		scp->history_pos = FUNC3(scp->history);
		FUNC0(scp);
		ret =  0;
	} else {
		ret = 1;
	}
	FUNC2(scp->history, FUNC1(scp->history, 
					     FUNC3(scp->history),
					     -scp->xsize*scp->ysize));
	return ret;
}