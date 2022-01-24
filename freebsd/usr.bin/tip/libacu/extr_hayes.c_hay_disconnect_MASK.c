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
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  TIOCCDTR ; 
 int /*<<< orphan*/  TIOCSDTR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void
FUNC4(void)
{
	/* first hang up the modem*/
#ifdef DEBUG
	printf("\rdisconnecting modem....\n\r");
#endif
	FUNC1(FD, TIOCCDTR, 0);
	FUNC3(1);
	FUNC1(FD, TIOCSDTR, 0);
	FUNC0();
}