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
struct headline {int /*<<< orphan*/ * l_date; } ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct headline*,char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

int
FUNC4(char linebuf[])
{
	struct headline hl;
	char parbuf[BUFSIZ];

	if (FUNC3(linebuf, "From ", 5) != 0)
		return (0);
	FUNC2(linebuf, &hl, parbuf);
	if (hl.l_date == NULL) {
		FUNC0(linebuf, "No date field");
		return (0);
	}
	if (!FUNC1(hl.l_date)) {
		FUNC0(linebuf, "Date field not legal date");
		return (0);
	}
	/*
	 * I guess we got it!
	 */
	return (1);
}