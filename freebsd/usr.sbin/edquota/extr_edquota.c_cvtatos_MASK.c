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
typedef  int uint64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 

int
FUNC2(uint64_t period, char *units, uint64_t *seconds)
{

	if (FUNC0(units, "second", 6) == 0)
		*seconds = period;
	else if (FUNC0(units, "minute", 6) == 0)
		*seconds = period * 60;
	else if (FUNC0(units, "hour", 4) == 0)
		*seconds = period * 60 * 60;
	else if (FUNC0(units, "day", 3) == 0)
		*seconds = period * 24 * 60 * 60;
	else {
		FUNC1("%s: bad units, specify %s\n", units,
		    "days, hours, minutes, or seconds");
		return (0);
	}
	return (1);
}