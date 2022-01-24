#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ts_teken; } ;
typedef  TYPE_1__ teken_stat ;
typedef  int /*<<< orphan*/  teken_attr_t ;
struct TYPE_5__ {TYPE_1__* ts; } ;
typedef  TYPE_2__ scr_stat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(scr_stat *scp, int color, int rev_color)
{
	teken_stat *ts = scp->ts;
	teken_attr_t ta;

	FUNC0(color, &ta);
	FUNC1(&ts->ts_teken, &ta);
}