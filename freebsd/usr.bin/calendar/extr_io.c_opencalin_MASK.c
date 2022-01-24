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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  calendarFile ; 
 int /*<<< orphan*/ * calendarHomes ; 
 int /*<<< orphan*/  calendarNoMail ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ doall ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct stat*) ; 

FILE *
FUNC4(void)
{
	struct stat sbuf;
	FILE *fpin;

	/* open up calendar file */
	if ((fpin = FUNC2(calendarFile, "r")) == NULL) {
		if (doall) {
			if (FUNC1(calendarHomes[0]) != 0)
				return (NULL);
			if (FUNC3(calendarNoMail, &sbuf) == 0)
				return (NULL);
			if ((fpin = FUNC2(calendarFile, "r")) == NULL)
				return (NULL);
		} else {
			fpin = FUNC0(calendarFile);
		}
	}
	return (fpin);
}