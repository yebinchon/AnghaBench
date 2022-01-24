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
struct TYPE_2__ {char* decimal_point; char* thousands_sep; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTERR ; 
#define  T_DECIMAL_POINT 129 
#define  T_THOUSANDS_SEP 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int last_kw ; 
 TYPE_1__ numeric ; 
 char* FUNC1 (char*) ; 

void
FUNC2(wchar_t *wcs)
{
	char *str;

	if ((str = FUNC1(wcs)) == NULL) {
		INTERR;
		return;
	}
	FUNC0(wcs);

	switch (last_kw) {
	case T_DECIMAL_POINT:
		numeric.decimal_point = str;
		break;
	case T_THOUSANDS_SEP:
		numeric.thousands_sep = str;
		break;
	default:
		FUNC0(str);
		INTERR;
		break;
	}
}