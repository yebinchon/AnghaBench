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
struct TYPE_2__ {int /*<<< orphan*/ * pm; int /*<<< orphan*/ ** weekday; int /*<<< orphan*/ ** wday; int /*<<< orphan*/ ** month; int /*<<< orphan*/ ** mon; } ;

/* Variables and functions */
#define  T_ABDAY 134 
#define  T_ABMON 133 
#define  T_ALT_DIGITS 132 
#define  T_AM_PM 131 
#define  T_DAY 130 
#define  T_ERA 129 
#define  T_MON 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int last_kw ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__ tm ; 

void
FUNC1(void)
{
	switch (last_kw) {
	case T_ABMON:
		if (tm.mon[11] != NULL)
			return;
		break;
	case T_MON:
		if (tm.month[11] != NULL)
			return;
		break;
	case T_ABDAY:
		if (tm.wday[6] != NULL)
			return;
		break;
	case T_DAY:
		if (tm.weekday[6] != NULL)
			return;
		break;
	case T_AM_PM:
		if (tm.pm != NULL)
			return;
		break;
	case T_ERA:
	case T_ALT_DIGITS:
		return;
	default:
		FUNC0(stderr,"unknown list");
		break;
	}

	FUNC0(stderr,"too few items in list (%d)", last_kw);
}