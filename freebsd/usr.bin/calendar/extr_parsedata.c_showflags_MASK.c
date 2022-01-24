#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int F_ALLDAY ; 
 int F_ALLMONTH ; 
 int F_CNY ; 
 int F_DAYOFMONTH ; 
 int F_DAYOFWEEK ; 
 int F_DECSOLSTICE ; 
 int F_EASTER ; 
 int F_FULLMOON ; 
 int F_JUNSOLSTICE ; 
 int F_MAREQUINOX ; 
 int F_MODIFIERINDEX ; 
 int F_MODIFIEROFFSET ; 
 int F_MONTH ; 
 int F_NEWMOON ; 
 int F_PASKHA ; 
 int F_SEPEQUINOX ; 
 int F_SPECIALDAY ; 
 int F_VARIABLE ; 
 int F_YEAR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static char *
FUNC1(int flags)
{
	static char s[1000];
	s[0] = '\0';

	if ((flags & F_YEAR) != 0)
		FUNC0(s, "year ");
	if ((flags & F_MONTH) != 0)
		FUNC0(s, "month ");
	if ((flags & F_DAYOFWEEK) != 0)
		FUNC0(s, "dayofweek ");
	if ((flags & F_DAYOFMONTH) != 0)
		FUNC0(s, "dayofmonth ");
	if ((flags & F_MODIFIERINDEX) != 0)
		FUNC0(s, "modifierindex ");
	if ((flags & F_MODIFIEROFFSET) != 0)
		FUNC0(s, "modifieroffset ");
	if ((flags & F_SPECIALDAY) != 0)
		FUNC0(s, "specialday ");
	if ((flags & F_ALLMONTH) != 0)
		FUNC0(s, "allmonth ");
	if ((flags & F_ALLDAY) != 0)
		FUNC0(s, "allday ");
	if ((flags & F_VARIABLE) != 0)
		FUNC0(s, "variable ");
	if ((flags & F_CNY) != 0)
		FUNC0(s, "chinesenewyear ");
	if ((flags & F_PASKHA) != 0)
		FUNC0(s, "paskha ");
	if ((flags & F_EASTER) != 0)
		FUNC0(s, "easter ");
	if ((flags & F_FULLMOON) != 0)
		FUNC0(s, "fullmoon ");
	if ((flags & F_NEWMOON) != 0)
		FUNC0(s, "newmoon ");
	if ((flags & F_MAREQUINOX) != 0)
		FUNC0(s, "marequinox ");
	if ((flags & F_SEPEQUINOX) != 0)
		FUNC0(s, "sepequinox ");
	if ((flags & F_JUNSOLSTICE) != 0)
		FUNC0(s, "junsolstice ");
	if ((flags & F_DECSOLSTICE) != 0)
		FUNC0(s, "decsolstice ");

	return s;
}