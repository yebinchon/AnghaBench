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
struct TYPE_4__ {int history_pos; int ysize; int xsize; int /*<<< orphan*/  vtb; int /*<<< orphan*/  history; } ;
typedef  TYPE_1__ scr_stat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC3(scr_stat *scp)
{
	int pos;
	int i;

	pos = scp->history_pos;
	for (i = 1; i <= scp->ysize; ++i) {
		pos = FUNC2(scp->history, pos, -scp->xsize);
		FUNC1(scp->history, pos,
			    &scp->vtb, scp->xsize*(scp->ysize - i),
			    scp->xsize);
	}
	FUNC0(scp);
}