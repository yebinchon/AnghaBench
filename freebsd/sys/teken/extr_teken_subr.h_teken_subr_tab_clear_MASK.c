#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  tp_col; } ;
struct TYPE_6__ {int /*<<< orphan*/  t_tabstops; TYPE_1__ t_cursor; } ;
typedef  TYPE_2__ teken_t ;

/* Variables and functions */
 int T_NUMCOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(teken_t *t, unsigned int cmd)
{

	switch (cmd) {
	case 0:
		FUNC1(t, t->t_cursor.tp_col);
		break;
	case 3:
		FUNC0(t->t_tabstops, 0, T_NUMCOL / 8);
		break;
	default:
		break;
	}
}