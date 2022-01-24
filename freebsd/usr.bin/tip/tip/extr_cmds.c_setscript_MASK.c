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
 int /*<<< orphan*/  RECORD ; 
 int /*<<< orphan*/  SCRIPT ; 
 int /*<<< orphan*/  SIGEMT ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/ * fildes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * repdes ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  tipout_pid ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC7(void)
{
	char c;

	/*
	 * enable TIPOUT side for dialogue
	 */
	FUNC1(tipout_pid, SIGEMT);
	if (FUNC0(FUNC5(SCRIPT)))
		FUNC6(fildes[1], FUNC5(RECORD), FUNC4(FUNC5(RECORD)));
	FUNC6(fildes[1], "\n", 1);
	/*
	 * wait for TIPOUT to finish
	 */
	FUNC3(repdes[0], &c, 1);
	if (c == 'n')
		FUNC2("can't create %s\r\n", FUNC5(RECORD));
}