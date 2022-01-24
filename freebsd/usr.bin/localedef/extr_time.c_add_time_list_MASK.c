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
typedef  char wchar_t ;
struct TYPE_2__ {char* am; char* pm; int /*<<< orphan*/  weekday; int /*<<< orphan*/  wday; int /*<<< orphan*/  month; int /*<<< orphan*/  mon; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTERR ; 
#define  T_ABDAY 134 
#define  T_ABMON 133 
#define  T_ALT_DIGITS 132 
#define  T_AM_PM 131 
#define  T_DAY 130 
#define  T_ERA 129 
#define  T_MON 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int last_kw ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__ tm ; 
 char* FUNC3 (char*) ; 

void
FUNC4(wchar_t *wcs)
{
	char *str;

	if ((str = FUNC3(wcs)) == NULL) {
		INTERR;
		return;
	}
	FUNC2(wcs);

	switch (last_kw) {
	case T_ABMON:
		FUNC0(tm.mon, str, 12);
		break;
	case T_MON:
		FUNC0(tm.month, str, 12);
		break;
	case T_ABDAY:
		FUNC0(tm.wday, str, 7);
		break;
	case T_DAY:
		FUNC0(tm.weekday, str, 7);
		break;
	case T_AM_PM:
		if (tm.am == NULL) {
			tm.am = str;
		} else if (tm.pm == NULL) {
			tm.pm = str;
		} else {
			FUNC1(stderr,"too many list elements");
			FUNC2(str);
		}
		break;
	case T_ALT_DIGITS:
	case T_ERA:
		FUNC2(str);
		break;
	default:
		FUNC2(str);
		INTERR;
		break;
	}
}