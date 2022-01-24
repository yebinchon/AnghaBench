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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(int dateonly, char *date, int flags, char *month,
    int imonth, char *dayofmonth, int idayofmonth, char *dayofweek,
    int idayofweek, char *modifieroffset, char *modifierindex, char *specialday,
    char *year, int iyear)
{

	if (dateonly != 0) {
		FUNC0("-------\ndate: |%s|\n", date);
		if (dateonly == 1)
			return;
	}
	FUNC0("flags: %x - %s\n", flags, FUNC1(flags));
	if (modifieroffset[0] != '\0')
		FUNC0("modifieroffset: |%s|\n", modifieroffset);
	if (modifierindex[0] != '\0')
		FUNC0("modifierindex: |%s|\n", modifierindex);
	if (year[0] != '\0')
		FUNC0("year: |%s| (%d)\n", year, iyear);
	if (month[0] != '\0')
		FUNC0("month: |%s| (%d)\n", month, imonth);
	if (dayofmonth[0] != '\0')
		FUNC0("dayofmonth: |%s| (%d)\n", dayofmonth, idayofmonth);
	if (dayofweek[0] != '\0')
		FUNC0("dayofweek: |%s| (%d)\n", dayofweek, idayofweek);
	if (specialday[0] != '\0')
		FUNC0("specialday: |%s|\n", specialday);
}