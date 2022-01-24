#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ts_teken; } ;
typedef  TYPE_1__ teken_stat ;
struct TYPE_9__ {int /*<<< orphan*/  tp_row; int /*<<< orphan*/  tp_col; } ;
typedef  TYPE_2__ teken_pos_t ;
struct TYPE_10__ {int /*<<< orphan*/  ypos; int /*<<< orphan*/  xpos; int /*<<< orphan*/  ysize; int /*<<< orphan*/  xsize; } ;
typedef  TYPE_3__ scr_stat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC2(scr_stat *scp, teken_stat *ts)
{
	teken_pos_t tp;

	tp.tp_col = scp->xsize;
	tp.tp_row = scp->ysize;
	FUNC1(&ts->ts_teken, &tp);
	tp.tp_col = scp->xpos;
	tp.tp_row = scp->ypos;
	FUNC0(&ts->ts_teken, &tp);
}